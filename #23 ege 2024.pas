##
var s := ArrFill(19, 1);
var a := 3..20;
foreach var x in a do
begin
  s[x - 2] := s[x - 3];
  if x.IsEven then
    s[x - 2] += s[x div 2 - 2];
  if (x = 4) or (x = 9) or (x = 16) then
    s[x - 2] += s[ceil(sqrt(x)) - 2];
end;
println(s);
