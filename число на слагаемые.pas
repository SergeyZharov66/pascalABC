##
// Разбиение числа на сумму слагаемых;
// Шень (7edition),стр. 48
var n := ReadInteger('Число: ');
var x := ArrGen(n, t -> 1);
var k := n - 1; // k - количество чисел в текущем разбиении
while k <> 0 do
begin
  println(x[:k + 1]);
  var s := k - 1;
  while not ((s = 0) or (x[s - 1] > x[s])) do s := s - 1;
  {s - подлежащее увеличению слагаемое}
  x[s] += 1;
  var sum := 0;
  for var i := s + 1 to k do sum += x[i];
  {sum - сумма членов, стоявших после x[s]}
  for var i := 1 to sum - 1 do x[s + i] := 1;
  k := s + sum - 1; 
end; 
println(x[:k + 1])