Program Pracico6_ejercicio2c;

var
    letra,palabra: char;
    contador,numero: integer;

begin

    Write('Ingrese un a letra: ');
    readln(letra);
    write('Ingrese una oracion: ');
    contador := 0;
    numero := 0;

    repeat
        read(palabra);
        if (palabra = ' ') or (palabra = '.') and (numero = 1) then
            begin
            contador := contador + 1;
            numero := 0;
            end;

    until palabra = '.';

    Writeln('La oracion tiene ',contador,' palabtra/s que contienen una sola vez ',letra)


end.

end.