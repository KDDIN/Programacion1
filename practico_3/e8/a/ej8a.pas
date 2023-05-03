program practico3_ejercicio8a;

var k,r,s,t : Integer;

begin
    
    r := 0;
    s := 0;
    t := 0;

    write('Ingrese un numero del 0 al 4: ');
    readln(k);

    case k of
    0: r := r + 1;
    1: s := s + 1;
    2,3,4: t := t+2;
    end;
end.