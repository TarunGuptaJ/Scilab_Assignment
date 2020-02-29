function column_span(mat,n)
    disp("Column Span:");
    for i=1:n-1
        for j=i+1:n
            mat(j,:) = mat(j,:) - (mat(j,i)/mat(i,i)) * mat(i,:);
        end
        disp(mat);
    end
    for i=1:n
        if(mat(i,i)<>0)
            mat(i,:)=mat(i,:)/mat(i,i);
        end
    end
    disp(mat)
    for i=1:n
        for j=i:n
            if(mat(i,j)<>0)
                disp('is a pivot element ',j,'column');
                break
            end
        end
    end
endfunction

function fundamental_spaces(mat)
    disp("Fundamental Spaces:");
    [m,n]=size(mat);
    disp(m,'m is ');
    disp(n,'n is ');
    [v,pivot]=rref(mat);
    disp(rref(mat));
    disp(v);
    r=length(pivot);
    disp(r,'rank is ')
    cs=mat(:,pivot);
    disp(cs,'Column Space is ');
    ns=kernel(mat);
    disp(ns,'Null Space is ');
    rs=v(1:r,:)';
    disp(rs,'Row Space is ')
    lns=kernel(mat');
    disp(lns,'Left Null Space is ');
endfunction

a = x_matrix("Enter matrix:",zeros(3,3));
disp(a,"a = ");
column_span(a,3);
fundamental_spaces(a);
