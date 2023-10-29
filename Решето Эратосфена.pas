##
var a := ArrGen(100, i -> True);
for var k := 2 to trunc(sqrt(101)) do
  if a[k] then
  begin
    var i := sqr(k);
    while i <= 99 do
    begin
      a[i] := False;
      i += k;
    end;
  end; 
a.Indices((x,i) -> (x=True) and (i>1)).Println;