program Practico5_ejercicio4b;

var entero,mayor,menor: integer;

begin

    Write('Ingrese un entero positivo (uno negativo para terminar): ');
    readln(entero);
    mayor := maxint * -1;
    menor := maxint;

    while entero >= 0 do
    begin

        if entero > mayor then
            mayor := entero;
        
        if entero < menor then
            menor := entero;

        Write('Ingrese un entero positivo (uno negativo para terminar): ');
        readln(entero);

    end;

    writeln('El mayor numero ingresado es: ',mayor);
    writeln('El menor numero ingresado es: ',menor)

end.