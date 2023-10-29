##
var f := ReadAllLines('17_2024.txt').ConvertAll(t -> t.ToInteger);
var max_m := f.where(t -> t mod 100 = 13).max;
var kol := 0;
var sum_m := integer.MinValue;
for var x:=0 to f.Length-3 do
begin
  var troika:=Arr(f[x],f[x+1],f[x+2]);
  var kol_tr := troika.Where(t -> (t>99) and (t<1000)).Count;
  if (troika.Sum <= max_m) and (kol_tr = 2) then 
  begin
    kol += 1;
    sum_m := max(sum_m, troika.Sum);
  end;
end; 
println(kol, sum_m)