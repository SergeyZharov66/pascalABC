##
//Демо ЕГЭ 2022 задача 5
uses school;

var n := 0;
var k: string := '1';
while k.ToInteger < 77 do
begin
  n += 1;
  k := Bin(n);
  loop 2 do
  begin
    var s:=k.ToIntegers.Sum;
    var ost := s mod 2;
    k += ost.ToString;
  end;
  k := Dec(k, 2).ToString;
end;
println(n); 