program P10EJ6;

type 
    TipoMes = (enero,febrero,marzo,abril,mayo,junio,julio,agosto,septiembre,octubre,noviembre,diciembre);

var unmes:TipoMes;

procedure MostrarMes (var mes:TipoMes);
begin

    Write('Ingrese un mes: ');
    mes := enero;
    Writeln(mes);
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

begin

    MostrarMes (unmes);

end.