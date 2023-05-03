program practico3_ejercicio4;

var

    a,b,c: integer;

begin
    
    {Considere las siguientes instrucciones if anidadas:
    if a > b then
    if a > c then
    write ('a es el grande')}

    {Escriba una sola instrucci´on if que sea equivalente a 
    esta pero que no contenga otra instruccion if anidada.}

    a := 3;
    b := 2;
    c := 1;
    
    if (a > b) AND (a > c) THEN
    writeln ('a es el grande') 

end.