procedure r(f: integer-> real; k: integer);
begin
  var s := 0.0;    
  for var i := 1 to k do
    s += f(i);
  Print(Round(s, 7))
end;

begin
  var n := ReadInteger;
  var s1: integer-> real := x -> (x + 1) / (x + 2);
  r(s1, n);
  var s2: integer-> real := x -> (-1) ** (x + 1) * (3 * x - 2) / (sqr(x) + 1);
  r(s2, n);
  var s3: integer-> real := x -> 1 / sqr(x);
  r(s3, n)
end.