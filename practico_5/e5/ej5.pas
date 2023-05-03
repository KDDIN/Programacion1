program Practico5_ejercicio5;

var 
    letra: char;
    saldo,total,deposito,retirar: real;

begin

    Write('Ingrese el saldo inicial: ');
    readln(saldo);
    total := saldo;
    
    repeat
    Write('Elija la operacion a hacer D o R: ');
    readln(letra);

    if letra = 'D' then
    begin

        write('Ingrese el deposito a realizar: ');
        readln(deposito);
        total := total + deposito;
        Writeln('D ',deposito:6:2);

    end;

    if letra = 'R' then
    begin

        Write('Ingrese el monto a retirar: ');
        readln(retirar);
        total := total - retirar;
        writeln('R ',retirar:6:2); 

    end;

    until letra = 'X';
    Writeln('X');
    Writeln('El saldo final es ',total:6:2);


end.