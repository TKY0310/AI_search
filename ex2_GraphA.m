%%--- グラフ構造の定義（Graph A）-----------------------------------------------
%     ※ Graph A: 1B冒頭で示したグラフ
% 初期ノード番号を1，目標ノード番号を5とする．
initial_node = 1;
target_node  = 5;

% AdjacentMatrixの初期化
A = [0 1 1 0 0;
     1 0 0 0 0;
     1 0 0 1 1;
     0 0 1 0 0;
     0 0 1 0 0
];
%-------------------------------------------------------------------------------

%%--- 探索処理（に必要な5つの関数相当の処理）-----------------------------------
% P1) AddNodes: open_listの初期化
open_list = [ initial_node ];

% closed_listの初期化   <-- new!!
closed_list = [];

% P2) ExistAnyNodes
while ~isempty(open_list)
%isExist = ~isempty(open_list)         % 判定結果を，isExistという"変数"に代入するならこちら．なお，~は演算子．

% P3) PickupNode
cur_node = open_list(1)
open_list(1) = [];

closed_list = [closed_list cur_node]

% P4) IsTargetNode
if cur_node == target_node 
disp('OK') 
break;
end
%isExist = ( cur_node == target_node )  % 比較結果をisExistという"変数"に代入するならこちら

% P5) GetAdjacentNodes
hyp_nodes = find(A(cur_node, :) > 0)    % 難．下方の解説も併せて読むべし．

if ~isempty(closed_list)
    hyp_nodes = hyp_nodes(~ismember(hyp_nodes, closed_list));
end

% P1') AddNodes: open_listの更新
if ~isempty(closed_list)
    hyp_nodes = hyp_nodes(~ismember(hyp_nodes, open_list));
end
open_list = [ open_list hyp_nodes ]
end
%-------------------------------------------------------------------------------