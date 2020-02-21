%Tugas Buffon Noodle
%Irawansyah
%1301174689
%IF 40 11
t = 1;
L = 3; 
D = 5;
for n = 100:100:10000
   x = (D/2).*rand(n,1);
   teta =  pi.*rand(n,1);
   Q = 0;
   for k = 1:n
     if (L/2)*sin(teta(k))>= x(k)
       Q = Q+1;
     end
   end
   p = Q/n;
   nilai_pi(t)= (2*L)/(p*D);
   t = t+1;
end
n = 100:100:10000;
figure(1)
plot(n,nilai_pi,'o',[0 max(n)],[pi pi],'r')
xlabel('Banyaknya lemparan, n');
ylabel('Nilai dari pi');
title('Nilai estimasi pi dengan n');
legend('pi','n')
grid on