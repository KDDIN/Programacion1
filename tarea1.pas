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
        
        if (esVocal(vocal1)) then
        begin
            
            if (vocal1 = 'u') and (oracion = 'e') or (oracion = 'i') then
                write(oracion,'p')
            else
                write('p',vocal1);
        end
        else
            write(oracion);



        vocal1 := oracion;
       // write (oracion);
        read (oracion)

    until oracion = '.';

    Writeln


end.