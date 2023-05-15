Program P9E4;

const 
    filas = 5; 
    columnas = 5;

type 
    TipoMatriz = array [1..filas, 1..columnas] of integer;

var
    Tabla:TipoMatriz;

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
var i,j,reserva:integer;
begin

    for i := 1 to (filas - 1) do
        for j := (1 + i) to columnas do
        begin
            reserva := matriz [i,j];
            matriz[i,j] := matriz[j,i];
            matriz[j,i] := reserva;

        end;
        
end;

{Metodo para transponer una posicion m,n cualesquiera de una matriz}
procedure TransponerMatrizPorMyN (var matriz:TipoMatriz);
var m,n:integer;
begin

    Write('Ingrese m y n: ');
    Readln(m,n);
    if (m < 1) or (m > filas) or (n < 1) or (n > columnas) then
        Writeln('El valor ingresado es incorrecto')
    else
        matriz[m,n] := matriz[n,m];

end;

{Mostrar la matriz}
procedure MostrarMatriz (matriz:TipoMatriz);
var i,j : integer;
begin
    for i := 1 to filas do
    begin
        Writeln;
        for j := 1 to columnas do
            write('[',matriz[i,j],']');
        
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
TransponerMatrizPorMyN(Tabla);
MostrarMatriz(Tabla);
Writeln;
end.