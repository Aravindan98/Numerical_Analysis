function [L,D,U] = LDU (A)
  clc;
U=zeros(size(A));
L=zeros(size(A));
U=zeros(size(A));
for i=1:size(A)(1)
  clc;
  for j=1:size(A)(2)
    if(j>i)
    {
      U(i,j)=A(i,j);
    }
    elseif(j<i)
    {
      L(i,j)=A(i,j);
    }
    else
    {
      D(i,j)=A(i,j);
    }
    endif
    clc;
    endfor
    endfor
endfunction
