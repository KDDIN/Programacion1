program Practico4_ejercicio7;

var
    n,n2,i,i2: integer;
    asterisco: char;

begin
    
    write ('Ingrese un valor para n: ');
    read(n);

    asterisco := '*';
    write('Ingrese ',n,' enteros positivos: ');
    for i := 1 to n do
    begin

        read(n2);

        for i2 := 1 to n2 do
            write(asterisco);

        writeln

    end;

end.