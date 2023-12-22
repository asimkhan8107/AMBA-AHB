//The mux select the data from different slave

module multiplexer(
  input [31:0] hrdata_1, hrdata_2, hrdata_3, hrdata_4,
  input hreadyout_1, hreadyout_2, hreadyout_3, hreadyout_4,
  input hresp_1, hresp_2, hresp_3, hresp_4,
  input [1:0] sel,
  output reg [31:0] hrdata,
  output reg hreadyout,
  output reg hresp
);

  always @(*) begin
  case(sel)
    2'b00: begin
      hrdata = hrdata_1;
      hreadyout = hreadyout_1;
      hresp = hresp_1;
    end
    2'b01: begin
      hrdata = hrdata_2;
      hreadyout = hreadyout_2;
      hresp = hresp_2;
    end
    2'b10: begin
      hrdata = hrdata_3;
      hreadyout = hreadyout_3;
      hresp = hresp_3;
    end
    2'b11: begin
      hrdata = hrdata_4;
      hreadyout = hreadyout_4;
      hresp = hresp_4;
    end
    default: begin
      hrdata = 32'h0000_0000;
      hreadyout = 1'b0;
      hresp = 1'b0;
    end
  endcase
  end

endmodule
