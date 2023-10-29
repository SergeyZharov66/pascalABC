##
uses school;
/// функция возвращает сумму минимального и максимального элементов
function GetM(n: integer): integer;
begin
  var spis := n.Divisors;
  if spis.Count > 2 then
  begin
    spis.RemoveAt(0);
    spis.RemoveAt(spis.count - 1);
    result := spis.Min + spis.Max;
  end
  else
    result := 0
end;

var start := 700001;
var kol := 1;
while kol <= 5 do
begin
  if (GetM(start) <> 0) and (GetM(start) mod 10 = 8) then
  begin
    println(start,GetM(start));
    kol += 1;
  end;
  start += 1;
end; 