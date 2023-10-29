{Разработайте абстрактный класс tRoot, имеющий виртуальные методы 
вычисления действительных корней уравнений и вывода их значений. Унаследуй-
те от tRoot классы для решения уравнений первой (tLinear) и второй (tSquare) 
степени. }
{Пример использования наследования и полиморфизма}
type
 ///абстрактный класс, его наследуют другие классы
  tRoot = class
    procedure GetReshenie; abstract;
    procedure ShowReshenie; abstract;
  end;
  
  tLinear = class(tRoot)
    a: integer;
    b: integer;
    x: real;
    constructor(a, b: integer);
    begin
      Self.a := a;
      Self.b := b;
    end;
    
    procedure GetReshenie; override;
    begin
      x := -b / a;  
    end;
    
    procedure ShowReshenie; override;
    begin
      $'Корень уравнения = {x,2:f}'.Println;
    end;
  end;
  
  tSquare = class(tRoot)
    a, b, c: integer;
    x1, x2: real;
    
    constructor(a, b, c: integer);
    begin
      Self.a := a;
      Self.b := b;
      Self.c := c;
    end;
    
    procedure GetReshenie; override;
    begin
      if sqr(b) - 4 * a * c >= 0 then
      begin
        x1 := (-b + sqrt(sqr(b) - 4 * a * c)) / 2 / a;
        x2 := (-b - sqrt(sqr(b) - 4 * a * c)) / 2 / a;
      end
      else 
      begin
        x1 := real.PositiveInfinity;
        x2 := real.PositiveInfinity;
      end;
    end;
    
    procedure ShowReshenie; override;
    begin
      $'Корни уравнения = {x1,3:f}, {x2,3:f}'.Println;
    end;
  end;

begin
  
  var Lin := new tLinear(3, 8);
  Lin.GetReshenie;
  Lin.ShowReshenie;
  
  var Squar := new tSquare(2, -3, 1);
  Squar.GetReshenie;
  Squar.ShowReshenie;
  
end.    