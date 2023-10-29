##
var a := '6482816304983265445251713078722281,3024791084503059365954883836799';
var b := '9583703050575718123003,7192908757628436747310310677432';
var chisla := new BigInteger[4];
chisla[0] := a[1:a.IndexOf(',') + 1].ToBigInteger;
chisla[1] := a[a.IndexOf(',') + 2:].ToBigInteger;
chisla[2] := b[1:b.IndexOf(',') + 1].ToBigInteger;
chisla[3] := b[b.IndexOf(',') + 2:].ToBigInteger;
var sumCel := chisla[0] + chisla[2];
var sumDrob := (chisla[1] + chisla[3]).Println;
var l1 := chisla[1].tostring.length;
var l2 := chisla[3].tostring.length;
var l := sumDrob.tostring.length;
var drob := '';
if l > max(l1, l2) then
begin
  var dl := l - max(l1, l2);
  var popravka := sumDrob.tostring.Slice(0, 1, dl).ToBigInteger;
  sumCel += popravka;
  drob := sumDrob.tostring[dl + 1:];
end
else
  begin
  drob := sumDrob.tostring;
end;
write(sumCel, ',', drob)