program ej11;

var
    octal,d1,d2,d3,decimal: Integer;

begin
    
    write('Ingrese un numero octal: ');
    ReadLn(octal);

    d1 := octal div 100;
    d2 := (octal mod 100) div 10;
    d3 := (octal mod 100) mod 10;

    decimal := (d1 * sqr(8))+(d2 * 8)+(d3);

    writeln('El numero octal ingresado fue ',octal,
    ' y su numero correspondiente equivalente en base 10 es ',
    decimal,' ',maxint)


end.