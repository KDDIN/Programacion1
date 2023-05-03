program Practico4_ejercicio10;

var n,i,factorial: integer;

begin

    write('Ingrese un valor para n: ');
    readln(n);
    factorial := n;

    for i := n downto 1 do
    begin

        if i <> 1 then
            factorial := factorial * (i-1)
        else
            writeln('El factorial de ',n,' es ',factorial)

    end;


end.