##
// кодировка RGB, R=20, G=44, B=70
// цвет 4 байтовое число, старший байт 0
var color : cardinal :=1322054;
var r,g,b : byte;
r:= color shr 16;
g:= color shr 8;
b:= (color shl 8) shr 8;
println(r,g,b)

