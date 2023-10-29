##
uses school;
var a := TrueTable((x, y, z, w) -> (x and not y) or (y=z) or (not w)); 
TrueTablePrint(a,0) 