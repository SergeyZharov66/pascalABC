##
// Демо ЕГЭ24,задача 26
var f := ReadAllLines('E:\ЕГЭ ИНФ\inf_11_2024\Доп_файлы\Задание 26\26_2024.txt'); 
var a : array of (integer, integer);
{Список подходящих мероприятий}
var b := new List<(integer, integer)>;
{Формируем массив кортежей}
SetLength(a, f.High);
for var i := 1 to f.High do
begin
  var tm := f[i].Split;
  a[i - 1] := (tm[0].ToInteger, tm[1].ToInteger);
end;
{Сортируем мероприятия по длительности}
{Ясно, что чем короче мероприятие, тем больше их поместится}
Sort(a, p -> p.item2 - p.item1); 
{Заносим в список первое, самое короткое мероприятие}
b.Add(a[0]);
var flag := False;
for var i := 1 to a.High do
begin
  for var x := 0 to b.Count - 1 do
    {В следующих условиях проверяем невозможность добавить мероприятие в список.
    Если хотя бы одно условие срабатывает, то добавить мероприятие нельзя}
    if ((a[i].Item1 >= b[x].Item1) and (a[i].Item1 <= b[x].Item2)) or 
       ((a[i].Item2 > b[x].Item1) and (a[i].Item2 <= b[x].Item2)) or 
       ((a[i].Item1 > b[x].Item1) and (a[i].Item2 < b[x].Item2)) or 
       ((a[i].Item1 < b[x].Item1) and (a[i].Item2 > b[x].Item2)) then
      flag := True;
  if not flag then b.Add(a[i]);
  flag := False;
end;
println(b.Count); // количество мероприятий
b.Sort;
Println(b[b.Count-1].Item1-b[b.Count-2].Item2); // перерыв между двумя мероприятиями