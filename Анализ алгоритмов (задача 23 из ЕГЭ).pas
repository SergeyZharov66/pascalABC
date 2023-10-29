##
var a:=ArrGen(18,i->i,1);
var b:=ArrGen(18,i->1);
var k:=0;
for var i:=3 to 17 do
  begin
    k:= a[i] mod 4 = 0 ? b[i div 4] : 0;
    b[i]:=b[i-1]+b[i-3]+k;
  end;
println(a);
println(b)  