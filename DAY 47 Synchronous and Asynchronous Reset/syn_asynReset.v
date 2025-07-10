
module syn_asynReset ( input clk ,rst,D , output reg syn_q , asyn_q);

// asynchronous reset
always @(posedge clk or posedge rst) begin
  if(rst) asyn_q <= 1'b0;
  else asyn_q <=D;
end

// synchronous reset
always @( posedge clk )begin
  if(rst) syn_q <= 1'b0;
else syn_q <=D;
end

endmodule