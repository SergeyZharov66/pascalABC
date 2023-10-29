##
uses GraphABC;
// треугольник Серпинского из хаоса https://dzen.ru/a/XzaaRW46qR-TpjwS
Window.Title := 'Треугольник Серпинского';
SetWindowSize(800, 600);
CenterWindow;
Circle(400, 50, 1);
Circle(100, 500, 1);
Circle(700, 500, 1);
var A := (400, 50); // точка А
var B := (100, 500); // точка В
var C := (700, 500); // точка С
var start := (random(800,600),random(800,600)); 
randomize;
loop 100 do
begin
  var ver := random(1, 6);
  case ver of
    1, 2:
      begin
        var x := (A[0] + start[0]) div 2;
        var y := (A[1] + start[1]) div 2;
        start := (x, y);
        Circle(x, y, 1);
      end;
    3, 4:
      begin
        var x := (B[0] + start[0]) div 2;
        var y := (B[1] + start[1]) div 2;
        start := (x, y);
        Circle(x, y, 1);
      end;
    5, 6:
      begin
        var x := (C[0] + start[0]) div 2;
        var y := (C[1] + start[1]) div 2;
        start := (x, y);
        Circle(x, y, 1);
      end;
  end;
end; 