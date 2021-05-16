% EX1_QUEUE_TEST.m
%   An exercise script for implementation of "Queue"
%---------------------------------------------------
%% Test 1:
% Initialize --> Expected output: queue_data = []
queue_data = []
% enqueue 1     --> Expected output: queue_data = 1
queue_data = [ queue_data 1 ]
% enqueue 5     --> Expected output: queue_data = 1 5
queue_data = [ queue_data 5 ]
% enqueue 8     --> Expected output: queue_data = 1 5 8
queue_data = [ queue_data 8 ]
% dequeue        --> Expected output: ret = 1
ret = queue_data(1)
queue_data(1) = [];
% dequeue        --> Expected output: ret = 5
ret = queue_data(1)
queue_data(1) = [];
% dequeue        --> Expected output: ret = 8
ret = queue_data(1)
queue_data(1) = [];
%---------------------------------------------------
%% Test 2:
% Initialize --> Expected output: queue_data = []
queue_data = []
% enqueue 11     --> Expected output: queue_data = 11
queue_data = [ queue_data 11 ]
% enqueue 15     --> Expected output: queue_data = 11 15
queue_data = [ queue_data 15 ]
% dequeue        --> Expected output: ret = 11
ret = queue_data(1)
queue_data(1) = [];
% enqueue 15     --> Expected output: queue_data = 15 18
queue_data = [ queue_data 18 ]
% dequeue        --> Expected output: ret = 15
ret = queue_data(1)
queue_data(1) = [];
% dequeue        --> Expected output: ret = 18
ret = queue_data(1)
queue_data(1) = [];
%---------------------------------------------------
%% Test 2:
% Initialize --> Expected output: queue_data = []
queue_data = []
% enqueue 11     --> Expected output: queue_data = 11
queue_data = [ queue_data 11 ]
% enqueue 15     --> Expected output: queue_data = 11 15
queue_data = [ queue_data 15 ]
% dequeue        --> Expected output: ret = 15
ret = queue_data(1)
queue_data(1) = [];
% dequeue        --> Expected output: ret = 18
ret = queue_data(1)
queue_data(1) = [];
%----------------------------------------------