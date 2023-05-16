//4bit adder

module add4(c_out,s,a,b,c_in);
  input [3:0]a,b;
  input c_in;
  output [3:0]s;
  output c_out;
  wire [2:0]c;
  
  add B0(c[0],s[0],a[0],b[0],c_in);
  add B1(c[1],s[1],a[1],b[1],c[0]);
  add B2(c[2],s[2],a[2],b[2],c[1]);
  add B3(c_out,s[3],a[2],b[2],c[2]);
  
endmodule

//full adder module
module add(c_out,s,a,b,c);
input a,b,c;
output s,c_out;

assign s=a^b^c;
assign c_out=(a&b)|(b&c)|(c&a);
endmodule



  
  
