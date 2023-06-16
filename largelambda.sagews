#N=2^n and we consider mod 2^n+9
N=var('N');
X=var('X');
N=X+9;
for lam in [X/2,X/2+1,X/2+2,X/2+3,X/2+4]:
    som=lam+(N-2*lam)*(X/32-1)+(3*lam/2-N/2)*(2-1/16);
    som
for lam in [X/4+3,X/4+1]:
    (N/2-3*lam/2)*(2-1/16)+(N-lam)+max(4*lam-N,N-4*lam)*(X/64-2)
