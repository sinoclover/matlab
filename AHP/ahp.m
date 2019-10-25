clc
clear all
A = [1 3 3 3 3 1/3;1/3 1 3 5 5 1/5;1/3 1/3 1 3 5 1/5; 1/3 1/5 1/3 1 1 1/5;1/3 1/5 1/5 1 1 1/5;3 5 5 5 5 1];
[n, n] = size(A);
% 求矩阵A的全部特征值，构成对角阵d，并求A的特征向量构成v的列向量
[v, d] = eig(A);
disp('特征值对角阵d')
disp(d)
disp('特征向量矩阵v')
disp(v)
% 特征值r
r = d(1,1);
disp('特征值r');
disp(r);
% 一致性指标CI
CI = (r-n)/(n-1);
disp('一致性指标CI');
disp(CI);
% 一致性比例CR
RI = [0 0 0.52 0.89 1.12 1.26 1.36 1.41 1.46 1.49 1.52 1.54];
CR = CI/RI(n);
disp('一致性比例CR');
disp(CR);
% 一致性检验结果
if CR<0.10
CR_Result = '通过';
else
CR_Result = '不通过';
end
disp('一致性检验结果');
disp(CR_Result);
% 归一化特征向量计算:
w = v(:,1)/sum(v(:,1));
w = w';
disp('权向量w');
disp(w);