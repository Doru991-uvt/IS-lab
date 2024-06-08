method binarysearch(v:array<int>, x:int) returns (idx:int)
requires v.Length>0
ensures v[idx]==x
{
    var n:=v.Length;
    var left:=0;
    var right:=n-1;
    while left<=right
    invariant 0<=left<=right<=n
    decreases right-left
    {
        idx:=(left+right/2);
        if v[idx]==x{
            return;
        }
        else if v[idx]<x{
            left:=idx+1;
        }
        else if v[idx]>x{
            right:=idx;
        }
    }
}