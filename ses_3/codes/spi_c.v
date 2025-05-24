module spi_contrller(pclk_i,prst_i,paddr_i,pwrite_i,pwdata_i,prdata_o,penable_i,pready_o,psel_i,sclk,sclk_in,mosi,miso,ssel_o);
input pclk_i,prst_i,pwrite_i;
input [7:0]paddr_i;
input [7:0]pwdata_i;
output reg [7:0]prdata_o;
input penable_i,psel_i;
output reg pready_o;
output reg mosi,ssel_o;
input sclk_in;
output sclk;
input miso;

endmodule
