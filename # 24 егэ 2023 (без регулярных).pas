##
var s1 := ReadAllLines('24_23.txt')[0];
var m := 0;
var mx := 0;
var t := 1;
while t <= s1.Length - 1 do
begin
  if (s1[t] = 'A') or (s1[t] = 'O') then
    if (s1[t + 1] = 'C') or (s1[t + 1] = 'D') or (s1[t + 1] = 'F') then 
    begin
      m += 1;
      t += 2;
    end  
    else 
    begin
      mx := max(m, mx);
      m := 0;
      t += 1;
    end
  else
  begin
    mx := max(m, mx);
    m := 0;
    t += 1;
  end;  
end;
println(mx); 