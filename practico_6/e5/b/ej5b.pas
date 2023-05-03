Program Practico6_ejercicio5b;

var k,cuadrado,i,antecesor: integer;

begin

    Write('Ingrese k: ');
    Read(k);
    cuadrado := 1;

    for i := 1 to round(k div 2)+1 do
    begin
        antecesor := cuadrado;
        cuadrado := i * i;
        write(cuadrado,' ')
    end;
    writeln;
end.