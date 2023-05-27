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

    {grupo[1].nombre := 'juanita'; 
    writeln(grupo[1].nombre);} {No funciona}

    {read (grupo[1].estado);} {valido}

    with grupo[100] do
    begin
        read (edad);
    end;


end.