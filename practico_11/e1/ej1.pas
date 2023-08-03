program P11Ej1;

const
    CANT_PERS = 100 ;{valor entero mayor estricto a 0}
    MAX_CADENA = 100 ;{valor entero mayor estricto a 0}

type
    Cadena = record
        letras : array [1..MAX_CADENA] of char;
        largo : 0..MAX_CADENA;
    end;

Persona = record
    nombre : Cadena;
    edad : 0..120;
    estado : (casado, soltero, divorciado);
    salario : Real;
    exenciones : 0..maxint;
end;

var
    juanita : Persona;
    grupo : array [1..CANT_PERS] of Persona;


begin

    {I}
    grupo[1] := juanita; {valido}

    {II}
    grupo[1].nombre := 'juanita'; {invalido}

    {III}
    read (grupo[1].estado); {valido}

    {IV}
    with grupo do writeln (nombre) {invalido (teoricamente)}

    {V}
    with grupo[100] do
    begin
        read (edad);
    end; {valido}

    {VI}
    with juanita do
    begin
        nombre := grupo[50].nombre;
        salario := grupo[1].salario;
    end; {Valido (teoricamente)}


end.