method swap (X:int, Y:int) returns (x:int, y:int)
ensures x==Y
ensures y==X
{
    x:=X;
    y:=Y;
    x, y := Y, X;
}