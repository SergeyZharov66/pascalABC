﻿##
//поиск с контекстом
if ParamCount = 0 then
  print('no parameter')
else
begin
  var cont := new string[ParamCount - 3];
  var b := ReadAllText(ParamStr(1)).MatchValues('\b[А-Яа-яЁе]+\b').ToArray.ConvertAll(t -> t.tolower);
  var kl := ParamStr(2).ToLower; //ключ
  for var i := 0 to ParamCount - 4 do
    cont[i] := ParamStr(i + 3).ToLower;  //контекст
  var r := ParamStr(ParamCount).ToInteger;
  var n := b.FindIndex(t -> t = kl); //ищем первое вхождение ключа
  var fon := new List<string>;
  assign(output, 'notes.txt');
  if n > 0 then
  begin
    var srez: array of string;
    while n > 0 do
    begin
      if n >= r then
      begin
        srez := b?[n - r:n + r + 1]; // ? - мягкий срез
        var isCont:=ArrGen(cont.Length,t->0);
        for var i:=0 to cont.Length-1 do
          foreach var x in srez do
            if x.Contains(cont[i]) then isCont[i]:=1;
        if isCont.Where(t->t=1).Count=cont.Length then 
           fon.Add('[' + srez.JoinToString + ']');
      end;
      n := b.FindIndex(n + 1, t -> t = kl);
    end;
    if fon.Count = 0 then print('noContext') else 
      foreach var x in fon do x.Println;
  end
  else
    print('noKey')
end; 