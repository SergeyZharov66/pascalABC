##
for var n:uint64 := 500 to 5000000 do
begin
  var c:=(2024*n).ToString;
  if c.IsMatch('^1\d2157\d*4$') then println(2024*n, n);
end;