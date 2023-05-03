program Practico6_ejercicio7;

var m,n,i,o,r: integer;

begin

    Write('Ingrese m: ');
    read(m);
    write('Ingrese n: ');
    read(n);
    writeln;
    
    if n < m then
        writeln('No se exhibira nada')
    else
        for i := m to n do
        begin

            Writeln('>>> Tabla ',i,' <<<');
            for o := 1 to 10 do
                writeln(o,'*',i,' = ',o*i);
            writeln;
        end
    

end.