##
uses school;
// задание 5 из демо 24
var n := 4;
var min_r:=MaxInt;
Loop 1000 do
begin
  var bin_n := Bin(n);
  if  n mod 3 = 0 then bin_n += bin_n[length(bin_n)-2:] else bin_n += Bin(3*(n mod 3));
  var r:=Dec(bin_n,2);
  if r>151 then 
    min_r:=min(min_r,r);
  n+=1;
end;
println(min_r)