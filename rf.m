function rts = rf(f,a,b,tol)
    i=1;
    x_0=a;
    x_1=b;
    
    while true && (f(x_0)*f(x_1)<0) 
      
    x_2=((x_0*f(x_1)-x_1*f(x_0))/(f(x_1)-f(x_0,2)));
    %root aprx addition to list
    
    
    if i==1
      rts=[x_2];
    else
      rts=[rts;x_2];
    end  
    
    if f(x_2)*f(x_0)<0
      x_1=x_2;
    elseif f(x_2)*f(x_1)<0
      x_0=x_2;
    end
      
      
    %exit step
    if i>=2 && abs(rts(i)-rts(i-1))<tol 
       break;
    end
    
    i=i+1;
    end
      fprintf('\n\nNumber of iterations needed :%i\n',i)
      fprintf('\nroot approximated by Regula-Falsi method is :%d\n\n',rts(length(rts)));
end