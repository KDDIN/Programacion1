Program Practico6_ejercicio2b;

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
        if (antecesor = ' ') and (palabra = letra) then
            contador := contador + 1;
        antecesor := palabra;

    until palabra = '.';

    Writeln('La oracion tiene ',contador,' palabtra/s que empiezan con ',letra)


end.