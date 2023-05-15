Program P9E7;

const
    M = 6; {valor mayor estricto a 1}
    N = 5; {valor mayor estricto a 1}
    P = 4; {valor mayor estricto a 1}
type
    RangoM = 1..M;
    RangoN = 1..N;
    RangoP = 1..P;
    MatrizMN = array [RangoM, RangoN] of integer;
    MatrizNP = array [RangoN, RangoP] of integer;
    MatrizMP = array [RangoM, RangoP] of integer;


{Metodo}
procedure productoMatrices(a:MatrizMN; b:MatrizNP; VAR c:MatrizMP);
