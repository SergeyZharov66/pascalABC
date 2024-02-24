##
var sp := new List<Integer>;
var x := Arr(0..60);
foreach var t in x do
  for var y := 0 to t do
    sp.add(t + 2 * y);
sp.Max.println