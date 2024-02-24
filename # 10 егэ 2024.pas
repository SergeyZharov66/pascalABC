##
var f := ReadAllText('E:\ЕГЭ ИНФ\inf_11_2024\Доп_файлы\Задание 10\10_2024.txt').Split;
var starts:=f.IndexOf('II');
var ends:=f.IndexOf('III');
var textII:=f[starts:ends];
var kol:=0;
foreach var x in textII do
  kol+=x.MatchValues('все[А-Яа-яЁё]|Все[А-Яа-яЁё]|[А-Яа-яЁё]все|[А-Яа-яЁё]Все').Count;

textII.Where(t->t.contains('все') and (t.length>3)).toarray.println; 
textII.Where(t->t.contains('Все') and (t.length>3)).toarray.println;
println(kol)