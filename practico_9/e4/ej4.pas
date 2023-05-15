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
procedure IntercambiarFilasMyN (var matriz:TipoMatriz; m,n:Integer);
var i,reserva:integer;
begin

    for i := 1 to m do
    begin

        reserva := matriz[m,i];
        matriz[m,i] := matriz[n,i];
        matriz[n,i] ;= reserva;

    end;

end;

{Metodo para transponer una posicion m,n cualesquiera de una matriz}
procedure CargaryTransponer (var matriz:TipoMatriz);
var m,n,reserva:integer;
begin

    CargarMatrizEntrada(matriz);
    Write('Ingrese m y n: ');
    Read(m,n);

    if (m < 1) or (m > filas) or (n < 1) or (n > columnas) then
        Writeln('El valor ingresado es incorrecto')
    else
    begin
        IntercambiarFilasMyN(matriz,m,n)
    end;

end;

{Mostrar la matriz}
procedure MostrarMatriz (matriz:TipoMatriz);
var i,j : integer;
begin

    for i := 1 to filas do
    begin
        Writeln;
        for j := 1 to columnas do
            write(matriz[i,j]);
        
    end;
end;

{Inicio del codigo principal}
begin

    CargaryTransponer(Tabla);
    MostrarMatriz(Tabla);
    Writeln;

end.