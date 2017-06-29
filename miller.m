function mll = miller(n)
x=randint(1,n)
t=0:1/n^2:1;
signal=zeros(1,length(t));
bit1=ones(1,floor(n/2));
previous=bit1;
for i=1:(length(x)-1)
if x(i)==1
signal(1,i*n-(n-1):i*n-(abs(n/2)))=previous;
signal(1,i*n-(abs(n/2)-1):i*n)=-1*previous;
previous=-1*previous;
end
if x(i)==0 && x(i+1)~=0
signal(1,i*n-(n-1):i*n-(abs(n/2)))=previous;
signal(1,i*n-(abs(n/2)-1):i*n)=previous;
end
if x(i)==0 && x(i+1)==0
signal(1,i*n-(n-1):i*n-(abs(n/2)))=previous;
signal(1,i*n-(abs(n/2)-1):i*n)=previous;
previous=-1*previous;
end
end
plot(t,signal),axis([0 1 -2 2]),grid on;