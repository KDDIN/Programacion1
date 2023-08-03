Program P11Ej3;

const
    MAX = 10; {valor mayor estricto a 0}
type
    Cadena = record
        letras : array [1..MAX] of char;
        largo : 0..MAX;
    end;

{Escriba un procedimiento para ingresar datos en una cadena}
procedure cargarCadena (var Palabra : Cadena);
var {supongo que Palabra se pasa por referencia porque se quiere guardar la palabra ingresada}
    caracter : char;
    i : integer;
begin

    i := 1; {uso esta var para interar en el array}

    read(caracter); {inicializo letras}
    while (i <= max) and (caracter <> '.') then
    begin
        Palabra.letras[i] := caracter;
        i := i + 1;
        read(caracter); {ingreso caracter, aumento indice y pido otro caracter}
    end;

end;

{funcion para mostrar la cantidad de veces repetida una letra}
function contarOcurrencias(frase: Cadena; letra: char): integer;
var
    contar,i : 0..MAX; 
begin
    contar := 0; {variable creada para evitar errores}
    
    if frase.largo > 0 then {aseguro de que haya letras en el array}
    begin

        for i := 1 to frase.largo do
            if frase.letras[i] = letra then
                contar := contar + 1;
    end;

    contarOcurrencias := contar;

end;


{funcion para saber si en una frase hay o no una vocal}

{1.funcion para saber si una letra es vocal}
function esVocal(l:char):Boolean;
begin
    esVocal := (l = 'A') or (l = 'E') or (l = 'I')
            or (l = 'O') or (l = 'U') or (l = 'a')
            or (l = 'e') or (l = 'i') or (l = 'o')
            or (l = 'u');
end;

{funcion principal}
function existeVocal(Palabra): Boolean;
var
    i : integer;
    vocal : Boolean;
begin
    
    vocal := false;
    i := 1;

    if Palabra.largo > 0 then
        while (i <= max) and (not esVocal(Palabra.letras[i])) do
            i := i + 1;
    
    vocal := i > max; {si i > max entonces no encontro vocal, sino es que si encontro}
    existeVocal := vocal;

end;