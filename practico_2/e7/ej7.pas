Program ej7;

var
    m, v, error: real;

begin
    
    write('Ingrese m y v: ');
    ReadLn (m,v);

    error := abs(m-v) / v;

    writeln('La medicion es: ',abs(m));
    writeln('El valor verdadero es: ',abs(v));
    writeln('El error relativo es: ',error)

end.