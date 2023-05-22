Program P10Ej12;

const
    cant_letras = 10 {valor > 0}
    cant_articulos = 10 {valor > 0}

type
    Tidioma = (es,en,pt);
    
    Tfecha = 
    record
        dia : 1..31;
        mes : 1..12;
        anio : 2001..9999
    end;

    Tnombre = array [1..cant_letras] of char;

    Tarticulo = 
    record
        nombre : Tnombre;
        idioma : Tidioma;
        visitas : integer;
        ultima_act : Tfecha;
    end;    

    wikipedia = array [1..cant_articulos] of Tarticulo;


{Funcion para ver cual fecha es mayor}
function esPosterior (f1,f2:Tfecha) : boolean;
var comparador;
begin {true si f1 > f2, false si f2 > f1}

    comparador := true; {busquemos los casos donde f1 < f2}

    if f1.anio < f2.anio then
        comparador := false
    else 
        if f1.anio = f2.anio then
            if f1.mes < f2.mes then
                comparador := false
        else 
            if f1.mes = f2.mes then
                if f1.dia < f2.dia then
                    comparador := false;
    
    esPosterior := comparador;

end;

{procedimiento para ver el articulo mas reciente de un idioma especifico}
procedure articuloMasReciente (wiki: wikipedia; idioma; Tidioma; VAR art: Tarticulo);
var i:1..cant_articulos;
begin
    
    for i := 2 to cant_articulos do
    begin

      if (wiki[i-1] and ) 

    end;

end;