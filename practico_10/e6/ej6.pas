program P10EJ6;

type 
    TipoMes = (enero,febrero,marzo,abril,mayo,junio,julio,agosto,septiembre,octubre,noviembre,diciembre);
    TipoMesRango = 1..12;

var 
    unmes:TipoMes;

{Inicio del metodo}
procedure MostrarMes (var mes:TipoMes);
begin

    Write('Ingrese un mes: ');
    Read (mes);
    case mes of
        enero: write('enero');
        febrero: write('febrero');
        marzo: write('marzo');
        abril: write('abril');
        mayo: write('mayo');
        junio: write('junio');
        julio: write('julio');
        agosto: write('agosto');
        septiembre: write('septiembre');
        octubre: write('octubre');
        noviembre: write('noviembre');
        diciembre: write('diciembre');
    end;

end;

{Inicio del metodo}
procedure MostrarMesPorNumero (var mes:TipoMes);
var numeromes : TipoMesRango;
begin

    write ('Ingrese un mes del 1 al 12: ');
    read (numeromes);
    Writeln('El mes ingresado fue: ', mes(numeromes-1));

end;


{Inicio del programa}
begin

    MostrarMes (unmes);
    Writeln;
    MostrarMesPorNumero(TipoMesRango);

end.