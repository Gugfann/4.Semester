s = tf('s');
p = 6;
z = 0;
G = (s-1)/(s-5);
K = 1/((s-p));
sys = K*G/(1+K*G);

%pzmap(sys);

rlocus(sys)

%%

sys1 = tf([1 -5],[1 -14 49])

rlocus(sys1)

%%

T = 1/(1+(-s+5)/(s^2-4*s-1));

rlocus(T)

%%
syms s;

a=solve((-(2*s-15)*(s-1)-(s^2-15*s+50))/((s-1)^2)==0,s);
double(a)