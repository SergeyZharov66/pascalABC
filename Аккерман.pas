##
function Akk(n, m: integer): integer := 
    if n = 0 then 
      m + 1 
    else if m = 0 then 
      Akk(n - 1, 1) 
    else 
      Akk(n - 1, Akk(n, m - 1)); 
  Print(Akk(2, 4)) 
