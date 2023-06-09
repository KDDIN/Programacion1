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

    indice := 1;
    {Valida para el indice + 1 y compara que el indice y el siguiente sean consecuentes}
    while (indice +1 <= N) and (cadn[indice] = cadn[indice+1] -1 ) do
        indice := indice + 1;

    ordenado := indice +1 > N;

end;

{inicio del programa}
begin

    for r := 1 to N do {llenamos el array con numeros del 1 al 5}
    begin
        fila[r] := r;
    end;

    {fila[3] := 5:}
    if ordenado(fila) then
        Writeln('Esta ordenado')
    else
        Writeln('No esta ordenado');

end.