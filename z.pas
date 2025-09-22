program LetterZ;

var
  n, i, j: integer;
begin
  repeat
    write('Введите высоту буквы Z: ');
    readln(n);
  until(n >= 5) and ( n mod 2 = 1);
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      if (i = 1) or (i = n) then
        write('*') // верх и низ
      else if (i = (n div 2) + 1) then
        write('*') // середина
      else if (j = n - i + 1) then
        write('*') // диагональ
      else
        write(' ');
    end;
    writeln;
  end;
end.
