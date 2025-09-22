procedure VerifyString(var char: string);
var
    Verify: boolean;
    i, j, l, count: integer;
    Vstring, c: string;
    index: array[1..255] of integer;

begin
    Vstring := '';
    count := length(char);
    Verify := false;
    for i := 1 to count do
    begin 
        char := LowerCase(char);
        c := char[i];

        if (c >= 'a') and (c <= 'z') then
        begin
            if (index[i] > 1) then
                Vstring := Vstring + c;
            index[i] := index[i] + 1;
        end;
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

