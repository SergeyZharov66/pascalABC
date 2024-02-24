##
//демо егэ 2024,задание 12
// ответ 156
var s: string;
var n_max := 3;
for var n := 4 to 9999 do
begin
  s := '5' + '2' * n;
  while s.Contains('52') or s.Contains('2222') or s.Contains('1122') do
  begin
    if s.Contains('52') then s := s.Replace('52', '11', 1);
    if s.Contains('2222') then s := s.Replace('2222', '5', 1);
    if s.Contains('1122') then s := s.Replace('1122', '25', 1);
  end;
  var su := s.ToArray.ConvertAll(t -> t.ToDigit).Sum;
  if  su = 64 then n_max := n
end; 
println(n_max)