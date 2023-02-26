module sequence_decetor_110110(input  clk,
                   input  reset,
                   input  din,
                   output reg dout);
reg [2:0] state;
parameter S0 = 3'b000,
          S1 = 3'b001,
          S2 = 3'b010,
          S3 = 3'b011,
          S4 = 3'b100,
          S5 = 3'b001;

  always @(posedge clk or reset) begin
    if(reset) begin
      dout <= 1'b0;
      state <= S0;
    end
    else begin
      case(state)
        S0: begin
          if(din) begin
            state <= S1;
            dout <=1'b0;
          end
          else
            dout <=1'b0;
        end
        S1: begin
          if(din) begin
            state <= S2;
            dout <=1'b0;
          end
          else begin
            state <= S0;
            dout <=1'b0;
          end
        end
        S2: begin
          if(~din) begin
            state <= S3;
            dout <=1'b0;
          end
          else begin
            dout <=1'b0;
          end
        end
        S3: begin
          if(din) begin
            state <= S4;
            dout <=1'b0;
          end
          else begin
            state <= S0;
            dout <=1'b0;
          end
        end
        S4: begin
          if(din) begin
            state <= S2;
            dout <=1'b0;
          end
          else begin
            state <= S0;
            dout <=1'b0;
          end
        end
        S5: begin
        if (din) begin
        state <= S4;
        dout <=1'b0;
        end
        else begin
        state <= S3;
        dout <= 1'b1;
        end end 
      endcase
    end
  end

endmodule
