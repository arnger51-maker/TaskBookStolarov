uses
    SysUtils;

procedure FibonacciWithSteps(n: integer);
var
    i: integer;
    p, q, r: Int64;
begin
    if n >= 1 then
        writeln('0'); // первое число
    if n >= 2 then
        writeln('0 + 1 = 1'); // второе число (1 = 0 + 1)

    p := 0;
    q := 1;

    for i := 3 to n do
    begin
        r := p + q;
        writeln(p, ' + ', q, ' = ', r);
        Sleep(50); // пауза для наглядности
        p := q;
        q := r;
    end;
end;

var
    n: integer;
begin
    write('Enter n: ');
    readln(n);
    FibonacciWithSteps(n);
end.

