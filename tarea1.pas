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
        
        if (esVocal(oracion)) then
        begin
            if (vocal1 = 'u') and (oracion = 'e') or (oracion = 'i') then
                write('p',oracion)
            else
                write('p',oracion);
        end;
        vocal1 := oracion;
        write (oracion);
        read (oracion)

    until oracion = '.';

    Writeln


end.