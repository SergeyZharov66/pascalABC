##
for var a: uint64 := 1 to 100 do
  for var b: uint64 := 1 to 100 do 
    for var c: uint64 := 1 to 100 do
    begin
      if (a <= b) and (b <= c) then
      begin
        var n : uint64 := a * (a + c) * (a + b) + b * (a + b) * (b + c) + c * (a + c) * (b + c);
        var m : uint64 := (b + c) * (a + c) * (a + b);
        if n = 2 * m then println('res=', a, b, c, 'n,m=', n, m);
      end;
    end; 