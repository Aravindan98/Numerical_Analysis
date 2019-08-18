function root_approx = bisection(f,a,b,tolerance)
  i=1;
while f(a)*f(b)<0  
root=mean([a,b]);
  if f(root)*f(a)<0
    b=root;
  elseif f(root)*f(b)<0
    a=root;
  end
  if i==1
  root_approx=[root];
  else
  root_approx=[root_approx;root];
    if i >=2 && abs(root_approx(i)-root_approx(i-1))<=tolerance
      break;
    end
  end
i=i+1;
end
  fprintf('\n\nNumber of iterations needed :%i\n',i)
  fprintf('\nroot approximated by bisection method is :%d\n\n',root_approx(length(root_approx)));
end  