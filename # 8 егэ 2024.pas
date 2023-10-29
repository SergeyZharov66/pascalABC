##
uses school;

var kol := 0;
var mas := (10000..77777).Where(t -> not (Digits(t).Contains(8) or Digits(t).Contains(9))).ToArray;
foreach var x in mas do
  if (Digits(x).Count = Digits(x).Distinct.Count) and (not Digits(x).Contains(1)) then
    if Digits(x).Pairwise.Where(t -> (t[0].IsEven and t[1].IsOdd) or (t[0].IsOdd and t[1].IsEven)).Count = 4 then kol += 1;
print(kol)