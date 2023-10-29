##
//Раскраска, олимпиада № 7
var n := 3;
var m := 3;
var c := 3;
var L := new List<(integer, integer)>;
//var a: array [,] of integer;
var IsRavno: boolean;
var a := new integer[3, 3]((2, 3, 3), (3, 3, 3), (3, 3, 1));
var Perebor := True;
while Perebor do
begin
{  var isCvet := False;
  while not isCvet do
  begin
    a := MatrRandom(n, m, 1, c);
    if a.ElementsByRow.ToHashSet.count = c then isCvet := True;
  end;
  isCvet := False;}
  //a.Println;
  //'-----------'.Println;
  var st: sequence of integer;
  foreach var x in 1..c do
  begin
    var b := a.ConvertAll(t -> t xor x);
    for var i:=0 to n-1 do
      if b.Row(i).CountOf(0)>1 then
      begin
        var posFirstZero:=b.Row(i).IndexOf(0);
        for var j:=i+1 to n-1 do
          if b[j,posFirstZero]=0 then k+=1;
          
end; 