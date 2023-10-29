##
{2.6.1. Перечислите все последовательности длины 2n, составленные
из n единиц и n минус единиц, у которых сумма любого начального от-
резка неотрицательна, т. е. число минус единиц в нём не превосходит
числа единиц. Начинать последовательность с 1}
/// Содержится ли массив в списке массивов
function Contains(b: List<array of integer>; a: array of integer): boolean;
begin
  var res := False; //нет такого элемента
  foreach var x in b do
    if x.SequenceEqual(a) then
      res := True;
  result := res;  
end;

var a := |1, 1, 1, 1, -1, -1, -1, -1|.Permutations;
var b := new List<array of integer>;
foreach var x in a do
begin
  var isf := True;
  for var i := 2 to 8 do
    if x[0:i].sum < 0 then
      isF := False;
  if isf and not Contains(b, x) and (x[0]=1) then b.Add(x);
end;
b.Println;
println(b.Count)