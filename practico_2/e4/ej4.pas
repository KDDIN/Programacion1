program ejercicio4;

var
  a,b,c: integer;

begin

   {ingresar los valores 1 2 y 3 4}

   {1:}
   writeln('ingresar 1 2 y 3 4: ');
   read(a);
   readln(b);
   read(c);
   writeln('a=',a,', ','b=',b,', ','c=',c);
   {Resultado: a=1, b=2, c=3}

   {2:}
  {writeln('ingresar 1 2 y 3 4: ');
   readln(a,b,c);
   writeln('a=',a,', ','b=',b,', ','c=',c);}
   {Resultado: a=1, b=2, c=3}

   {3:}
   {writeln('ingresar 1 2 y 3 4: ');
   read(a,b,c);
   writeln('a=',a,', ','b=',b,', ','c=',c);}
   {Resultado: a=1, b=2, c=3}

   {4:}
  {writeln('ingresar 1 2 y 3 4: ');
   read(a);
   read(b);
   readln();
   read(c);
   writeln('a=',a,', ','b=',b,', ','c=',c);}
   {Resultado: a=1, b=2, c=3}

   {5:}
   {writeln('ingresar 1 2 y 3 4: ');
   readln(a);
   read(b);
   readln(c);
   writeln('a=',a,', ','b=',b,', ','c=',c);}
   {Resultado: a=1, b=2, c=3}

end.
