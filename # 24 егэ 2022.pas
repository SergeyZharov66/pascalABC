﻿##
//Задача № 24 из демо ЕГЭ 2022 с регулярным выражением
// строка разбивается так *PPP* -> *P и P*
var s1:=ReadAllLines('24.txt')[0]
.RegexReplace('P{2,}',m->';') //P{2,} - выделяет 2 и болеее идущих подряд символов P
.split(';')
.select(t->t.length)
.Max;

println(s1+2); //прибавляем 2,так как отбрасываем два крайних символа P

