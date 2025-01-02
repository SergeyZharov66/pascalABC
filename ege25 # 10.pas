##
var f := ReadAllText('D:\Архив\ЕГЭ ИНФ\inf_11_2025\Доп.файлы_2025\Задание 10\10_2.txt');
(f.MatchValues('(П|п)о').count - f.MatchValues('\s(П|п)о\s').count).println;
