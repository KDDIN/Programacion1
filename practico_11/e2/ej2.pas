program P11Ej2;

const
    MAXPERSONAS = 1000; {valor entero mayor estricto a 0}
    MAXCAD = 1000; {valor entero mayor estricto a 0}
type
    Cadena = record
        letras : array [1..MAXCAD] of char;
        largo : 0..MAXCAD;
    end;

    Fecha = record
        dia : 1..31;
        mes : 1..12;
        anio : 0..maxint;
    end;

    Persona = record
        nombre : Cadena;
        fechNac : Fecha;
        indMadre, indPadre : 0..MAXPERSONAS;
    end;

    Familia = record
        pers : array[1..MAXPERSONAS] of Persona;
        tope : 0..MAXPERSONAS;
    end;



{Funcion para saber si dos cadenas son iguales}
function cadenasIguales (cad1, cad2 : Cadena): Boolean;
var i: 1..MAXCAD;
begin

    if cad1.largo = cad2.largo then
    begin

        for i := 1 to cad1.largo do {tambien puede ser cad2.largo, es lo mismo (o deberia de)}
            if cad1.letras[i] <> cad2.letras[i] then
                cadenasIguales := False;
        cadenasIguales := True; {se puede suponer que si en todo el for no dio false, es true}

    end
    else
        cadenasIguales := false;

end;


{Procedimiento para mostrar una cadena}
procedure desplegarCadena (cad: Cadena);
var i : 1..MAXCAD;
begin

    if cad.largo > 0 then
        for i := 1 to cad.largo do
            write(cad.letras[i]);
    else
        write('Esta vacio');

end;

{Procedimiento para mostrar los antepasados de alguien}
procedure antepasados (usted : Cadena; historia : Familia);
