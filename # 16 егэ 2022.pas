##
function F(n: integer): integer;
begin
  if n = 1 then
    result := 1
else
    result := (n > 1) and (n.IsOdd) ? 2 * F(n - 2) : n + F(n - 1);
end;
print(F(26))