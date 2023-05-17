program P10EJ6;

type 
    TipoMes = (enero,febrero,marzo,abril,mayo,junio,julio,agosto,septiembre,octubre,noviembre,diciembre);

var unmes:TipoMes;

procedure MostrarMes (var mes:TipoMes);
var numeromes: integer;
begin

    Write('Ingrese un mes: ');
    Read (mes);
    case of mes do
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

begin

    MostrarMes (unmes);

end.