##
//var a := Arr(1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1); //s=5, ответ 9
{Преобразуем текстовый файл в числовой массив
по правилу: буква Т -> 1, все остальные на 0}
var f := ReadAllLines('E:\ЕГЭ ИНФ\inf_11_2024\Доп_файлы\Задание 24\24_2024.txt');
var a := new integer[f[0].Length + 1];
var j := 0;
foreach var x in f[0] do
begin
  if x = 'T' then a[j] := 1 else a[j] := 0;
  j += 1;
end;  
var s := 100; 
var curs := 0; // сумма от текущего начала 
var start := 0; // точка старта подпоследовательности
var maxs := integer.MinValue;
{Накапливаем текущую сумму. Как только она стала больше заданной,
меняем точку старта на следующий элемент}
for var i := 0 to a.High do
begin
  if curs > s then 
  begin
    curs -= a[start];
    start += 1;
  end;
  if curs = s then maxs := max(maxs, i - start);
  curs += a[i];  
end; 
println(maxs)