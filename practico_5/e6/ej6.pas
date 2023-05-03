program Practico5_ejercicio6;

var palabra, l1, l2: char;

begin

    Write('Ingrese un texto: ');
    l1 := ' ';
    l2 := ' ';

    repeat

        read(palabra);

        l1 := palabra;

        if l2 = l1 then
            write(l1,l2,' ');
        
        l2 := l1;

    until palabra = '&';

    writeln('Son las consonantes y vocales repetidas')
    
end.