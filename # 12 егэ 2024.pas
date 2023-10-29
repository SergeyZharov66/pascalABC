##
uses school;
//демо егэ 2024,задание 12
var s := '5' + '2' * 156; //'52222';
for var n := 5 to 9999 do
begin
  while s.Contains('52') or s.Contains('2222') or s.Contains('1122') do
  begin
    if s.Contains('52') then s := s.Replace('52', '11');
    if s.Contains('2222') then s := s.Replace('2222', '5');
    if s.Contains('1122') then s := s.Replace('1122', '25');
  end;
  //print(s);
  var su:=s.ToArray.ConvertAll(t->t.ToDigit).Sum;
  //println(su);
  if  su = 64 then println(n,s);
  s := '5' + '2' * n;
end; 
