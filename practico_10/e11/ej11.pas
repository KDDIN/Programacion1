program P10Ej11;

type
    Complejo = 
    record
        re, im : Real;
    end;

var
    comp1,comp2,comp3 : Complejo;

{procedimiento de suma}
procedure SumaComplejos (c1,c2:Complejo; var c3:Complejo);
begin

    c3.re := c1.re + c2.re;
    c3.im := c1.im + c2.im;

end;

{procedimiento de multiplcacion}
Procedure multCompejos (c1,c2 : Complejo; var c3 : Complejo);
begin

    c3.re := c1.re * c2.re - c1.im * c2.im;
    c3.im := c1.im * c2.re + c2.im * c1.re;

end;


{Programa principal}
begin

    Write ('Ingrese el primer numero complejo (separado por espacios): ');
    Readln (comp1.re,comp1.im);
    Write ('Ingrese el segundo numero complejo (separado por espacios): ');
    Readln (comp2.re,comp2.im);

    SumaComplejos(comp1,comp2,comp3);
    WriteLn('La suma: ',comp3.re:3:2,' ',comp3.im:3:2);

    multCompejos(comp1,comp2,comp3);
    WriteLn('La multiplicación: ',comp3.re:3:2,' ',comp3.im:3:2);

end.