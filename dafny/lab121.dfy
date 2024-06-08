method Triple (x: int ) returns (r: int)
ensures r==3*x
{
    var y := 2 * x;
    r := x + y;
    assert r==3*x;
}
method Triple2 (x: int ) returns (r: int)
requires 2 / 6 * 2 == x
ensures r == 3 * x
{
var y := x / 2;
r := 6 * y;
}
method Caller ()
{
    var result := Triple (18) ;
    assert result < 100;
}