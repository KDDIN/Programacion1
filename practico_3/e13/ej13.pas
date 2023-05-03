program practico3_ejercicio13;

var {i = indice}

   i1,i2,i3: char;
   n1,n2,n3, resultado: integer;
   
begin
   write(ord('A'));
   write('Ingresa un numero hexadecimal (0-9 y A,B,C,D,E,F): ');
   readln(i1,i2,i3);

   case i1 of
      
      '1','2','3','4','5',
      '6','7','8','9','0': n1 := ord(i1) - 48;

      'A','B','C','D','E','F': n1 := ord(i1) - 55;

   end;
   
   case i2 of

      '1','2','3','4','5',
      '6','7','8','9','0': n2 := ord(i2) - 48;

      'A','B','C','D','E','F': n2 := ord(i2) - 55;

   end;

   case i3 of
      
      '1','2','3','4','5',
      '6','7','8','9','0': n3 := ord(i3) - 48;

      'A','B','C','D','E','F': n3 := ord(i3) - 55;

   end;

   resultado := (n1*sqr(16) + (n2*16) + n3);

   writeln('El equivalente a base 10 es: ',resultado)


end.
