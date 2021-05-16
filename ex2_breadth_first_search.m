%%--- グラフ構造の定義（Graph A）-----------------------------------------------
%     ※ Graph A: 1B冒頭で示したグラフ
% 初期ノード番号を1，目標ノード番号を5とする．
initial_node = 1;
target_node = 4;
A = [0 1 1 0;
1 0 1 0;
1 1 0 1;
0 0 1 0
];

%-------------------------------------------------------------------------------

%%--- 探索処理（に必要な5つの関数相当の処理）-----------------------------------
% P1) AddNodes: open_listの初期化
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