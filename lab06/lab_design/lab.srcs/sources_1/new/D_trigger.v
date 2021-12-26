module D_trigger (
    input CP, D,
    output Q,Qb
);
    reg Q_reg, Qb_reg;
    assign Q = Q_reg;
    assign Qb = Qb_reg;
    always @(posedge CP) 
        begin
            Q_reg  <=  D;
            Qb_reg <= ~D;
        end
endmodule
