﻿{Даны массивы n и d, содержащие ночные и дневные температуры воздуха 
за 15 дней. Найти значения температур пары "ночь - день", 
у которой разность температур минимальна.}
##
var n := |14, 16, 12, 16, 17,  8, 12,  8, 15,  8, 11,  8,  9,  8, 11|;
var d := |22, 19, 23, 24, 18, 15, 24, 15, 18, 20, 17, 22, 21, 17, 14|;
n.Interleave(d).Batch(2).OrderBy(t -> t.Last - t.First).First.Print // 17 18

