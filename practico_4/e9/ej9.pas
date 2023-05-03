program Practico4_ejercicio9;

var i,x,base,n: integer;

begin

    write('Ingrese un valor para x: ');
    readln(x);
    base := x;
    write('Ingrese un valor para n: ');
    readln(n);

    for i := 1 to n-1 do
        x := x * base;

    writeln('El resultado de ',base,' elevado a la ',n,' es ',x)
end.