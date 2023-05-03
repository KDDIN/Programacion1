program practico3_ejercicio9;

var 
    entero,millares,centenas: integer;

begin
    
    write ('Escriba un numero de hasta 4 cifras: ');
    read(entero);

    if (entero div 1000 >= 1) AND (entero div 1000 <= 9 ) then
    begin
        
        millares := entero div 1000;
        centenas := entero - (1000 * (entero div 1000));

        if centenas = 0 then
            writeln (millares,'.','000')
        else
            writeln (millares,'.',centenas)
    
    end

    else writeln (entero)    

 
    

end.