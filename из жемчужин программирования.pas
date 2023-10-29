##
{Дан набор из n вещественных чисел, вещественное число t, це- 
лое k. Как можно быстро определить существование k-элементного подна- 
бора, сумма элементов которого не превышает t? 
}
var a:=ArrRandomReal(20,0,20).Println;
var t:=ReadReal('t=');
var k:=ReadInteger('k=');
var b:=a.Sorted.Slice(0,k-1);
if b.sum<=t then
  println('Da',b)
else
  println('Net')
