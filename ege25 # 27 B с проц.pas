{номер 27}
type
  toch = (real, real);

function dist(x1, y1, x2, y2: real) := sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));

procedure centr(k: List<(real, real)>; var x0, y0: real);
begin
  var s := 0.0;
  var min_dist := real.MaxValue;
  for var i := 0 to k.count - 1 do
  begin
    for var j := 0 to k.count - 1 do
      s += dist(k[i][0], k[i][1], k[j][0], k[j][1]);
    if s < min_dist then
    begin
      min_dist := s;
      x0 := k[i][0];
      y0 := k[i][1];
    end;  
    s := 0.0;
  end;
end;

begin
  var f := ReadAllLines('D:\Архив\ЕГЭ ИНФ\inf_11_2025\Доп.файлы_2025\Задание 27\demo_2025_27_Б.txt').select(x -> x.RegexReplace(',', '.')).ToArray;
  //var f:=ReadAllLines('E:\ЕГЭ ИНФ\inf_11_2025\Доп.файлы_2025\Задание 27\demo_2025_27_Б.txt').select(x->x.RegexReplace(',','.')).ToArray;
  var tochki := new toch[f.Length];
  
  // выделение координат точек
  for var i := 0 to f.High do
    tochki[i] := (f[i].split[0].ToReal, f[i].split[1].ToReal);
  
  // разбираем точки на кластеры
  var (k1, k2, k3, k_temp) := (new List<(real, real)>, new List<(real, real)>, new List<(real, real)>, new List<(real, real)>);
  
  // выделяем кластер 1
  foreach var p in tochki do
  begin
    var x := p[0];
    var y := p[1];
    if k1.TrueForAll(t -> (abs(x - t[0]) <= 3) and (abs(y - t[1]) <= 3)) then k1.add(p) else k_temp.Add(p); 
  end;
  
  // выделяем кластер 2 и 3
  foreach var p in k_temp do
  begin
    var x := p[0];
    var y := p[1];
    if k2.TrueForAll(t -> (abs(x - t[0]) <= 3) and (abs(y - t[1]) <= 3)) then k2.add(p) else k3.add(p); 
  end;
  
  
  // вычисляем центр кластера
  var (x_min, y_min) := (0.0, 0.0);
  var (px, py) := (0.0, 0.0);
  
  // кластер k1
  centr(k1, x_min, y_min);
  px := x_min;
  py := y_min;
  
  // кластер k2
  centr(k2, x_min, y_min);
  px += x_min;
  py += y_min;
  
  // кластер k3
  centr(k3, x_min, y_min);
  px += x_min;
  py += y_min;
  
  println(trunc(px / 3 * 10000), trunc(py / 3 * 10000))
end.