function Fib (n: nat) : nat  decreases n{
if n < 2 then n else Fib(n - 2) + Fib(n - 1)
}

function F(x: int ): int decreases x{ //x scade la fiecare apel
 if x < 10 then x else F(x - 1)
}

function G(x: int ): int decreases x{ //x scade la fiecare apel
 if 0 <= x then G(x - 2) else x
}

function H(x: int ): int decreases x+60 { //expresia din decreases nu poate ajunge sub 0, deci doar x nu ar functiona
 if x < -60 then x else H(x - 1)
}

function I(x: nat , y: nat ): int 
decreases x+y //doar x sau doar y nu ar merge deoarece nu este garantat ca va scadea x sau ca va scadea y; dar de fiecare data va scadea una dintre ele, deci suma lor va scadea
{
if x == 0 || y == 0 then 12
else if x % 2 == y % 2 then
    I(x - 1, y)
else
    I(x, y - 1)
}

function J(x: nat , y: nat ): int 
decreases x*10+y //valorile lui x si y sunt asemanatoare cu cifrele unui numar xy care scade, deci am inmultit x cu 10
{
 if x == 0 then y
 else if y == 0 then
 J(x - 1, 3)
 else
 J(x, y - 1)
}

function K(x: nat , y: nat , z: nat ): int 
decreases (x+y)*10+z //la fel ca problema anterioara, la fiecare apel x sau y scade dar z poate intra in ciclul de (5,4,3,2,1,0,5), deci le-am separat inmultind suma x+y cu 10
{
 if x < 10 || y < 5 then x + y
 else if z == 0 then
 K(x - 1, y, 5)
 else
 K(x, y - 1, z - 1)
}

function L(x: int ): int 
decreases 100-x //functia se opreste cand x ajunge la 100, si x creste la fiecare apel, deci diferenta 100-x scade de fiecare data
{
 if x < 100 then L(x + 1) + 10 else x
}