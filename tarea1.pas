program tarea1;

//const ...;

var oracion,vocal1: char;

function esVocal(c: char): boolean;

begin

    if (c = 'a') or (c = 'e') or (c = 'i')
    or (c = 'o') or (c = 'u') then
        esVocal := true
    else
        esVocal := false;
 
end;



begin

    Writeln('Ingrese una oracion:');
    read(oracion);
    vocal1 := ' ';

    repeat
        
        if esVocal(oracion) and oracion <> 'u' then
            write (oracion,'p',oracion)
        else if oracion = 'u' then
            if (esVocal(vocal1)) and (vocal1 = 'e') or (vocal1 = 'i') then
                write('u',vocal1,'p',vocal1);
        else 
            write (oracion);
        
        vocal1 := oracion;
        read(oracion);


    until oracion = '.';

    Writeln


end.