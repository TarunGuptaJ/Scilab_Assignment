//Made the implementation a function so that it can take any input
function Best_Fit(A,b)
    x=(A'*A)\ (A'*b);
    disp (x, 'x=');
    C=x(1,1);
    D=x(2,1);
    disp(C,"C =");
    disp(D,"D =");
endfunction

//A=[1 -1;1 1;1 2];

A = x_matrix("Enter matrix A:",zeros(3,2));
disp(A, 'A=');
//b=[1;1;3];

b = x_matrix("Enter matrix b:",zeros(3,1));
disp(b, 'b=');
Best_Fit(A,b);
disp('The-line of best fit -is b=C+Dt');
