##
  var st := ReadAllLines('in8_1.txt');
  var s := new List<string>;
  var a := new List<array of string>;
  
  // делаем список по столбцам цифр
  for var i := 1 to st.ToArray[0].Length do
  begin
    s.Clear;
    foreach x: string in st do
      s.Add(x[i]);
    a.Add(s.ToArray);
  end;
  
  var b := a.Permutations;

  var (n1, n2, n3) := ('', '', '');
  var (nn1, nn2, nn3) := (0, 0, 0);
  var err: integer;
  var isRes := False;
  for var i := 0 to b.ToArray.Length-1 do
  begin
    for var j := 0 to b.ToArray[0].Length - 1 do
    begin
      n1 += b.ToArray[i, j, 0];
      n2 += b.ToArray[i, j, 1];
      n3 += b.ToArray[i, j, 2];
    end;
    val(n1, nn1, err); val(n2, nn2, err); val(n3, nn3, err);
    if (nn1 + nn2 = nn3) and (n1[1] <> '0') and (n2[1] <> '0') and (n3[1] <> '0') then
    begin
      println(n1, n2, n3);
      isRes := True;
    end;
    (n1, n2, n3) := ('', '', '');    
  end;
  if not isRes then println('No')
