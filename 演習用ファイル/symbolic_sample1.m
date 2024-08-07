%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%�iSymbolic Math Toolbox  script1�j
syms tf a0 a1 a2 a3 a4 a5
syms eta0 etadot0 eta2dot0 %��(0),(d/dt)��(0),(d^2/dt^2)��(0)
syms etatf etadottf eta2dottf%��(tf),(d/dt)��(tf),(d^2/dt^2)��(tf)
 

A=[1 0 0 0 0 0;
   0 1 0 0 0 0;
   0 0 2 0 0 0;
   1 tf tf^2 tf^3 tf^4 tf^5;
   0 1 2*tf 3*tf^2 4*tf^3 5*tf^4;
   0 0 2 6*tf 12*tf^2 20*tf^3]

B=[eta0;etadot0;eta2dot0; ...
   etatf;etadottf;eta2dottf];

C=inv(A)*B%�t�s��v�Z
C2=simplify(C)%�V���{���b�N�Ȋȗ���
[NUM,DEN] = numden(C2)%���q������o��
NUM= collect(NUM,tf)%���q��tf�ɂ��Đ���



