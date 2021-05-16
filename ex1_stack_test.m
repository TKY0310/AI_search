% EX1_STACK_TEST.m
%   An exercise script for implementation of "Stack"
%---------------------------------------------------
%% Test 1:
% Initialize --> Expected output: stack_data = []
stack_data = []
% push 1     --> Expected output: stack_data = 1
stack_data = [ stack_data 1 ]
% push 5     --> Expected output: stack_data = 1 5
stack_data = [ stack_data 5 ]
% push 8     --> Expected output: stack_data = 1 5 8
stack_data = [ stack_data 8 ]
% pop        --> Expected output: ret = 8
ret = stack_data(end)
stack_data(end) = [];
% pop        --> Expected output: ret = 5
ret = stack_data(end)
stack_data(end) = [];
% pop        --> Expected output: ret = 1
ret = stack_data(end)
stack_data(end) = [];
%---------------------------------------------------
%% Test 2:
% Initialize --> Expected output: stack_data = []
stack_data = []
% push 11    --> Expected output: stack_data = 11
stack_data = [ stack_data 11 ]
% push 15    --> Expected output: stack_data = 11 15
stack_data = [ stack_data 15 ]
% pop        --> Expected output: ret = 15
ret = stack_data(end)
stack_data(end) = [];
% push 18    --> Expected output: stack_data = 11 18
stack_data = [ stack_data 18 ]
% pop        --> Expected output: ret = 18
ret = stack_data(end)
stack_data(end) = [];
% pop        --> Expected output: ret = 11
ret = stack_data(end)
stack_data(end) = [];
%---------------------------------------------------
%% Test 3:
% Initialize --> Expected output: stack_data = []
stack_data = []
% push 11    --> Expected output: stack_data = 11
stack_data = [ stack_data 11 ]
% push 15    --> Expected output: stack_data = 11 15
stack_data = [ stack_data 15 ]
% pop        --> Expected output: ret = 15
ret = stack_data(end)
stack_data(end) = [];
% pop        --> Expected output: ret = 11
ret = stack_data(end)
stack_data(end) = [];
%---------------------------------------------------
