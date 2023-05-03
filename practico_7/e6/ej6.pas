Program Practico7_ejercicio6;

var 
    x2,x1,x0,cantidad: Integer;
    r1,r2: Real;

                            { Procedimiento }
procedure raices(a,b,c: integer; var cant: integer; var raiz1, raiz2: real);
var cuadrado: real;
begin

    cuadrado := (sqr(b) -4 * a * c);
    if cuadrado < 0 then
    begin
        WriteLn('Las raices del polinomio no son reales');
        cant := 0;
        raiz1 := 0;
        raiz2 := 0;
    end

    else
    begin

        raiz1 := ((b*(-1) + sqrt(cuadrado)) / (2*a));
        raiz2 := ((b*(-1) - sqrt(cuadrado)) / (2*a));

        if raiz1 <> raiz2 then
            cant := 2;

        if raiz1 = raiz2 then
            cant := 1;

    end;

end;

{Programa principal}
begin

    Write('Ingrese a: ');
    readln(x2);
    Write('Ingrese b: ');
    readln(x1);
    Write('Ingrese c: ');
    readln(x0);

    raices(x2,x1,x0,cantidad,r1,r2);

    if cantidad = 1 then
        WriteLn('Cant = ',cantidad,', Raiz 1 = ',r1:3:3,', Raiz 2 = ?');

    if cantidad = 2 then
        WriteLn('Cant = ',cantidad,', Raiz 1 = ',r1:3:3,', Raiz 2 = ',r2:3:3);

    
end.