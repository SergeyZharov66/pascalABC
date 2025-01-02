##
var f := ReadAllText('D:\Архив\ЕГЭ ИНФ\inf_11_2025\Доп.файлы_2025\Задание 24\demo_2025_24.txt');
var f1 := f.RegexReplace('[*-]{2,}', ' ').RegexReplace('[-*]0\d', m -> ' ' + m.Value.Slice(2, 1)).RegexReplace('\s0', ' ');
f1.split().select(t -> t.Length).max.println; 