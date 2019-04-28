clear;
syms p p1 p2 v v1 v2 va
p1 = 0.2*10^6;
v1 = 0.4;
v2 = 0.8;
va = 0.6;
% 过程中的pV保持不变 
W12 = int(1/v,v,v1,v2)*p1*v1;
disp(sprintf('(1)气体膨胀功为 %.3e J \n', eval(W12)))
% 过程1-a做功为
W1a = int((0.4-0.5*v)*10^6,v,v1,va);
% 过程a-2,压力不变做功为pa*（v2-va）
Wa2 = (0.4-0.5*va)*10^6*(v2-va);
% 过程的总膨胀功为
W1a2 = W1a +Wa2;
disp(sprintf('气体膨胀功为 %.3e J \n', eval(W1a2)))