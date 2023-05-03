program practico3_ejercicio8b;

var calif: char;

begin
    
    write('Escriba la letra A,B,C,D,F: ');
    read(calif);

    case calif of
    'A': writeln('Trabajo excelente');
    'B','C': writeln('Buen trabajo');
    'D','F': writeln('Trabajo deficiente');
    end;

end.