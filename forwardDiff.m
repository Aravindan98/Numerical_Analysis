
function [retval] = forwardDiff (x,dx,f)
retval=(f(x+dx)-f(x))/dx;
endfunction
