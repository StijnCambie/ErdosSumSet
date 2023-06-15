#N=2^n and we consider mod 2^n+9
N=var('N');
for lam in range(1,17):
#the first n-4 terms will all be smaller than (N+9)/2 after multiplying with lam
    som=(N/16-1)*lam
#(N/4+3)*lam mod N+9 is smaller than (N+9)/2 iff lam%4==0 or 1
#and then 3* analogous
    a=floor(lam/4)
    b=(lam%4)
    if b==1 or b==0:
        som+=(N/4+3)*lam-a*(N+9)
    else:
        som+=(a+1)*(N+9)-(N/4+3)*lam
    a=floor(lam/2)
    b=(lam%2)
    if b==1:
        som+=(N/2+3)*lam-a*(N+9)
    else:
        som+=3*a
    a=floor(5*lam/16);
    b=(5*lam)%16;
    if b<8:
        som+=lam*(5*N/16+3)-a*(N+9)
    else:
        som+=(a+1)*(N+9)-lam*(5*N/16+3)
    a=floor(3*lam/8);
    b=(3*lam)%8;
    if 0<b and b<5:
        som+=lam*(3*N/8+3)-a*(N+9)
    else:
        som+=(a+1)*(N+9)-lam*(3*N/8+3)
    som-(N+9)
