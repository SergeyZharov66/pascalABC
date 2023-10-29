##
var a:=ArrGen(15,i->i,1);
var b:=ArrGen(15,i->1);
var k:=0;
for var i:=3 to 14 do
  begin
    k:= a[i] mod 3 = 0 ? b[i div 3] : 0;
    b[i]:=b[i-1]+b[i-3]+k;
  end;
println(a);
println(b)  