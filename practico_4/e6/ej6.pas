program Practico4_ejercicio6;

var i,n,menor,mayor,comparador: integer;

begin

    write('Ingrese un valor para n: ');
    readln(n);

    mayor := 1;
    menor := maxint;
    write('Ingrese ',n,' entero/s: ');
    for i := 1 to n do
    begin
        
        read (comparador);

        if comparador < menor then
            menor := comparador;
        
        if comparador > mayor then
            mayor := comparador;

    end;

    writeln ('El mayor entero ingresado es: ',mayor);
    writeln('El menor entero ingresado es: ',menor);
    

end.