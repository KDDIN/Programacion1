Program P9E4;

const 
    filas = 3; 
    columnas = 3;

type 
    TipoMatriz = array [1..filas, 1..columnas] of integer;

var
    Tabla:TipoMatriz;
   { m,n:Integer;}

{METODOS}

{Metodo de para cargar valores de una matriz desde la entrada}
procedure CargarMatrizEntrada (var matriz:TipoMatriz);
var
    i,j:integer;
begin

    for i := 1 to filas do
        for j := 1 to columnas do
            Read(matriz[i,j]);

end;

{Metodo para transponer una matriz}
procedure TransponerMatriz (var matriz:TipoMatriz);
var i,j:integer;
begin

    for i := 1 to filas do
        for j := 1 to columnas do
            matriz[i,j] := matriz[j,i];
        
end;

{Mostrar la matriz}
procedure MostrarMatriz (matriz:TipoMatriz);
var i,j : integer;
begin
    for i := 1 to filas do
    begin
        Writeln;
        for j := 1 to columnas do
        begin
            write('[',matriz[i,j],']');
            write(i,' ',j);
        end;
        
    end;
end;


{Inicio del codigo principal}
begin

CargarMatrizEntrada(Tabla);
MostrarMatriz(Tabla);
Writeln;
TransponerMatriz(Tabla);
MostrarMatriz(Tabla);
Writeln;
end.