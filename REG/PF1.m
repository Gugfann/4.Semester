s = tf('s');
p = 10;
z = 0;
G = (s-3)/(s-5);
K = 1/((s-p));
sys = K*G/(1+K*G);

%pzmap(sys);

rlocus(sys)