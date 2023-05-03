program practico3_ejercicio12;

var a,b,c,cuadrado,r1,r2: real;

begin
    
    write('Ingrese a: ');
    read(a);
    write('Ingrese b: ');
    read(b);
    write('Ingrese c: ');
    read(c);

    cuadrado := (sqr(b) -4 * a * c);
    if cuadrado < 0 then
    begin

        cuadrado := cuadrado * (-1);
        r1 := ((b*(-1) + sqrt(cuadrado)) / (2*a));
        r2 := ((b*(-1) - sqrt(cuadrado)) / (2*a));
        writeln ('Dos raices complejas diferentes: ',
        r1:2:3,'i',' ',r2:2:3,'i')

    end

    else
    begin

        r1 := ((b*(-1) + sqrt(cuadrado)) / (2*a));
        r2 := ((b*(-1) - sqrt(cuadrado)) / (2*a));
        if r1 <> r2 then
            writeln ('Dos raices reales diferentes: ',r1:2:3,' y ',r2:2:3);

        if r1 = r2 then
            writeln ('Dos raices reales iguales: ',r1:2:3,' y ',r2:2:3);
    
    end;

end.