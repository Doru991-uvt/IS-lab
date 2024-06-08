
function fsum(n:nat): nat
requires n>=0
{
    n*(n+1)/2
}

method sum(n:nat) returns (s:nat)
requires n>=0
ensures s==fsum(n)
{
    s:=0;
    var i:=0;
    while i<n
    invariant s==i*(i+1)/2
    invariant 0<=i
    invariant i<=n
    decreases n-i
    {
        i:=i+1;
        s:=s+i;
    }
}