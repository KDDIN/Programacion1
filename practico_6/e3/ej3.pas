Program Practico6_ejercicio3;

var x,n,r: real;

begin

    Write('Ingrese X: ');
    read(x);
    Write('Ingrese los coeficientes: ');
    read(n);

    r := 0;

    repeat
        r := (r + n) * x;
        read(n);
        if n = -1 then
            r := r/x;
    until n = -1;

    Writeln('El valor del polinomio valuado en ',x:3:2,' es ',r:3:2)


end.