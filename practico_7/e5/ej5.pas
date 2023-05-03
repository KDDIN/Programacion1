Program Practico7_ejercicio5;

var
    n1,n2,n3: integer;

{Procedimiento}
procedure corrimiento(var a,b,c : integer);

var d,e,f : integer;

begin
    
    d := a;
    e := b;
    f := c;
    c := e;
    a := f;
    b := d;
    
end;

{Programa principal}
begin

    Write('Ingrese 3 numeros: ');
    Read(n1,n2,n3);
    corrimiento(n1,n2,n3);
    WriteLn('Su corrimiento es: ', n1,' ',n2,' ',n3)

end.