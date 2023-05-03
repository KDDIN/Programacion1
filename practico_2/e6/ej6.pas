Program ej6;

var
    horaentrada, hora1, hora2, minuto1, minuto2, 
    dia, horasalida, minutosalida: Integer;
    
begin
    
    write ('Escriba una hora (los 2 primeros digitos deben de ser menores a 24, y los siguientes menores a 60): ');
    ReadLn (horaentrada);

    hora1 := (horaentrada div 100);
    minuto1 := (horaentrada mod 100) mod 60;
    

    write ('Escriba otra hora (los 2 primeros digitos deben de ser menores a 24, y los siguientes menores a 60): ');
    ReadLn (horaentrada);

    hora2 := (horaentrada div 100) mod 24;
    minuto2 := (horaentrada mod 100) mod 60;
    
    dia := 0;
    horasalida := hora1 + hora2;
    minutosalida := minuto1 + minuto2;

    

    write('Las horas ingresadas fueron: ',hora1,':',minuto1,' Y ',hora2,':',minuto2,
        ' y la suma de esas horas es: ',dia,' ',horasalida,':',minutosalida,' ')

end.


    {No se pueden usar IF :(}
    {if minutosalida >= 60 then
        begin
            horasalida := horasalida + 1;
            minutosalida := minutosalida -60;
        end;
    
    if horasalida >= 24 then
    begin
        horasalida := horasalida - 24;
        dia := dia + 1
    end;}

    {write('Las horas ingresadas fueron: ',hora1,':',minuto1,' Y',hora2,':',minuto2);}