##
var f := ReadAllLines('D:\Архив\ЕГЭ ИНФ\inf_11_2025\Доп.файлы_2025\Задание 26\demo_2025_26.txt');
var numb_stud := f[0].ToInteger div 4;
f := f[1:];
var kol2 := 0;
var fl_d := False;
var spis := new List<(integer, real, integer)>; // (ID, сред. балл, кол-во двоек)
foreach var x in f do
begin
  var temp := x.split().convertAll(t -> t.Tointeger);
  var sr := (temp[1] + temp[2] + temp[3] + temp[4]) / 4;
  for var i := 1 to 4 do
    if temp[i] = 2 then begin
      fl_d := True;
      kol2 += 1;
    end;  
  if fl_d then 
    spis.Add((temp[0], sr, kol2))
  else 
    spis.Add((temp[0], sr, 0));
  fl_d := False;
  kol2 := 0;
end;
spis.OrderByDescending(t -> t[1]).ThenBy(t -> t[0]).Where(t -> t[2] = 0).ToArray[numb_stud - 1].println; 
spis.OrderByDescending(t -> t[1]).ThenBy(t -> t[0]).Where(t -> t[2] > 2).ToArray[0].println;