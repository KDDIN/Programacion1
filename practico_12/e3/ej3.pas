program P12Ej3;

type
    Positivo = 1..MaxInt;
    
    ListaInt = ^TCelda;

    TCelda = record
        info : integer;
        sig : ListaInt
    end;

    PosibleElem = record case ok : boolean of
        true : (elem : integer);
        false : ()
    end;

{IMPORTANTE: ^}

{funcion que suma todo los elementos de la lista, si esta vacia retorna 0}
function suma(l : ListaInt) : integer;
var
    resultado: integer;
begin
    resultado := 0; {variable usada para ahorrar problemas}

    while l <> nil do {mientras la lista no sea vacia}
    begin
        resultado := resultado + l^.info; {suma el numero}
        l := l^.sig; {va al siguiente}
    end;

    suma := resultado;
end;

{funcion que retorna el numero mas pequeño de la lista, se asume que la lista no es vacia}
function minimo(l : ListaInt) : integer;
var
    numero : integer;
begin
    numero := l^.info; {inicializo en el primer numero}

    while l^.sig <> nil do {importante que se compare l^.sig y no l}
    begin
        l := l^.sig;
        if l^.info < numero then
            numero := l^.info;
    end; 
    {la busqueda se detiene cuando l^.sig = nil porque si es nil, significa que no hay mas elem que comparar}
    minimo := numero;
end;

{funcion que multiplica todos los elementos de la lista (algunos elem pueden ser 0)}
function producto(l : ListaInt) : integer;
var
    resultado : integer;
begin
    resultado := 0;

    while l <> nil do
        if l^.info = 0 then {si un numero es 0 entonces TODA la multiplicacion va a dar 0, se corta}
        begin
            resultado := 0;
            l := nil
        end else
        begin
            resultado := resultado * l^.info;
            l := l^.sig
        end;
    
    producto := resultado;
end;

{Funcion que retorne la cantidad de numeros pares de una lista}
function cuantosPares(l : ListaInt) : integer;
var
    cantidad : integer;
begin
    cantidad := 0;

    while l <> nil do
    begin
        if l^.info mod 2 = 0 then
            cantidad := cantidad + 1;
        l := l^.sig; 
    end;

    cuantosPares := cantidad;
end;

{Funcion que retorna la primera posicion de un valor en la lista}
function posicion(valor : integer; l : ListaInt) : integer;
var
    cantidad : integer;
begin
    cantidad := 1; {comienza en uno porque si lo encuentra no va a aumentar la cantidad, y sino lo encuentra va a ser -1}

    while (l <> nil) and (valor <> l^.info) do
    begin
        cantidad := cantidad + 1:
        l := l^.sig;
    end; 

    if l = nil then
        cantidad := -1;
    posicion := cantidad;
end;

{Procedimiento que me busca una posicion y me devuelve el elemento de esa posicion}
procedure elemEnPos(pos : Positivo; l : ListaInt; var resultado : PosibleElem);
var
    cantidad : integer;
begin
    cantidad := 1; {misma logica que la funcion anterior}

    while (l <> nil) and (pos <> cantidad) do
        l := l^.sig;

    if l = nil then
        resultado.ok = false {la posicion no esta, entonces no retorna nada}
    else
    begin
        resultado.ok = true;
        resultado.elem := l^.info; {si la posicion esta, retorna el elemento}
    end;
end;

{Funcion que retorna el ultimo elemento de una lista}
function ultimo(l : ListaInt) : integer;
var
    num : integer;
begin
    num := l^.info; {toma el primer elemento de la lista}

    while l^.sig <> nil do {situa l al ultimo elemento de la lista antes del nil}
        l := l^.sig;

    num := l^.info; {toma el ultimo elemento de la lista antes del nil}

    ultimo := num;
end;

{Funcion que determina si la lista esta ordenada de mayor a menor}
function ordenada(l : ListaInt) : boolean;
var
    num : integer;
begin
    
    if l <> nil then {verificamos que la lista no sea vacia y agarramos el primer elemento (en caso de tenerlo)}
    begin
        num := l^.info;
        l := l^.sig;
    end;

    while (l <> nil) and (num < l^.info) do
    begin
        num := l^.info;
        l := l^.sig;
    end;

    ordenada := l = nil; {l es nil entonces la lista esta ordenada de menor a mayor}
end;