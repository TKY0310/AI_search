%%--- �O���t�\���̒�`�iGraph A�j-----------------------------------------------
%     �� Graph A: 1B�`���Ŏ������O���t
% �����m�[�h�ԍ���1�C�ڕW�m�[�h�ԍ���5�Ƃ���D
initial_node = 1;
target_node = 4;
A = [0 1 1 0;
1 0 1 0;
1 1 0 1;
0 0 1 0
];

%-------------------------------------------------------------------------------

%%--- �T�������i�ɕK�v��5�̊֐������̏����j-----------------------------------
% P1) AddNodes: open_list�̏�����
open_list = [ initial_node ];
closed_list = [];

while ~isempty(open_list)

cur_node = open_list(1);
open_list(1) = [];

closed_list = [closed_list cur_node];

if cur_node == target_node 
disp('Complete')
break;
end

hyp_nodes = find(A(cur_node, :) > 0);    

if ~isempty(closed_list)
    hyp_nodes = hyp_nodes(~ismember(hyp_nodes, closed_list));
end

if ~isempty(open_list)
    hyp_nodes = hyp_nodes(~ismember(hyp_nodes, open_list));
end
open_list = [ open_list hyp_nodes ]
end
%-------------------------------------------------------------------------------