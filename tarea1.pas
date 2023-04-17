program tarea1;

var letra1,letra2,letra3: char;

function esVocal(c: char): boolean;

begin {comienzo de la funcion}

    if (c = 'a') or (c = 'e') or (c = 'i')
    or (c = 'o') or (c = 'u') then {Compara si el caracter es una vocal}
        esVocal := true {retorna true si lo es}
    else
        esVocal := false; {retorna false si no}
 
end;

begin {comienzo del programa}

    read(letra1); 
    letra2 := ' ';
    letra3 := ' ';
    {inicializo letra2 y letra3 para que no me de error}

    repeat

        if (letra3 <> 'q') and (letra2 = 'u') then {si la tercera letra no es q y la segunda es u}
            write('p',letra2); {aniado una p e ingreso la letra2}

        write (letra1); {se muestra en pantalla la letra uno}

        if (esVocal(letra1)) and (letra1 <> 'u') and (letra2 <> 'q') then {valido si letra1 es vocal, si es dif de u y si letra2 es dif de q}
            write ('p',letra1) {ingreso p y despues la letra 1}
        

        else if (letra3 = 'q') and (letra2 = 'u') and (letra1 = 'e') or (letra1 = 'i') then
            write('p',letra1); {verifico si letra3 es q, si letra2 es u y si letra1 es 'e' o 'i'}

        letra3 := letra2;
        letra2 := letra1;
        read(letra1); {le doy el valor de letra2 a letra3, el de letra1 a letra2 y pido que se ingresen mas letras}

    until letra1 = '.'; {'.' es el centinela para terminar la iteracion}

end.