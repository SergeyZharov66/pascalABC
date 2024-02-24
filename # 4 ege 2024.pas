##
uses school, my;
var a := |'000','001','0101','0100','011','101'|; 
var res: string;
// Список для хранения наборов кодов вида (0,1), (00,01,10,11) и т.п.
var li := new List<string>; 
{Перебираем длины кодировок от 1 до 5 и ищем
те из них, которые удовлетворяют условию Фано для данного кода}
for var n := 1 to 5 do
begin
  for var x := 0 to PowerInt(2, n) - 1 do
  begin
    var l := bin(x).Length;
    if l < n then 
      res := (n - l) * '0' + bin(x) 
    else 
      res := bin(x);
    li.Add(res);
  end;
  var flag := True;
  foreach var el in li do
  begin
    foreach var slov in a do
      if slov.StartsWith(el) then flag := False;
    if flag then println(el) else  flag := True; // печатаем подходящие кодировки, первые две и есть коды для букв Ж и З
  end;
  li.Clear;
end; 