﻿{Ввести сначала длину целочисленного массива, 
а затем значения его элементов. Поменять местами 
максимальный и минимальный элементы массива. 
Вывести элементы преобразованного массива в строку, 
разделяя их запятой с последующим пробелом. 
Гарантируется, что в массиве только один 
максимальный и один минимальный элемент.
Sample Input:
8 23 65 14 82 49 31 46 99
|23,65,14,82,49,31,46,99|
Sample Output:
23, 65, 99, 82, 49, 31, 46, 14}
##
var l:=ReadInteger('Длина массива');
var a:=ReadArrInteger(l);
var imax:=a.IndexMax;
var imin:=a.IndexMin;
(a[imax],a[imin]):=(a[imin],a[imax]);
a.println(', ')
