program Practico6_ejercicio2a;

var 
    letra,palabra,antecesor: char;
    contador : integer;

begin

    Write('Ingrese un a letra: ');
    readln(letra);
    write('Ingrese una oracion: ');
    contador := 0;
    antecesor := ' ';

    repeat
        read(palabra);
        if (palabra = ' ') and (antecesor = letra) then
            contador := contador + 1;
        antecesor := palabra;

    until palabra = '.';

    Writeln('La oracion tiene ',contador,' palabtra/s que terminan con ',letra)


end.