##
//Раскраска, олимпиада № 7
var n := 10;
var m := 10;
var c := 10;
var L := new List<IEnumerable<integer>>;
var a: array [,] of integer;
var IsRavno: boolean;
//var a := new integer[3, 3]((1, 2, 2), (2, 2, 1), (1, 2, 2));
var Perebor := True;
while Perebor do
begin
  var isCvet := False;
  while not isCvet do
  begin
    randomize;
    a := MatrRandom(n, m, 1, c);
    if a.ElementsByRow.ToHashSet.count = c then isCvet := True;
  end;
  isCvet := False;
  a.Println;
  '-----------'.Println;
  var st: sequence of integer;
  foreach var x in 1..c do
  begin
    for var i := 0 to n - 1 do
    begin
      st := a.rows[i].Indices(t -> t = x);
      if st.Count > 1 then
        L.Add(st);
    end;
    if L.Count > 1 then
    begin
      L.Println;
      for var j := 0 to L.Count - 1 do
        for var k := j + 1 to L.Count - 1 do
        begin
          var s1 := Hset(L[j]);
          var s2 := Hset(L[k]);
          println(s1, s2);
          if s1.Count < s2.Count then 
            isRavno := s1.IsSubsetOf(s2) or isRavno else 
            isRavno := s2.IsSubsetOf(s1) or isRavno;
        end;
    end;
    L.Clear;
  end;
  if not IsRavno then  
  begin
    a.Println;
    Perebor := False;
    exit
  end;
end; 