program VerifyStringExample;

uses crt;

procedure VerifyString(var char: string);
var
  i, count, indexOrd: Integer;
  Vstring: string;
  c: Char;
  index: array[0..25] of Integer;  { Массив для отслеживания встреченных символов (0..25 для букв a..z) }
begin
  Vstring := '';  { Инициализация пустой строки для результата }
  count := length(char);
  
  { Инициализация массива индексов (все значения равны 0) }
  for i := 0 to 25 do
    index[i] := 0;

  { Проход по строке }
  for i := 1 to count do
  begin
    c := LowerCase(char[i]);  { Приводим символ к нижнему регистру }
    
    { Если символ в диапазоне от 'a' до 'z' }
    if (c >= 'a') and (c <= 'z') then
    begin
      indexOrd := Ord(c) - Ord('a');  { Получаем индекс для массива от 0 до 25 }

      { Если символ уже встречался, добавляем его в Vstring }
      if index[indexOrd] > 0 then
        Vstring := Vstring + c;

      { Увеличиваем счетчик для этого символа }
      index[indexOrd] := index[indexOrd] + 1;
    end;
  end;

  { Выводим полученную строку }
  WriteLn('Vstring: ', Vstring);
end;

var
  char: string;
begin
  clrscr;

  Write('Type a string: ');
  ReadLn(char);
  VerifyString(char);

  ReadLn;
end.

