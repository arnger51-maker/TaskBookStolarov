procedure PrintSpaces(count: integer);
var
    i: integer;
begin
    for i := 1 to count do
        write(' ')
end;

procedure PrintLineOfDiamond(k, n, c: integer);
var
    i, startSpaces, midleSpaces: integer;

begin
        for i := 1 to c do
        begin

            startSpaces := n + 1 -k;
            midleSpaces := 2 * k - 3; 
            PrintSpaces(startSpaces);
            write('*');
            if k > 1 then
            begin
                PrintSpaces(midleSpaces);
                write('*')
            end;
            PrintSpaces(startSpaces);
        end;
        writeln;
end;

var
    n, k, h, c, l: integer;
begin
    repeat
        write('Enter height of diamond: ');
        readln(h);
        write('Enter count of diamond: ');
        readln(c);
    until (h > 0) and (h mod 2 = 1);
    n := h div 2;

for k := 1 to n + 1 do
    PrintLineOfDiamond(k, n, c);
for k := n downto 1 do
    PrintLineOfDiamond(k, n, c); 
    
end.
