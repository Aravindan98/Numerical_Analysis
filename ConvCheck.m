function [a]=ConvCheck(A)
[L,D,U]=LDU(A);
a=1;
for i=1:size(A)(1)
  if abs(D(i,i)) < norm((L+U)(i,:),1)
    a=0;
    break;
  end
end
endfunction
