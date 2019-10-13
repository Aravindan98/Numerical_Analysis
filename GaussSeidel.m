function [x,sol,i,error] = GaussSeidel (A, b,tol)
if(ConvCheck(A)==0)
  fprintf("Solution cannot be obtained as the convergence fails!.Please convert to diagonally dominant form!");
  return;
end
[L,D,U]=LDU(A);
clc;
%intial x
x=zeros(size(A)(2),1);
i=1;
sol=[];
while 1
  clc;
  if i==1
      sol=x;
      i++;
      continue;
  end
  x_next=((-inv(D+L))*(U)*x)+inv(D+L)*b';
  sol=[sol,x_next];
  if (norm(sol(:,i)-sol(:,i-1),1)<tol)
     disp(sol(:,i));
     break;
  end
     i++;
     x=x_next;
     x_real=inv(A)*b';
     error=norm(x-x_real,1);
end
endfunction
