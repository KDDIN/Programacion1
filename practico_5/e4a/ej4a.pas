program Practico5_ejercicio4a;

var entero,suma,promedio,contador: integer;

begin
    writeln(maxint);
    write('Ingrese un entero positivo (uno negativo para terminar): ');
    readln(entero);
    suma := 0;
    promedio := 0;
    contador := 0;

    while entero >= 0 do
    begin

        suma := suma + entero;
        contador := contador +1;

        write('Ingrese un entero positivo (uno negativo para terminar): ');
        readln(entero);

    end;

    if contador > 0 then
        promedio := suma div contador;
    
    writeln('La suma de todos los enteros es :',suma);
    writeln('Y el promedio de todos los enteros ingresados es: ',promedio)

end.