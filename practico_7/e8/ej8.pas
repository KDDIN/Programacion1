program practico7_ejercicio8;

var n:integer;

{Inicio de la funcion}
function esPrimo (primo:integer) : boolean;

var divisor: Integer;

begin

    divisor := 2;

    if (primo mod 2 <> 0) and (primo = 2) then
    begin

        repeat
            divisor := divisor +1;
        until (primo mod divisor = 0) or (primo = divisor);

        esPrimo := (not (primo mod divisor = 0) or (primo = divisor));

    end
    else
        esPrimo := false;

end;

{Inicio del programa}
begin

    Write('Ingrese un numero: ');
    Readln(n);
    if (esPrimo(n)) or (n = 2) then
        writeln(n,' Es primo')
    else
        writeln(n,' No es primo');

end.