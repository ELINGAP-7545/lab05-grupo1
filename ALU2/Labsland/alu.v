module alu(V_SW,G_CLOCK_50,G_HEX0,G_HEX1,V_BT);
input wire [9:0] V_SW;
input wire G_CLOCK_50;
input wire [3:0]V_BT;
wire clk;
wire rst;
output wire [6:0]G_HEX0;
output wire [6:0]G_HEX1;

wire [3:0]opcode;
wire [2:0]portA;
wire [2:0]portB;

assign clk=G_CLOCK_50;
assign opcode=V_SW[1:0];
assign portA=V_SW[4:2];
assign portB=V_SW[9:7];
assign rst=V_BT[0];

// Declaración de salidas de cada bloque 
wire [3:0] sal_suma;
wire [3:0] sal_resta;
wire [3:0] sal_div;
wire [5:0] sal_mult;


// Declaración de las entradas init de cada bloque 
reg [3:0] init; 
wire init_suma;
wire init_resta;
wire init_mult;
wire init_div;

// 

assign init_suma= init[0];
assign init_resta=init[1];
assign init_mult=init[2];
assign init_div=init[3];

reg [15:0]int_bcd;

wire [3:0] operacion;

// descripción del decodificacion de operaciones
always @(*) begin
	case(opcode) 
		2'b00: init<=1;
		2'b01: init<=2;
		2'b10: init<=4;
		2'b11: init<=8;
	default:
		init <= 0;
	endcase
	
end
// Descripcion del multiplexor
always @(*) begin
	case(opcode) 
		2'b00: int_bcd <={8'b00,sal_suma};
		2'b01: int_bcd <={8'b00,sal_resta};
		2'b10: int_bcd <={8'b00,sal_mult};
		2'b11: int_bcd <={8'b00,sal_div};
	default:
		int_bcd <= 0;
	endcase
	

end


//instanciación de los componnetes 

sum4bcc sumador(. co(init_suma),.xi({1'b0,portA}), .yi({1'b0,portB}),.zi(sal_suma));
multiplicador mul ( .MR(portA), .MD(portB), .init(init_mult),.clk(clk), .pp(sal_mult));
restador res(.A(portA), .B(portB), .resta(sal_resta), .signo(signoresta));
BCDtoSSeg dp ( .BCD(int_bcd[3:0]), .G_HEX(G_HEX0));
BCDtoSSeg dp1 ( .BCD(int_bcd[7:4]), .G_HEX(G_HEX1));
Divisor divi  ( .A(portA), .B(portB), .init(init_div),.clk(clk), .R(sal_div),.reset(rst));

// adicone los dos bloques que hacen flata la resta y división

