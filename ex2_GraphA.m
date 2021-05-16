%%--- �O���t�\���̒�`�iGraph A�j-----------------------------------------------
%     �� Graph A: 1B�`���Ŏ������O���t
% �����m�[�h�ԍ���1�C�ڕW�m�[�h�ԍ���5�Ƃ���D
initial_node = 1;
target_node  = 5;

% AdjacentMatrix�̏�����
A = [0 1 1 0 0;
     1 0 0 0 0;
     1 0 0 1 1;
     0 0 1 0 0;
     0 0 1 0 0
];
%-------------------------------------------------------------------------------

%%--- �T�������i�ɕK�v��5�̊֐������̏����j-----------------------------------
% P1) AddNodes: open_list�̏�����
open_list = [ initial_node ];

% closed_list�̏�����   <-- new!!
closed_list = [];

% P2) ExistAnyNodes
while ~isempty(open_list)
%isExist = ~isempty(open_list)         % ���茋�ʂ��CisExist�Ƃ���"�ϐ�"�ɑ������Ȃ炱����D�Ȃ��C~�͉��Z�q�D

% P3) PickupNode
cur_node = open_list(1)
open_list(1) = [];

closed_list = [closed_list cur_node]

% P4) IsTargetNode
if cur_node == target_node 
disp('OK') 
break;
end
%isExist = ( cur_node == target_node )  % ��r���ʂ�isExist�Ƃ���"�ϐ�"�ɑ������Ȃ炱����

% P5) GetAdjacentNodes
hyp_nodes = find(A(cur_node, :) > 0)    % ��D�����̉���������ēǂނׂ��D

if ~isempty(closed_list)
    hyp_nodes = hyp_nodes(~ismember(hyp_nodes, closed_list));
end

% P1') AddNodes: open_list�̍X�V
if ~isempty(closed_list)
    hyp_nodes = hyp_nodes(~ismember(hyp_nodes, open_list));
end
open_list = [ open_list hyp_nodes ]
end
%-------------------------------------------------------------------------------