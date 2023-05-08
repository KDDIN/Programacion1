Program Practico9_ejercicio2a;

const N = 5;

type CadenaN = array [1..N] of integer;

var
    numero,cant,r: integer;
    fila: CadenaN;
 
{Escriba la funcion llamada cantMayores que, dados un arreglo de enteros y un entero num, 
devuelve la cantidad de valores almacenados en el arreglo que son mayores que num.}
function cantMayores(cadn:CadenaN; num:integer) : integer;

var i,cantidad : integer;

begin

    cantidad := 0;

    for i := 1 to N do
    begin
        if cadn[i] > num then
            cantidad := cantidad + 1;
    end;
        cantMayores := cantidad;
end;

{inicio del programa}

begin

    for r := 1 to N do
    begin
        fila[r] := r;
    end;

    write('Ingrese 1 numero: ');
    readln(numero);
    cant := cantMayores(fila,numero);
    writeln('La cantidad de numeros en el arreglo mayor al ingresado son: ',cant);

end.