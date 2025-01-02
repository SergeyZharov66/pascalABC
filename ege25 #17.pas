##
var f := ReadAllLines('D:\Архив\ЕГЭ ИНФ\inf_11_2025\Доп.файлы_2025\Задание 17\demo_2025_17.txt').ConvertAll(t->t.toInteger);
var min_pos:=f.Min;
var f1:=f.Pairwise.Where(t-> (t[0] mod 16 = min_pos) or (t[1] mod 16 = min_pos)).ToArray;
println(f1.Count);
println(f1.select(t->t[0]+t[1]).Max)
