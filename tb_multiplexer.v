
`timescale 1ns/1ns

module tb_multiplexer();
    reg [31:0] hrdata_1, hrdata_2, hrdata_3, hrdata_4;
    reg hreadyout_1, hreadyout_2, hreadyout_3, hreadyout_4;
    reg hresp_1, hresp_2, hresp_3, hresp_4;
    reg [1:0] sel;
    wire [31:0] hrdata;
    wire hreadyout;
    wire hresp;
    
    multiplexer dut(.hrdata_1(hrdata_1),.hrdata_2(hrdata_2),.hrdata_3(hrdata_3),.hrdata_4(hrdata_4),
                    .hreadyout_1(hreadyout_1),.hreadyout_2(hreadyout_2),.hreadyout_3(hreadyout_3),.hreadyout_4(hreadyout_4),
                    .hresp_1(hresp_1),.hresp_2(hresp_2),.hresp_3(hresp_3),.hresp_4(hresp_4),
                    .sel(sel),
                    .hrdata(hrdata),
                    .hreadyout(hreadyout),
                    .hresp(hresp));
                    
    initial begin
        hrdata_1 = 32'd1;
        hrdata_2 = 32'd2;
        hrdata_3 = 32'd3;
        hrdata_4 = 32'd4;
        hreadyout_1 = 1'b1;
        hreadyout_2 = 1'b1;
        hreadyout_3 = 1'b1;
        hreadyout_4 = 1'b1;
        hresp_1 =1;
        hresp_2 =1;
        hresp_3 =1;
        hresp_4 =1;
        sel = 2'b00;
        #20 sel = 2'b01;
        #20 sel = 2'b10;
        #20 sel = 2'b11;
        #20 $finish();
    end                
    
endmodule
