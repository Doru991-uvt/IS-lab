method between(p:int, r:int) returns (q:int)
    requires r-p>1 //preconditie ; nu poate fi =1 deoarece daca r=p+1 nu exista q care sa indeplineasca postconditia
    ensures p<q<r //postconditie
    {
        q:=p+1; //nu poate fi p+2 deoarece r poate fi egal cu p+2 => postconditia nu este indeplinita
    }