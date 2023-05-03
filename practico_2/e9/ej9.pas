program ej9;

var

    x, resultado: real;

begin

    write('Ingrese un numero entre 0.0 y 1.0: ');
    read(x);

    resultado := 1 + (x/1) + ((x*x)/2) + ((x*x*x)/(3*2))
    + ((x*x*x*x)/(4*3*2));

    writeln('Valor introducido: ',x);
    writeln('Suma de los cinco terminos: ', resultado);
    writeln('Valor de Exp (x): ',exp(x))

end.




