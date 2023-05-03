program Practico5_ejercicio8a;

var 
    numero,resultado: integer;
    operador,n: char;

begin
    writeln('Calculadora');
    read(n);
    numero := ord(n) - 48;
    resultado := numero;
    read(operador);

    while operador <> '=' do  
    begin
        read(n);
        numero := ord(n) - 48;
        case operador of
          '+': resultado := resultado + numero;
          '-': resultado := resultado - numero;
          '*': resultado := resultado * numero;
          '/': resultado := resultado div numero;  
        end;
        read(operador);
    end;

    writeln(resultado);  

end.