##
//var a := Arr(3, 4, 6, 2, 1);
var a := Arr(150, -150, 20, -200, -300, 0);
var b := new integer[a.High + 1];
var max_Cur := integer.MinValue;
for var i := a.High downto 0 do
begin
  max_Cur := max(max_Cur, a[i]);
  b[i] := max_Cur;
end;
print(b)