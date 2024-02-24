##
var f:=ReadAllLines('E:\ЕГЭ ИНФ\inf_11_2024\Доп_файлы\Задание 3\3_2024.txt').Select(x->x.split).toarray;
var s:=0;
// коды зефиров 4,5,6,7 подставляем в качестве х[3] по одному
foreach var x in f do
  if ((x[2]='M2') or (x[2]='M16')) and (x[3]='7') and (x[5]='Поступление') and ((x[1]>='04.06.2023') and ((x[1]<='13.06.2023')))
      then s+=strtoint((x[4]));
println(s)      