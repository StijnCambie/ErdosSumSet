#X=2^n and we consider mod N (2^n+9)
N=var('N');
X=var('X');
N=X+9;
for lam in range(1,17):
#the first n-4 terms will all be smaller than N/2 after multiplying with lam
    som=(X/16-1)*lam
#(X/4+3)*lam mod N is smaller than N/2 iff lam%4==0 or 1
#and then 3* analogous
    a=floor(lam/4)
    b=(lam%4)
    if b==1 or b==0:
        som+=(X/4+3)*lam-a*N
    else:
        som+=(a+1)*N-(X/4+3)*lam
    a=floor(lam/2)
    b=(lam%2)
    if b==1:
        som+=(X/2+3)*lam-a*N
    else:
        som+=3*a
    a=floor(5*lam/16);
    b=(5*lam)%16;
    if b<8:
        som+=lam*(5*X/16+3)-a*N
    else:
        som+=(a+1)*N-lam*(5*X/16+3)
    a=floor(3*lam/8);
    b=(3*lam)%8;
    if 0<b and b<5:
        som+=lam*(3*X/8+3)-a*N
    else:
        som+=(a+1)*N-lam*(3*X/8+3)
    som-N
    
    
