##
function SOdd(n: integer): integer := if n = 1 then 1 else 2*n-1 + SOdd(n - 1);
Print(SOdd(ReadInteger))