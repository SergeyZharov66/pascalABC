## 
//демо 24 № 9
var f := ReadAllLines('9_2024.txt');
var (s, kol, s1) := (0, 0, 0);
foreach var x in f do
begin
  var y := x.Split.ConvertAll(t -> t.toInteger).ToArray;
  foreach var t in y do
    s1 += y.CountOf(t);
  if s1 = 11 then
  begin
    foreach var t in y do
      if y.CountOf(t) = 2 then s += t;
    if s / 4 < y.Average then kol += 1;
    s := 0;
  end;
  s1:=0;
end;
println(kol); 