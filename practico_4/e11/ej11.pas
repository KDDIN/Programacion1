program Practico4_ejercicio11;

var m,n,i,funcion,resultado: integer;

begin

    Write ('Ingrese un valor para m: ');
    readln (m);
    Write ('Ingrese un valor para n: ');
    readln (n);
    resultado := 0;

    for i := m to n do
    begin
        funcion := (i*i) -(18*i) + 5;

        if funcion > resultado then
            resultado := funcion;
            
        if i = m then
            writeln('El valor maximo para x en el entorno de ',
            m,' a ',n,' es ',resultado)

    end;



end.