function mnch = manchester(n)
x=randint(1,n)
t=0:1/n^2:1;
signal=zeros(1,length(t));
bit1=ones(1,floor(n/2));
for i=1:length(x)
 if (x(i)==1)
   signal(1,i*n-(n-1):i*n-(abs(n/2)))=bit1;
   signal(1,i*n-(abs(n/2)-1):i*n)=-1*bit1;
 else
   signal(1,i*n-(n-1):i*n-(abs(n/2)))=-1*bit1;
   signal(1,i*n-(abs(n/2)-1):i*n)=bit1;
 end
 plot(t,signal),axis([0,1,-2,2]), grid on;
end

end