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

var 
    tabla1 : MatrizMN;
    tabla2 : MatrizNP;
    tabla3 : matrizMP;

{Metodo de para cargar valores de una matriz desde la entrada}
procedure CargarMatrizEntradaMN (var matriz:MatrizMN);
var
    i,j:integer;
begin
    Write('Ingrese los datos de una matriz 3 x 3: ');
    for i := 1 to M do
        for j := 1 to N do
            Read(matriz[i,j]);

end;

{Metodo de para cargar valores de una matriz desde la entrada}
procedure CargarMatrizEntradaNP (var matriz:MatrizNP);
var
    i,j:integer;
begin
    Write('Ingrese los datos de una matriz 3 x 2: ');
    for i := 1 to M do
        for j := 1 to N do
            Read(matriz[i,j]);

end;

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

{Mostrar matrices}
procedure MostrarMatriz (matriz:MatrizMP);
var i,j : integer;
begin

    for i := 1 to M do
    begin
        Writeln;
        for j := 1 to N do
            write(matriz[i,j]);
        
    end;
end;

procedure MostrarMatriz (matriz:MatrizMN);
var i,j : integer;
begin

    for i := 1 to M do
    begin
        Writeln;
        for j := 1 to N do
            write(matriz[i,j]);
        
    end;
end;

procedure MostrarMatriz (matriz:MatrizNP);
var i,j : integer;
begin

    for i := 1 to M do
    begin
        Writeln;
        for j := 1 to N do
            write(matriz[i,j]);
        
    end;
end;

{Programa principal}
begin

CargarMatrizEntradaMN(tabla1);
MostrarMatriz(tabla1);
Writeln;
CargarMatrizEntradaNP(tabla2);
MostrarMatriz(tabla2);
Writeln;
productoMatrices(tabla3);
MostrarMatriz(tabla3);
Writeln;

end.