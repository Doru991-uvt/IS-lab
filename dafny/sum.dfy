method sum(n:int) returns (s:int)
    requires n>0 //preconditie ; nu poate fi =1 deoarece daca r=p+1 nu exista q care sa indeplineasca postconditia
    //ensures s==n*(n+1)/2
    {
        var i:=0;
        s:=0;
        while i<n{
            i:=i+1;
            s:=s+i;
        }
       // assert s==n*(n+1)/2;
       return;
    }