##
var f := ReadAllLines('E:\ЕГЭ ИНФ\inf_11_2024\Доп_файлы\Задание 27\27_A_2024.txt').ConvertAll(t -> t.ToInteger);
//var f := Arr(2, 6, 150, -150, 20, -200, -300, 0);
var k := f[0];
var flag := False;
var l := new List<integer>;
for var a := 2 to f.High do
  for var b := a  to f.High do
    for var c := b to f.High do
    begin
      if (abs(a - b) >= k) and (abs(b - c) >= k) and (abs(a - c) >= k) then flag := True;
      if flag then l.Add(f[a] + f[b] + f[c]);
      flag := False;
    end;
print(l.Max)