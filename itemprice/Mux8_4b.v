module Mux8_4b (S2, S1, S0, W0, W1, W2, W3, W4, W5, W6, W7, F);
input            S2, S1, S0;
input      [7:0] W0, W1, W2, W3, W4, W5, W6, W7;
output reg [7:0] F;

always @(S2, S1, S0)
  begin
    case({S2, S1, S0})
      7'b000 : F = W0;
      7'b001 : F = W1;
      7'b010 : F = W2;
      7'b011 : F = W3;
      7'b100 : F = W4;
      7'b101 : F = W5;
      7'b110 : F = W6;
      7'b111 : F = W7;
    endcase
  end
endmodule