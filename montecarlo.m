a=-5;
b=5;
N=[1000:1000:10000];
NN=length(N);
I=zeros(1,NN)
for k=1:NN
  xi=zeros(N(k),1);
  fxi=zeros(N(k),1);
  for i=1:N(k)
    xi(i)=rand(1)*(b-a)+a;
    fxi(i)=3*xi(i)^2;
  end
  fbar=mean(fxi);
  varf=1/(N(k)-1)*sum(fxi-fbar)^2;
  varfbar=mean(varf);
  kk=rand(1)
  I(k)=(b-a)*(fbar+kk*varfbar);
  disp(['EExpEriment with N= ',num2str(N(k)),',approximate value for i= ',num2str(I(k))I]);
end
averageI=meang(I);
figure;
plot(N,I,'ro')
hold on;
plot(N,ones(size(N))*averageI,'--m');
hold on;
plot(N,ones(size(N))*250,'b');
legend('MC approx I','averaged MC approx I','i excat');