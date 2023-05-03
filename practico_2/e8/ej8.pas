Program ej8;

var

    numentrada, cuadrado, decena,
    centena, numsalida: integer;

begin

    write('Escribe un numero mayor a 9 y menor a 100: ');
    readln(numentrada);

    cuadrado := sqr(numentrada);

    centena := (cuadrado div 100) mod 10;
    decena := (cuadrado mod 100) div 10;

    writeln('Numero introducido: ',numentrada);
    writeln('Cuadrado del numero: ',cuadrado);
    writeln('Numero seudoaleatorio: ',centena,decena) 

end.