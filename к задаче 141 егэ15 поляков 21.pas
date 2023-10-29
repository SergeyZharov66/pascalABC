##
{ . }
function isX50(a:integer):=if a mod 50=0 then a else 0;
function isX18(a:integer):=if a mod 18=1 then a else 0;

var a := new HashSet<integer>(ArrGen(500,i->isX50(i),50));
var b := new HashSet<integer>(ArrGen(500,i->isX18(i),18));
print(a,b)