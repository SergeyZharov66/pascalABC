##
uses school;

var s := '0123456789';
var ch: integer;
var x_max := -1;
foreach var x in s do
begin
  var op1 := '98897' + x + '21';
  var op2 := '2' + x + '923';
  var t := Dec(op1, 19) + Dec(op2, 19);
  if t mod 18 = 0 then
  begin
    x_max := Max(x_max, x.ToDigit);
    ch := t div 18;
  end;
end;  
println(ch)