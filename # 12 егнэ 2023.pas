##
uses school;
//демо егэ 2023,задание 12
var s:='>000000022200000222222000001110000000000000000000000222222222222222222222222222222';
while s.Contains('>1') or s.Contains('>2') or s.Contains('>0') do
begin
  if s.Contains('>1') then s:=s.Replace('>1','22>');
  if s.Contains('>2') then s:=s.Replace('>2','2>');
  if s.Contains('>0') then s:=s.Replace('>0','1>');
end;
{получается строка,в которой 39 единиц и 40+(2n-1) двоек,где n - количество единиц в исходной строке.
далее ищем наименьшее n, которое даст простое число для выражения (40+(2n-1))*2+39}
var n:=1;
while True do
  if (117+4*n).IsPrime then
  begin
    println('n=',n);
    break;
  end
  else n+=1;
