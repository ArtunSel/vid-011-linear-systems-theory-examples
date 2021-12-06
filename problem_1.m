clear all,close all,clc;
%% problem 1 for A matrix
A=[2,1,3;
   0,2,0;
   0,0,5];
%%
eig(A)
%%
null(A-(2)*eye(3),'r')
v_1=[1;0;0];
null(A-(5)*eye(3),'r')
w_1=[1;0;1];
%%

[A-(2)*eye(3)]*[1;0;0]
% zero-matrix indicates v_2 is not "e1" [1;0;0]
[A-(2)*eye(3)]*[0;1;0]
% [1;0;0] (the result) is linearly dependent on v_1
% ---> v_2 can be "e2" [0;1;0]
[A-(2)*eye(3)]*[0;0;1]
% [3;0;3] (the result) is NOT linearly dependent on v_1
% ---> v_2 canNOT be "e3" [0;0;1]


%%
v_1=[1;0;0];
v_2=[0;1;0];

w_1=[1;0;1];
%%

t=[v_1,v_2,w_1];

inv(t)*A*t
%%
t=[w_1,v_1,v_2];

inv(t)*A*t
%% problem 1 for B matrix
B=[2,1,1;
   0,2,2;
   0,0,2];
%%
eig(B)
%%
null([B-(2)*eye(3)]^1,'r')
null([B-(2)*eye(3)]^2,'r')
null([B-(2)*eye(3)]^3,'r')

rank(null([B-(2)*eye(3)]^1,'r'))
rank(null([B-(2)*eye(3)]^2,'r'))
rank(null([B-(2)*eye(3)]^3,'r'))


[B-(2)*eye(3)]*[1;0;0]
% zero-matrix indicates that v_3 canNOT be "e1" [1;0;0]
[B-(2)*eye(3)]*[0;1;0]
% the result is not zero-matrix
% which indicates that v_3 can be "e2" [0;1;0]
[B-(2)*eye(3)]*[0;0;1]
% the result is not zero-matrix
% which indicates that v_3 can be "e3" [0;0;1]
%%

[B-(2)*eye(3)]*[1;0;0]

[B-(2)*eye(3)]*[1;2;0]


v_1=[2;0;0];
v_2=[1;2;0];
v_3=[0;0;1];

t=[v_1,v_2,v_3];

inv(t)*B*t














%