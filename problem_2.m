clear all,close all,clc;
%%
A=[1,2,1;1,1,3;zeros(1,3)]
%% find the range space
rref(A)
% 1st and 2nd columns are pivot,
% therefore, 
% "the 1st and 2nd columns of the original matrix
% spans the range space"
%% find the null space
temp1=rref(A);
% take the first 2 rows,
temp1=temp1([1,2],:);
%
null(temp1,'r')
null(A,'r')
%%
t=sym('t');
A=[3,1,1;0,3,1;0,0,3];
expm(A*t)