procedure VerifyString(var char: string);
var
    i, j, l, count: integer;
    Vstring: string;
    counts: array[1..255] of integer;
    c: char;

begin
    Vstring := '';
    for j := 1 to 256 do
        counts[j] := 0;

    for i := 1 to Length(char) do
    begin 
        c := char[i];
        if c = ' ' then
            continue;

        counts[Ord(c)] := counts[Ord(c)] + 1;

        if counts[Ord(c)] = 2 then
            Vstring := Vstring + c;

    end;
    writeln(Vstring);
end;

var
    char: string;
    i, l: integer;
begin
    write('Type a string: ');
    readln(char);
    VerifyString(char);

end.

