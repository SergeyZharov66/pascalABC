##
var st: biginteger := 19;
var op1: biginteger := 9 * Power(st, 7) + 8 * Power(st, 6) + 8 * Power(st, 5) + 9 * Power(st, 4) + 7 * Power(st, 3) + 39;
var op2: biginteger := 2 * Power(st, 4) + 9 * Power(st, 2) + 41;
var zn: biginteger;
var m: biginteger := 0;
for var x := 0 to 18 do
begin
  zn := op1 + op2 + x * Power(st, 2) + x * Power(st, 3);
  if zn mod 18 = 0 then
    m := max(m, x);
end;
zn := op1 + op2 + m * Power(st, 2) + m * Power(st, 3);
println(zn div 18)