module HalfAdder(input a, b, 
                 output reg sum, carry
                 );
always @(a,b)
begin                 
sum = a^b;
carry = a&b;
end
