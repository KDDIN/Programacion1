Program Practico9_ejercicio2b;

const N = 5;

type CadenaN = array [1..N] of integer;

var
    r: integer;
    fila: CadenaN;
{inicio de la funcion}
function ordenado(cadn:CadenaN) : boolean;

var indice: integer;

begin

    indice := 2;

    while (indice -1 <= N) and (cadn[indice-1] = cadn[indice] -1) do
        indice := indice + 1;

    ordenado := indice -1 > N;

end;

{inicio del programa}
begin

    for r := 1 to N do {llenamos el array con numeros del 1 al 5}
    begin
        fila[r] := r;
    end;

    if ordenado(fila) then
        Writeln('Esta ordenado');
    else
        Writeln('No esta ordenado');

end.