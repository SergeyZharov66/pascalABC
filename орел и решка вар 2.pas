##
{пусть последовательно n раз выбрасывается «орел» или «решка». 
Сосчитать число случаев появления комбинации «орел» — «орел» — «орел», 
и число случаев появления комбинации «орел» — «решка» — «орел»}
function isResh(x: List<integer>): boolean := (x[0] = 1) and (x[1] = 0) and (x[2] = 1) ? True : False;

var sp := new List<integer>;
var (kolOne,kolTwo) := (0,0);
var m:=ReadInteger('m=');
loop 100000 do
begin
  var x := random(0, 1);
  sp.add(x);
  if sp.count = m then
  begin
    if sp.TrueForAll(t -> t = 1) then kolOne += 1;
    //if isResh(sp) then kolTwo += 1;
    sp.Clear;
  end;
end;
print(kolOne, kolTwo)//kolOne - орел, kolTwo - решка