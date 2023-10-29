##
var a:=ReadAllLines('D:\10.txt');
var kol:=0;
foreach var x in a do
  kol+=x.MatchValues('долг\W|Долг\W|Долг\s|долг\s').Count;
print(kol)
