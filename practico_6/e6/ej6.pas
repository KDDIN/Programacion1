program practico6_ejercicio6;

var gasto, ventas, beneficioactual,beneficioanterior: integer;

begin

    Write('Ingrese el gasto inicial en publicidad: ');
    read(gasto);
    ventas := 20;
    beneficioactual := 0;

    Writeln('Gastado Publicidad     ventas     Beneficio Neto');
    //Writeln('      x                 y             z');
    //6 espacios, 17 espacios, 13 espacios
   repeat

        beneficioanterior := beneficioactual;
        beneficioactual := (ventas * 30) - gasto -100;
        Writeln('      ',gasto,'                 ',ventas,'             ',beneficioactual);
        if ventas*30 >= gasto then
            ventas := trunc(ventas * 1.5);
        gasto := gasto * 2;

   until beneficioactual < beneficioanterior;


end.