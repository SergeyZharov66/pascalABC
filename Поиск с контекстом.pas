##
//поиск с контекстом
var f := 'D:\temp\Поиск_с_контекстом\prostok1.txt';
var b := ReadAllText(f).MatchValues('\b[А-Яа-яЁе]+\b').ToArray.ConvertAll(t -> t.tolower);
var kl := ReadString('Ключевое слово: ').ToLower;
var cont := ReadString('Контекст: ').Split().ConvertAll(t -> t.tolower);
var r := ReadInteger('Расстояние между словами: ');
var n := b.FindIndex(t -> t = kl);
var kol := 0;
var isF := false;
if n > 0 then
begin
  var srez: array of string;
  while n > 0 do
  begin
    if n >= r then
    begin
      srez := b?[n - r:n + r + 1]; // ? - мягкий срез
      kol := 0;
      foreach var x in cont do
        for var i := 0 to srez.Length - 1 do
          if srez[i].Contains(x) then kol += 1;
      if kol = cont.Length then 
      begin
        println(srez);
        isF := True;
      end;
    end;
    n := b.FindIndex(n + 1, t -> t = kl);
  end;
  if not isF then print('Нет ключа в окружении')
end
else
  print('Нет ключа')