{номер 27}
type
  toch = (real, real);

function dist(x1, y1, x2, y2: real) := sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));

begin
  var f := ReadAllLines('D:\Архив\ЕГЭ ИНФ\inf_11_2025\Доп.файлы_2025\Задание 27\demo_2025_27_А.txt').select(x -> x.RegexReplace(',', '.')).ToArray;
  //var f:=ReadAllLines('E:\ЕГЭ ИНФ\inf_11_2025\Доп.файлы_2025\Задание 27\demo_2025_27_А.txt').select(x->x.RegexReplace(',','.')).ToArray;
  var tochki := new toch[f.Length];
  
  // выделение координат точек
  for var i := 0 to f.High do
    tochki[i] := (f[i].split[0].ToReal, f[i].split[1].ToReal);
  
  // разбираем точки на кластеры
  var (k1, k2) := (new List<(real, real)>, new List<(real, real)>);
  k1.add(tochki[0]);
  foreach var p in tochki do 
  begin
    var x := p[0];
    var y := p[1];
    if k1.TrueForAll(t -> (abs(x - t[0]) <= 3) and (abs(y - t[1]) <= 3)) then k1.add(p) else k2.add(p); 
  end;
  
  // вычисляем центр кластера
  // кластер k1
  var min_dist := real.MaxValue;
  var (x1_min,y1_min):= (0.0,0.0);
  var s := 0.0;
  for var i := 0 to k1.count - 1 do
  begin
    for var j := 0 to k1.count - 1 do
      s += dist(k1[i][0], k1[i][1], k1[j][0], k1[j][1]);
    if s<min_dist then
      begin
        min_dist:= s;
        x1_min:=k1[i][0];
        y1_min:=k1[i][1];
      end;  
    s := 0.0;
  end;
  // кластер k2
  var (x2_min,y2_min):= (0.0,0.0);
  min_dist:=real.MaxValue;
  s:=0.0;
  for var i := 0 to k2.count - 1 do
  begin
    for var j := 0 to k2.count - 1 do
      s += dist(k2[i][0], k2[i][1], k2[j][0], k2[j][1]);
    if s<min_dist then
      begin
        min_dist:= s;
        x2_min:=k2[i][0];
        y2_min:=k2[i][1];
      end;  
    s := 0.0;
  end;
  var px:=(x1_min+x2_min)/2;
  var py:=(y1_min+y2_min)/2;
  println(trunc(px*10000),trunc(py*10000))
end.