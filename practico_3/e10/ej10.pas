program practico3_ejercicio10;

const precio = 77; aumento = 56;

var 
    paquete: real;
    n1, resultado: integer;

begin
    resultado := 0;
    write('Indique el peso del paquete: ');
    read(paquete);

    if paquete > 1 then
    begin
    
        n1 := Trunc(paquete);
    
        if n1 = paquete then
            resultado := aumento * (n1 - 1)
        else
            resultado := aumento * n1
    
    end;

    writeln('El peso del paquete es ',paquete:3:2,'kg',' y su precio es de $',precio + resultado);

end.