Program P9E7;

const
    M = 3; {valor mayor estricto a 1}
    N = 3; {valor mayor estricto a 1}
    P = 2; {valor mayor estricto a 1}
type
    RangoM = 1..M;
    RangoN = 1..N;
    RangoP = 1..P;
    MatrizMN = array [RangoM, RangoN] of integer;
    MatrizNP = array [RangoN, RangoP] of integer;
    MatrizMP = array [RangoM, RangoP] of integer;


{Inicializar matriz con 0}
procedure InicializarMatriz(var Matriz:MatrizMP);
var i,j:integer;
begin

    for i := 1 to M do
        for j := 1 to P do
            Matriz[i,j] := 0;

end;

{Metodo}
procedure productoMatrices(a:MatrizMN; b:MatrizNP; VAR c:MatrizMP);
var i,j,k:integer;
begin
    InicializarMatriz(c);
    for i := 1 to M do
        for j := 1 to P do
            for k := 1 to N do
                c[i,j] := c[i,j] + (a[i,k] * b[k,j]);

end;

begin
    write('hola mundo');
end.

