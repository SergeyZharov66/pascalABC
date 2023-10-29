##
var pair := Dict(('(', ')'), ('[', ']'), ('{', '}'));
var dlina := 5;
var l := pair.Keys.ToArray.Cartesian(dlina);
var stack := new List<char>;
var a: char;
foreach var x in l do
begin
  for var i := dlina - 1 downto 0 do
    if pair.TryGetValue(x[i], a) then
      stack.Add(a);
  x.Print; stack.Println;
  stack.Clear;
end; 