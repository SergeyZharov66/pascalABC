##
var a := ArrRandom(45, 1, 5); 
a.Println; 
a.AdjacentGroup.Select(s -> s.Count).Max.Println 