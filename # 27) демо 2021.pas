##
var a := new dictionary<integer, integer>;
var f := ReadAllLines('d:\27-B-21.txt');
for var i := 1 to f.High do
  a.Add(f[i].Split[0].ToInteger, f[i].Split[2].ToInteger);
var (s, n) := (0, 0);
var mins := 100000000;
foreach var x in a.Keys do
begin
  foreach var y in a.Keys do
  begin
    n:=a[y] mod 36 = 0 ? a[y] div 36 : a[y] div 36 +1;
    s += abs(x - y) * n;
  end;
  mins := min(mins, s);
  s := 0;
end;
print(mins)