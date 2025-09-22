program DrawZStair;
uses crt;

var
  n, k, i, j, z, row: integer;

procedure PrintZRow(lineIndex, shift: integer; size: integer);
var
  i: integer;
begin
  for z := 0 to shift do
  begin
    // Отступ перед каждой Z
    write(StringOfChar(' ', z));
    
    // Какая строка Z печатается:
    if (lineIndex = 1) or (lineIndex = size) or (lineIndex = (size div 2) + 1) then
      write(StringOfChar('*', size))
    else
      write(StringOfChar(' ', size - lineIndex), '*');
    
    // Пробел между буквами
    if z < shift then
      write(' ');
  end;
  writeln;
end;

begin
  clrscr;

  repeat
    write('Введите нечетное число >= 5 (высота Z): ');
    readln(n);
    if (n < 5) or (n mod 2 = 0) then
      writeln('Ошибка: число должно быть нечетным и не меньше 5!');
  until (n >= 5) and (n mod 2 = 1);

  write('Введите количество букв Z: ');
  readln(k);

  for row := 1 to n + (k - 1) * (n div 2) do
  begin
    // Определим, сколько Z можно печатать в этой строке
    z := 0;
    while (z < k) and (row >= z * (n div 2) + 1) and (row <= z * (n div 2) + n) do
      inc(z);
    dec(z);

    if z >= 0 then
      PrintZRow(row - z * (n div 2), z, n);
  end;
end.

