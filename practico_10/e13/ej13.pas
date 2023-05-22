Program P10Ej13;

const
    CANT_SALONES = 10; { valor entero mayor a 0 }
    MAX_PIZARRONES = 10; { valor entero mayor a 0 }
type

    TSalon = 
    record
        asientos : Integer;
        pizarrones : 1..MAX_PIZARRONES;
        hayProyector : Boolean;
    end;
    TFacultad = array [1..CANT_SALONES] of TSalon;

{Procedimiento para mostrar todos los salones}
procedure informeSalones (facu: TFacultad);
var i: 1..CANT_SALONES;
begin

    for i := 1 to CANT_SALONES do
    begin

        Writeln('Salon n°',i,':');
        writeln('Numero de asientos: ',facu[i].asientos);
        writeln('Numero de pizarrones: ',facu[i].pizarrones);
        if facu[i].hayProyector then
            writeln('Hay proyector')
        else
            writeln('No hay proyector');

        writeln;
    end;

end;

{Cantidad de asientos y su posicion en el array}
procedure salonMasAsientos (facu: TFacultad; var indSalon: Integer; var maxAsientos: Integer);
var i : 1..CANT_SALONES;
begin

    maxAsientos := facu[CANT_SALONES].asientos;
    indSalon := CANT_SALONES;

    for i := (CANT_SALONES - 1) downto 1 do
        if (maxAsientos >= facu[i].asientos) then
        begin
            maxAsientos := facu[i].asientos;
            indSalon := i;
        end;

end;

{El primer salon sin asientos}
function primerSalonSinAsientos (facu: TFacultad) : Integer;
var cantAsientos : 0..1000;
    i:1..CANT_SALONES;
begin

    

end;

