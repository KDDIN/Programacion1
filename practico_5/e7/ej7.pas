program Practico5_ejercicio7;

var 
    n,divisor: integer;
    p: boolean;

begin

    Write('Ingrese un numero: ');
    read(n);
    p := false;
    divisor := 2;

    if n = 1 then
        Writeln('No es primo')
    else if n = 2 then
        writeln('Es primo')
    else
    begin
       
        while p = false do
                 begin

            if n mod divisor = 0 then
            begin
                Writeln('NO es primo');
                p := true;
            end else if divisor <> n then
                begin
                    Writeln('Es primo');
                    P := true
                end;
                
            divisor := divisor + 1;
        end;

    end;
    
end.