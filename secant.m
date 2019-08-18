function rts = secant(f,a,b,tol)
  i=1;
  x_0=f(a);
  x_1=f(b);
   if f(a)<f(b)
    x_1=f(a);
    x_0=f(b);
   end
   while true
    x_2=((x_0*f(x_1)-x_1*f(x_0))/(f(x_1)-f(x_0,2)));
    if i==1
      rts=[x_2];
    else
      rts=[rts;x_2];
    end  
    if i>=2 && abs(rts(i)-rts(i-1))<tol 
       break;
    end
    x_0=x_1;
    x_1=x_2;
    i+=1;
    endwhile
    fprintf('\n\nNumber of iterations needed :%i\n',i)
    fprintf('\nroot approximated by secant method is :%d\n\n',rts(length(rts)));
  endfunction