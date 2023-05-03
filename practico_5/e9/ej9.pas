Program practico5_ejercicio9;

var s,n,a,numero,desviacion: Real;

begin

    // s es la suma de los cuadrados de los valores
    // n guarda la cantidad de veces que se ingreso un numero
    // a es el promedio de los numeros reales
    s := 0;
    a := 0;

    Write('Ingrese numeros reales positivos (-1 para terminar): ');
    Read(numero);
    n := 1;

    while numero <> -1 do
    begin

        a := a + numero;
        s := s + sqr(numero);
        Read(numero);
        if numero <> -1 then
            n := n+1

    end;
    a := a / n;
    desviacion := sqrt((s/n)-sqr(a));

    Writeln(desviacion:3:2);



{Formula: desviacion := sqrt(s/n-sqr(a))} 
end.










