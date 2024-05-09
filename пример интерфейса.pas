type 
  IФигура = interface 
    procedure Вывести; 
    property Площадь: real read; 
  end; 
   
  Прямоугольник = auto class(IФигура) 
    private 
      Длина: real; 
      Ширина: real; 
    public 
      procedure Вывести := 
          $'{Длина} x {Ширина} = {Площадь}'.Println; 
      property Площадь: real read Длина * Ширина; 
  end; 
   
  Квадрат = auto class(IФигура) 
    private 
      Сторона: real; 
    public 
      procedure Вывести := 
          $'{Сторона} x {Сторона} = {Площадь}'.Println; 
      property Площадь: real read Sqr(Сторона); 
  end; 
   
  Круг = auto class(IФигура) 
    private 
      Радиус: real; 
    public 
      procedure Вывести := 
         $'Pi x {Радиус}^2 = {Площадь}'.Println; 
      property Площадь: real read Pi * Sqr(Радиус); 
  end; 
 
begin 
  var L := new List<IФигура>; 
  L.Add(new Прямоугольник(12, 15.5)); 
  L.Add(new Прямоугольник(18.2, 9.4)); 
  L.Add(new Квадрат(15)); 
  L.Add(new Круг(23.27)); 
  foreach var p in L do 
    p.Вывести 
end. 