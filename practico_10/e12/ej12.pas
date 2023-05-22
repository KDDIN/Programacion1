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
var i,j:1..cant_articulos;
begin
    
    j := 1;
    repeat 
        art := wiki[1]; {supongo que esto funciona, no estoy seguro y no puedo probarlo ._. (tengo fe)}
        j := j+1;
    until wiki[j].idioma = idioma;

    if cant_articulos > 1 then
        for i := 2 to cant_articulos do
            if (wiki[i-1].idioma = idioma) and (wiki[i].ultima_act > wiki[i-1].ultima_act) then
                art := wiki[i]; 

end;

