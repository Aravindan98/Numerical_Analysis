%computing the derivative
function derivative=Derivative(x,dx,f)
  {
for i= 1:length(x)
{
if i==0
{
derivative=[forwardDiff(x(i),dx,f)];
continue;
}
if i==length(x)
{
derivative=[derivative;backwardDiff(x(i),dx,f)];
continue;
}
derivative=[derivative;Diff(x(i),dx,f)];
}
return derivative;
endfunction