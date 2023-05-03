Program Practico6_ejercicio1;

var m,n,m2,r: integer;

begin

    Write('Ingrese m: ');
    readln(m);
    m2 := m;
    Write('Ingrese n: ');
    readln(n);


    while (m <> 0) and (n <> 0) do
    begin
        m := n;
        n := m2 mod n;
        m2 := m;
    end;
    
    r := m + n;
    Writeln('El MCD es: ',r)

end.