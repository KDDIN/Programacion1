program tarea1;

var oracion,vocal1,lacu: char;

function esVocal(c: char): boolean;

begin//xD

    if (c = 'a') or (c = 'e') or (c = 'i')
    or (c = 'o') or (c = 'u') then
        esVocal := true
    else
        esVocal := false;
 
end;

begin

    read(oracion);
    vocal1 := ' ';
    lacu := ' ';

    repeat

        if (lacu <> 'q') and (vocal1 = 'u') and (oracion <> 'e') and (oracion <> 'i') then
            write('p',vocal1);

        write (oracion);

        if (esVocal(oracion)) and (oracion <> 'u') then
            write ('p',oracion)

        else if (lacu = 'q') and (vocal1 = 'u') and (oracion = 'e') or (oracion = 'i') then
            write('p',oracion);

        lacu := vocal1;
        vocal1 := oracion;
        read(oracion);



    until oracion = '.';

    
            // s q u e l

end.