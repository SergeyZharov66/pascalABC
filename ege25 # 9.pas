##
//var f := ReadAllLines('E:\ЕГЭ ИНФ\inf_11_2025\Доп.файлы_2025\Задание 9\demo_2025_9.txt');
var f := ReadAllLines('D:\Архив\ЕГЭ ИНФ\inf_11_2025\Доп.файлы_2025\Задание 9\demo_2025_9.txt');
var kol := 0;
foreach var x in f do
begin
  var m := x.split().convertAll(t -> t.Tointeger).Sorted.ToArray; // массив чисел из исходной строки
  var el := m.AdjacentGroup.Select(t -> t.count).Sorted.ToArray; //  массив из количеств чисел
  if el.Length = 4 then // ищем массив из 4 элементов вида 1 1 1 3
  begin
    foreach var y in m do
      if m.Count(t -> t = y) = 3 then 
      begin
        var (t1, t2) := m.Partition(t -> t = y).ToArray;
        if sqr(t1.Sum) > sqr(t2.Sum) then kol += 1;
        break;
      end;
  end;
end; 
println(kol)