##
var d := ArrGen(10, i -> i + 1);
var d1 := ArrGen(10, i -> 1);
for var i := 1 to 9 do
  if d[i] mod 2 <> 0 then d1[i] := d1[i - 1]
  else d1[i] := d1[i - 1] + d1[i div 2];
println(d1[9]+d1[9])