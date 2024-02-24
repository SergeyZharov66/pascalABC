##
var fib := new List<biginteger>;
fib.Add(0);
fib.Add(1);
print(fib[0], fib[1]);
while True do
begin
  fib.Add(fib[fib.Count - 1] + fib[fib.Count - 2]);
  print(fib[fib.Count - 1]);
end