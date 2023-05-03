program Practico6_ejercicio4;

var 
    n,i,primo,divisor: integer;
    cuadrada: real;

begin

    Write('Ingrese n: ');
    read(n);
    divisor := 2;
    primo := 3;
    writeln('1: Primo: 2 Raiz cuadrada: 1.41');

    for i := 1 to n-1 do
    begin
        while (primo mod divisor <> 0) do
            if primo = divisor then
                primo := primo + 2
            else
                divisor := divisor + 1;
        if primo mod divisor = 0 then
        begin
            cuadrada := sqrt(primo);
            writeln(i,': Primo: ',primo,' Raiz cuadrada: ',cuadrada:3:2);
        end;
        primo := primo + 2;
        

    end;

end.