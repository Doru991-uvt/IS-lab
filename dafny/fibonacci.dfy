function fibo(n:nat) : nat
{
    if n==0 then
        0
    else if n==1 then
        1
    else
        fibo(n-1) + fibo(n-2)
}

method fibonacci(n:nat) returns (f1:nat)
    requires n>=0
    ensures f1==fibo(n)
    {
        var i:=0;
        f1:=0;
        var f2:=1;
        while i<n
        invariant f1==fibo(i)
        invariant f2==fibo(i+1)
        invariant 0<=i<=n
        {
            var t:=f2;
            f2:=f1+f2;
            f1:=t;
            i:=i+1;
        }
    }
method Main()
{
    var r:=fibonacci(5);
    var r2:=fibo(5);
    print(r);
    print("\n");
    print(r2);
}