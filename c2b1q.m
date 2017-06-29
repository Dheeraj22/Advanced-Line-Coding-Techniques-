function c2b = c2b1q(n)
x=randint(1,n)
t=0:1/n^2:1;
signal=zeros(1,length(t));
bits1=ones(1,n);

a = [0,0,0,0,0,0,0,0,0,0];
b = [0,0,0,0,0,0,0,0,0,0];


for i=1:length(x)
for i=1:length(x)
    r = rem(i,2);
    if r==0
        b(end+1) = x(i);
        disp(b(i));
    else
        a(end+1)=x(i);
        disp(a(i));
    end
    
end

   
for i=1:(floor(length(x)/2)-1)
    m=strcat(num2str(a(i)),num2str(b(i)));
    m=str2double(m);
   
    switch m
        case 00
            signal(1,i*n-(n-1):i*2*n)=-2;
        case 01
            signal(1,i*n-(n-1):i*2*n)=-1;
        case 10
            signal(1,i*n-(n-1):i*2*n)=2;
        case 11
            signal(1,i*n-(n-1):i*2*n)=1;
    end
end

disp(a)
disp(b)
disp(length(t))
disp(length(signal))
plot(t,signal), axis([0,1,-3,3]),grid on;         
