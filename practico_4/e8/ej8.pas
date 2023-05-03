program Practico4_ejercicio8;

var
    c: char;
    n,i: integer;

begin

    write('Ingrese un caracter c: ');
    readln(c);
    write('Ingrese un valor para n: ');
    readln(n);

    for i := n downto 1 do
    begin
        
        for n := i downto 1 do
            write (c);

        writeln

    end;


end.