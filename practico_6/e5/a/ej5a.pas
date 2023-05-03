program Practico6_ejercicio5;

var k,cuadrado,subir,antecesor,verificador: integer;

begin

    Write('Ingrese k: ');
    read(k);
    subir := 1;
    cuadrado := 1;
    verificador := 0;

    repeat

        antecesor := cuadrado;
        cuadrado := subir * subir;
        subir := subir + 1;
        Write(cuadrado,' ');

        if (cuadrado - antecesor) > k then
            verificador := 1;

    until verificador = 1;

    writeln;
end.