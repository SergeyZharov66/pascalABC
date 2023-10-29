##
var n:=readinteger('n=');
var a0:=biginteger(1);
var a1:=biginteger(2);
var a2:=biginteger(3);
var res : biginteger;
for var k:=3 to n do
begin
  res:=a2+a1-2*a0;
  a0:=a1;
  a1:=a2;
  a2:=res;
end;
print (res)  