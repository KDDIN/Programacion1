{Funcion para saber si un caracter es vocal}
function esVocal (c: TLetras): boolean;
begin

    esVocal := (c = 'A') or (c = 'E') or (c = 'I')
            or (c = 'O') or (c = 'U');

end;

{Procedimiento para poner una palabra en jeringoso}
{Se asume que la palabra traducida es es <= a MaxPalabra}
procedure traducir (palabra: Tpalabra; var traducida: TPalabra);
var 
    i : 1..MaxPalabra;
    aumento,siguiente : 0..maxint; {sirve para posicionar bien el las letras en el array de traducida}
begin
    traducida.tope := 0; {por si acaso}
    aumento := 0; {para que no de error}
	siguiente := 0; {esta var sirve para que no tome las letras "ue" o "ui" despues de los casos que o qui}
	
    for i := 1 to palabra.tope do {no hace falta operar mas alla que el tope}
    begin
		
        if esVocal(palabra.palabra[i]) then {si es vocal}
        	if siguiente <> 0 then {si es dif a 0, entonces es porque esta en un "u" y "e" o "i" redundante}
        		siguiente := siguiente - 1
        	else
        	begin
            	traducida.palabra[i+aumento] := palabra.palabra[i];
            	traducida.palabra[i+aumento+1] := 'P';
            	traducida.palabra[i+aumento+2] := palabra.palabra[i];
            	aumento := aumento + 2;
            	traducida.tope := traducida.tope + 3;
			end {else}
        else if (palabra.palabra[i] = 'Q') and (i+2 <= palabra.tope) and (palabra.palabra[i+1] = 'U')
        and (palabra.palabra[i+2] = 'I') or (palabra.palabra[i+2] = 'E') then {si es qui o que}
        begin
            traducida.palabra[i+aumento] := palabra.palabra[i];
            traducida.palabra[i+aumento+1] := palabra.palabra [i+1];
            traducida.palabra[i+aumento+2] := palabra.palabra [i+2];
            traducida.palabra[i+aumento+3] := 'P';
            traducida.palabra[i+aumento+4] := palabra.palabra [i+2];
            aumento := aumento + 2;
            traducida.tope := traducida.tope + 5;
            siguiente := 2;

        end {else if}
        else {si solo es consonante}
        begin
            traducida.palabra[i+aumento] := palabra.palabra[i];
            traducida.tope := traducida.tope + 1;

        end; {else}

    end;{for}

end; {funcion}

    
{funcion para ver si una palabra se encuentra en un posicion y retornar su orientacion}
function buscarEnPos (sopa: TSopa; pos: TPos; palabra: TPalabra) : Orientacion; {0 = vertical, 1 = horizontal, 2 = ninguna}
var siguiente: integer;
    direccion: Orientacion; {Variable que se usara para evitar errores}
begin

    direccion := Orientacion (2); {Comienzo asumiendo de que no es ninguna, y en caso de si serlo, se va a sobreescribir}

    {primera letra}
    if sopa[pos.f,pos.c] = palabra.palabra[1] then {valido que la primera letra concuerde}
    begin {f = vertical, c = horizontal}
    	
        siguiente := 2; {inicializamos en 2 para que no de error}

        {busqueda vertical (f)}
        if ((pos.f+1) <= palabra.tope) and (sopa[pos.f + 1,pos.c] = palabra.palabra[2]) then
        begin 
		    while ((pos.f+siguiente) <= palabra.tope) and (sopa[pos.f + siguiente,pos.c] = palabra.palabra[1 + siguiente]) do
            	siguiente := siguiente + 1;
    
		    if sopa[pos.f + siguiente -1,pos.c] = palabra.palabra[1 + siguiente -1] then
            	direccion := Orientacion (0); {retorna vertical} 
        end {if}
    
	    siguiente := 2; {Hacemos que su valor sea 2 otra vez para que no nos de problemas} 

        {busqueda horizontal (c)}
        if ((pos.c+1) <= palabra.tope) and (sopa[pos.f,pos.c + 1] = palabra.palabra[2]) then
        begin
            while ((pos.c+siguiente) <= palabra.tope) and (sopa[pos.f,pos.c + siguiente] = palabra.palabra[1 + siguiente]) do       
            	siguiente := siguiente + 1;

            if sopa[pos.f,pos.c + siguiente -1] = palabra.palabra[1 + siguiente -1] then        	
            	direccion := Orientacion (1); {retorna horizontal}
        end; {if}
	
    end; {if}
    
    buscarEnPos := direccion;

end;{funcion}
    
function resolver (sopa: TSopa; palabras: TListaPalabras) : TListaSolucion;
begin
	Write('Hola mundo');
end;
    