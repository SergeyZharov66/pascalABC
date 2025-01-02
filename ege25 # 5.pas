##
uses school;

var n_d: string;
var maxx:=int64.MinValue;

for var n:int64 := 1 to 12 do
begin
  n_d := Bin(n);
  if n_d[n_d.length] = '0' then n_d:='10'+n_d else n_d:='1'+n_d+'01';
  maxx:=max(maxx,Dec(n_d,2));
end; 
println(maxx)