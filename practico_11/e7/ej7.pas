program P11Ej7;

const
    MAXPIRATAS = 30; {valor entero mayor estricto a 0}
    MAXASALTOS = 10; {valor entero mayor estricto a 0}
    MAXDIGITOSCI = 9; {valor entero mayor estricto a 0}
    MAXCADENA = 17; {valor entero mayor estricto a 0}
type
    TipoCadena = record
            letras: array [1..MAXCADENA] of char;
            tope: 0 .. MAXCADENA
        end;

        TipoCI = array [1..MAXDIGITOSCI] of '0'..'9';

    TipoFecha = record
            dia: 1..31;
            mes: 1..12;
            anio: 0..maxint;
        end;

    TipoAsalto = record
            nombre_barco: TipoCadena;
            fecha: TipoFecha;
            botin: integer;
        end;

    ConjuntoAsaltos = record
            asaltos: array [1..MAXASALTOS] of TipoAsalto;
            tope: 0..MAXASALTOS
        end;

        TipoCausaMuerte = (asesinato, enfermedad, accidente);

    TipoPirata = record
        nombre: TipoCadena;
        ci: TipoCI;
        case estaVivo: boolean of
            true: (asaltos: ConjuntoAsaltos);
            false: (causaMuerte: TipoCausaMuerte; fechaMuerte: TipoFecha)
        end;

    Banda = record
            pirata: array [1..MAXPIRATAS] of TipoPirata;
            tope: 0..MAXPIRATAS
        end;

{Retorna true si ci1 y ci2 son iguales y false en caso contrario}
function ciIguales (ci1, ci2: TipoCI): boolean;
var 
    i..MAXDIGITOSCI;
begin {supongo que todas las cedulas tienen la misma cantidad de caracteres}
    i := 1;

    while (i <= MAXDIGITOSCI) and (ci1[i] = ci2[i]) do
        i := i + 1;

    ciIguales := i > MAXDIGITOSCI;
end;

{Retorna la suma del dinero obtenido en los asaltos del conjunto ca realizados
durante el anio anio.}
function contarDinero (ca: ConjuntoAsaltos; anio:integer): integer;
var
    i,dinero : integer;
begin
    dinero := 0;

    for i := 1 to ca.tope do
        if anio = ca.asaltos[i].fecha.anio then
            dinero := dinero + ca.asaltos[i].botin;

    contarDinero := dinero;
end;

{Funcion para retornar la suma de dinero obtenida por un pirata}
function dineroObtenidoPorPirata(pirata: TipoCI; anio: integer; b:Banda) : integer;
var
    i,dinero : integer;
begin
    i := 1;
    dinero := 0;

    while (i <= b.tope) and (not ciIguales(pirata,b.pirata[i].ci)) do
        i := i + 1;
    
    if (i <= b.tope) and (b.pirata[i].estaVivo = true) then
        dinero := contarDinero(b.pirata[i].asaltos,anio);
    
    dineroObtenidoPorPirata := dinero;

end;