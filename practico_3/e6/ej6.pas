program practico3_ejercicio6;

var x, y, z: Integer;

begin
    
    x := 10;
    y := 11;
    z := 12;

    if (x > y) or (z > y) THEN
        if x > z then
            if y > z then
                writeln ('Termine')
            else
                writeln ('No termino aun.')
        else
            writeln ('Nunca llega aqui.')

end.

{dado el sig programa}
{program Pr3Ej6;
var x, y, z : Integer;
begin
x := 10;
y := 11;
z := 12;
if (x > y) or (z > y) then
if x > z then
if y > z then
writeln ('Termine.')
else writeln ('No termino aun.')
else writeln ('Nunca llega aqui.')
end.}
{reescribir el programa con una identación adecuada}
