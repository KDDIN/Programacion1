Program Practico5_ejercicio10;

var num,n,val: Integer;

begin

    n := 0;
    Write('Ingrese un numero natural positivo: ');
    read(num);
    val := num;

    if num mod 2 <> 0 then
        writeln(num,' = 2^',n,' * ',num)
    else
    begin

        while val mod 2 = 0 do
        begin

            n := n + 1;
            val := val div 2;

        end;
        writeln(num,' = 2^',n,' * ',val)
    end;

end.