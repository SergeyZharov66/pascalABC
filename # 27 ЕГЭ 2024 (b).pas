##
// Демо ЕГЭ24,задача 27
var f := ReadAllLines('E:\ЕГЭ ИНФ\inf_11_2024\Доп_файлы\Задание 27\27_B_2024.txt').ConvertAll(t -> t.ToInteger);
var k := f[0];
{Число к разбивает исходный массив на целое количество отрезков.
Массив файла А - на 5,массив файла В - на 6}
var (maxSum, max_Cur) := (integer.MinValue, integer.MinValue);

{Рассматриваем три отрезка: А - 1-е число,В - 2-е число,С - 3-е число;
массив С - это максимумы из последнего,последнего и предпоследнего и т.д.}
var C := new integer[f.High - 2 * k - 1];
for var i := 0 to C.High do
begin
  max_Cur := max(max_Cur, f[f.High - i]);
  C[i] := max_Cur;
end;  

{Массив В - это суммы чисел В1 + maxCn, B2 + maxCn-1 и т. д.
где maxCn - максимум на всем отрезке С, maxCn-1 - максимум на 
отрезке на единицу меньшем }
var B := new integer[f.High - 2 * k - 1];
for var i := 0 to B.High do
  B[i] := f[k + 2 + i] + C[B.High - i];

{Для каждого числа из отрезка А нужно выбрать максимум из возможных
для него значений из массива В. Заполняем ими массив С}
max_Cur := integer.MinValue;
for var i := C.High downto 0 do
begin
  max_Cur := max(max_Cur, B[i]);
  C[i] := max_Cur;
end;

{Перебираем все числа из отрезка А и находим максимальную сумму
этого числа и элемента массива С (в нем находится максимально возможная
сумма чисел из отрезков В и С, допустимая для данного числа А)}
var curSum := 0;
for var i := 2 to f.High - 2 * k do
begin
  curSum := f[i] + C[i - 2];
  maxSum := max(maxSum, curSum);
end;
print(maxSum)