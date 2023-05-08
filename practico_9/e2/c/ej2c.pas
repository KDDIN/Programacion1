Program Practico9_ejercicio2c;

const N = 5;

type CadenaN = array [1..N] of integer;

var
    r,v,p: integer;
    fila: CadenaN;

{indice := N;
for i := N-1 downto 1 do
    if arreglo[i] <= arreglo[indice] then
        indice := i
}
{Inicio del procedimiento}
procedure maxValorPos(cadn:CadenaN; VAR valor, pos:integer);

var i : integer;

begin

    valor := cadn[N];
    pos := N;

    for i := N-1 downto 1 do
        if cadn[i] >= cadn[pos] then
        begin
            pos := i;
            valor := cadn[i];
        end;

end;

{Inicio del programa}
begin

    for r := N downto 1 do {llenamos el array con numeros del 1 al 5}
    begin
        fila[r] := r;
    end;

    maxValorPos(fila,v,p);

    Writeln('El mayor valor del array esta en la posicion ',p,' y su valor es ',v);

end.