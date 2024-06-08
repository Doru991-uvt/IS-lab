method test1(x:int, y:int) returns (z:int)
requires x==y
ensures z==0
{
    z:=x-y;
}
method test2(y:int) returns (x:int)
requires true
ensures x==100
{
    x:=100;
}
method test3(x:int) returns (x1:int)
requires 0<=x<100
ensures 0<=x1<=100
{
    x1:=x+1;
}

method test4(y:int) returns (x:int)
ensures y<=x //daca y=-1 nu merge
{
    x:=2*y;
}
method test5(x:int) returns (x1:int)
requires 0<=x
ensures 0<=x1
{
    x1:=x-1;
} //daca x este 0 postconditia nu tine