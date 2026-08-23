`timescale 1ns/1ps

module cmos_inverter_tb;

    reg A;
    wire Y;

    // Instantiate CMOS inverter
    cmos_inverter uut (
        .A(A),
        .Y(Y)
    );

    initial begin

        // Test 1: Input = 0
        A = 0;
        #10;

        // Test 2: Input = 1
        A = 1;
        #10;

        // Test 3: Input = 0
        A = 0;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time = %0t | A = %b | Y = %b", $time, A, Y);
    end

endmodule
