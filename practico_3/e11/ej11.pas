program practico3_ejercicio11;

var
    n,d,dn1,dn2,dn3,dn4: integer;
    s1,s2,s3,s4: char;

begin
    
    s1 := ' ';
    s2 := ' ';
    s3 := ' ';
    s4 := ' ';

    write('Ingrese un entero de 4 digitos: ');
    read(n);
    write('Ingrese un entero de 1 digito: ');
    read(d);

    dn1 := n div 1000;
    dn2 := (n mod 1000) div 100;
    dn3 := ((n mod 1000) mod 100) div 10;
    dn4 := ((n mod 1000) mod 100) mod 10;

    if (d = dn1) or (d = dn2) or (d = dn3) or (d = dn4) then
    begin

        if d = dn1 then
            s1 := '+';

        if d = dn2 then
            s2 := '+';

        if d = dn3 then
            s3 := '+';

        if d = dn4 then
            s4 := '+';

        writeln(n);
        writeln(s1,s2,s3,s4);

    end    
    else writeln(d,' no aparece en ',n);

end.