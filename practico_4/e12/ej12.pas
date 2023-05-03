program Practico4_ejercicio12;

var n,x,y,funcion,resultado: integer;

begin

    {Le pido al usuario que ingrese el valor}
    Write('Escriba un valor positivo para un n: ');
    readln(n);
    x := 0;
    y := 0;
    resultado := maxint * -1;
    writeln ((-4*-4) - (9*-4*-4) + (-4*-4));

    {Tomo para cada valor de x entre -n a n}
    for x := n*-1 to n do
    begin

        {y lo comparo con cada y de -n a n}
        for y := x to n do
        begin

            {opero}
            funcion := sqr(x) - (9*x*y) + sqr(y);

            {si el numero dado es mayor a los otros, lo guarda en "resultado"}
            if resultado <= funcion then
                resultado := funcion;

        end;

    end;

        writeln('El valor maximo para x en el entorno ',n*-1,' a ',n,' es ',resultado)

end.