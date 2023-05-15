program P9E6;

const N = 3;

type
    MatrizCuadrada = array [1..N,1..N] of integer;

{Metodo 1}
procedure transpuestaMatrizAB(a:Matriz; VAR b:MatrizCuadrada);
var i,j:integer;
begin

    for i := 1 to N do
        for j := 1 to N do
            b[i,j] := a[j,i];

end;

{Metodo 2}
procedure transpuestaMatrizA(VAR matriz:MatrizCuadrada);
var i,j,reserva:integer;
begin

    for i := 1 to (N - 1) do
        for j := (1 + i) to N do
        begin

            reserva := matriz [i,j];
            matriz[i,j] := matriz[j,i];
            matriz[j,i] := reserva;

        end;
        
end;
