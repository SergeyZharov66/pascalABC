##
var comb := ReadInteger('n= ');
var k: uint64 := 1;
while True do
begin
  if (2 ** k).ToString.StartsWith(comb.ToString) then 
  begin
    println(k);
    exit;
  end;
  k += 1;
end; 