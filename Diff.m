function [retval] = Diff (x,dx,f)
retval=(f(x+dx)-f(x-dx))/(2*dx);
endfunction
