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
        write (oracion)
        
        if (esVocal(oracion)) and (oracion <> 'u') then
            write ('p',oracion)
        else if (vocal1 = 'u') and (vocal1 = 'e') or (vocal1 = 'i') then
            write('u',oracion,'p',oracion)
        
        
        vocal1 := oracion;
        read(oracion);


    until oracion = '.';

    Writeln


end.