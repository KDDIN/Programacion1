program P10Ej9;

type fecha = record
        mes : 1..12;
        dia : 1..31;
        anio : 0..2100;
        bisiesto : (si,no);
    end;

var tiempo : fecha;

begin

    tiempo.bisiesto := 1;    

end.