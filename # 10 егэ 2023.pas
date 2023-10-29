##
var a:=ReadAllLines('D:\10.txt');
var kol:=0;
foreach var x in a do
  kol+=x.MatchValues('\Wтеперь\W').Count;
print(kol)
