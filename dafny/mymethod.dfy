method myMethod(n:int) returns (sum: int)
requires n>=0, n<=4
ensures sum == 4*n
{
    sum:=0;
    while sum != 4*n{
        sum:=sum+1;
    }

}