clear;
syms p p1 p2 v v1 v2 va
p1 = 0.2*10^6;
v1 = 0.4;
v2 = 0.8;
va = 0.6;
% �����е�pV���ֲ��� 
W12 = int(1/v,v,v1,v2)*p1*v1;
disp(sprintf('(1)�������͹�Ϊ %.3e J \n', eval(W12)))
% ����1-a����Ϊ
W1a = int((0.4-0.5*v)*10^6,v,v1,va);
% ����a-2,ѹ����������Ϊpa*��v2-va��
Wa2 = (0.4-0.5*va)*10^6*(v2-va);
% ���̵������͹�Ϊ
W1a2 = W1a +Wa2;
disp(sprintf('�������͹�Ϊ %.3e J \n', eval(W1a2)))