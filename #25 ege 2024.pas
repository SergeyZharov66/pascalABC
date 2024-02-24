##
var t1:=DateTime.Now.Millisecond;
for var x : uint64 := 1021574 to 10000000000 do
  if x.toString.IsMatch('^1\d2157\d*4$') then
    if x mod 2024 = 0 then println(x, x div 2024); 
var t2:=DateTime.Now.Millisecond;  
println(t2-t1)