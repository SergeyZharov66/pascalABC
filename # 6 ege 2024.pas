﻿##
// задача 6 демо 2024
{фигура - равносторонний треугольник
считаем точки для симметричного относительно оси Х
первый отрезок y=sqrt(3)x, второй - y=sqrt(3)(10-x)
функция Floor округлит до наиб. целого <= аргументу}
var kol:=0;
for var x:=0 to 10 do
  for var y:=0 to 9 do
    if (y<floor(sqrt(3)*x)) and (y<floor(sqrt(3)*(10-x))) then kol+=1;
println(kol)  