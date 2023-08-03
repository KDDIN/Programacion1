program Ej;

type
    Tcaso = (creal,cint,cchar);
    RealIntChar = record case caso : TCaso of
                    creal : (vreal : real);
                    cint : (vint : integer);
                    cchar : (vchar : char)
                end;
    
    ListaH = ^TCeldaH;
    TceldaH = record
                info : RealIntChar;
                sig : ListaH
            end;

function producto (lista : listaH) : real;
var 
    multiplicacion:real; {variable para que la funcion no de problemas}
    iteracion: listaH;

begin
    multiplicacion := 1;
    iteracion := lista;
    
    while (iteracion <> nil) and (multiplicacion <> 0) do
    begin
        case lista^.info.caso of
            creal : multiplicacion := multiplicacion * iteracion^.info.vreal;
            cint : multiplicacion := multiplicacion * iteracion^.info.vreal;
            end;
        iteracion := iteracion^.sig;
    end;

    producto := multiplicacion;
end;