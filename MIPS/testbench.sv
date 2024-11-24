module testbench();
    logic clk;
    logic reset;
    logic [31:0] writedata, dataadr;
    logic memwrite;

    // Device Under Test (DUT)
    top dut (
        .clk(clk),
        .reset(reset),
        .writedata(writedata),
        .dataadr(dataadr),
        .memwrite(memwrite)
    );

    // Test initialization
    initial begin
        reset <= 1; 
        #22 reset <= 0; // Reset sinyali 22 birim sonra sıfırlanır
    end

    // Clock generation
    always begin
        clk <= 1; 
        #5; 
        clk <= 0; 
        #5; // Her 10 birimde bir clock sinyali oluşturulur
    end

    // Simulation checks
    always @(negedge clk) begin
        if (memwrite) begin
            if (dataadr === 84 && writedata === 7) begin
                $display("Simulation succeeded");
                $stop;
            end else if (dataadr !== 80) begin
                $display("Simulation failed");
                $stop;
            end
        end
    end
endmodule
