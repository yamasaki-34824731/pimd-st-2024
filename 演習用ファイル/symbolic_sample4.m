
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%(Symbolic Math Toolbox script4)    
syms theta1 r1 real

%�s���`
A1=[cos(theta1) -sin(theta1) 0 0; ...
    sin(theta1)  cos(theta1) 0 0; ...
             0          0    1 0; ...
             0          0    0 1]
         
pg1=A1*[r1 0 0 1]' 
pg1=simplify(pg1)%�ŒZ�\���̌���

