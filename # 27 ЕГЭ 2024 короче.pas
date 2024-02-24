##
var f := ReadAllLines('E:\ЕГЭ ИНФ\inf_11_2024\Доп_файлы\Задание 27\27_A_2024.txt').ConvertAll(t -> t.ToInteger);
//var f := Arr(2, 6, 150, -150, 20, -200, -300, 0);
var k := f[0];
var maxx := 0;
for var a := 2 to f.High - 2 * k do
  if f[a] > 0 then
  begin
    var sr1 := f?[a + k:];
    var m1 := sr1.Length > 0 ? sr1.Select(t -> t + f[a]).max : 0;
    var sr2 := f?[:a - k];
    var m2 := sr2.Length > 0 ? sr2.Select(t -> t + m1).max : 0;
    var m3 := max(m1, m2);
    maxx := max(maxx, m3);
  end;
print(maxx)