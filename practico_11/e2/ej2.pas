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
        while (i <= cad1.largo) and (cad1.letras[i] = cad2.letras[i]) do {tambien puede ser cad2.largo, es lo mismo (o deberia de)}
            i := i + 1;

        cadenasIguales := i > cad1.largo;
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
var i : integer;
begin
    i := 1; {Inicializo en 1 para iterar en el array}

    while (i <= historia.tope) and (not cadenasIguales(usted,historia.pers[i].nombre)) do
        i := i + 1;

    if (i <= historia.tope) then {Si encuentra a la persona}
    begin

        {Madre}
        if (historia.pers[i].indMadre > 0 then) {si se encuentra a la madre en un indice entonces}
            desplegarCadena (historia.pers[historia.pers[i].indMadre].nombre);
        
        {Padre}
        if (historia.pers[i].indPadre > 0 then)
            desplegarCadena (historia.pers[historia.pers[i].indPadre].nombre);

        {(historia.pers[]) es un array de registros, (historia.pers[i].indx) es un numero de 0 a maxpersonas
         y (historia.pers[historia.pers[i].indx].nombre) es de tipo cadena}
        

    end;
end;