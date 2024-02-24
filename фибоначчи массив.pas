##
var fib : array[0..49] of uint64;
fib[1]:=1;
for var x:=1 to 48 do
  fib[x+1]:=fib[x]+fib[x-1];
fib.println  