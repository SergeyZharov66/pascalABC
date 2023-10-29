##
var a:=Arr(2,8,4,6,9,0,1,1,2,3);
foreach var t in a.Indices((x,i)->not i.IsOdd) do
  a[t].println;
  
