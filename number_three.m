arr = [2,4,6,8,20,18,16,17,5,7,19,1;12,13,14,15,9,8,3,2,54,10,17,1];
dispcoeff(arr);

function coeff = dispcoeff(c)
a = c(:,1);
b = c(:,2);
disp(a);
disp(b);
if length(a)>=11
    L = 10;
else
    L = length(a)-1;
end
    n = zeros(1,L);

for i = 1:L
    pf = polyfit(a,b,i);
    pv = polyval(pf,a);
    n(i) = norm(b-pv);
    [~,j] = min(n);
    coeff = polyfit(a,b,j);
    d = ['Best Fit Coefficient : ',num2str(coeff)];
    disp(d) 
end

end
