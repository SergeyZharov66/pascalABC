##
var f:=ReadAllLines('d:\33.txt');
foreach var x in f.Sorted.Pairwise do
  if x[0]=x[1] then println(x);