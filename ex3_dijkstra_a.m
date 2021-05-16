%%--- グラフ構造の定義（Graph A）-----------------------------------------------
%     ※ Graph A: 1B冒頭で示したグラフ
% 初期ノード番号を1，目標ノード番号を5とする．
A = [ 0 1 3 0;
      1 0 0 4;
      3 0 0 1;
      0 4 1 0;
];
initial_node = 1;
target_node  = 4;     
%-------------------------------------------------------------------------------

%%--- 探索処理（に必要な5つの関数相当の処理）-----------------------------------
% P1) AddNodes: open_listの初期化
open_list = [struct('id', initial_node, 'parent', 0,'cost', 0)];
closed_list = [];

while ~isempty(open_list)

cur_node = open_list(1);
open_list(1) = [];

closed_list = [closed_list cur_node]
DEBUG_closed_list = [[closed_list.id]; [closed_list.parent];[closed_list.cost]]  % for debug

if cur_node.id == target_node 
disp('Complete')
break;
end

hyp_node_ids = find(A(cur_node.id, :) ~= 0);    

if ~isempty(closed_list)
    hyp_node_ids = hyp_node_ids(~ismember(hyp_node_ids, [closed_list.id]));
end

if isempty(hyp_node_ids)
    disp('No hypothesis: skip updating open_list')
    continue
end

hyp_node_costs = A(cur_node.id, hyp_node_ids) + cur_node.cost
hyp_node_parents = repmat(cur_node.id, size(hyp_node_ids));
hyp_nodes = struct('id', num2cell(hyp_node_ids), ...
                   'parent', num2cell(hyp_node_parents),...
                   'cost', num2cell(hyp_node_costs));

                   
open_list = [ open_list hyp_nodes ];
[~, idx] = sort([open_list.cost]);           
open_list = open_list(idx);                   
[~, idx] = unique([open_list.id], 'first');   
open_list = open_list(sort(idx));
DEBUG_open_list = [[open_list.id]; [open_list.parent];[open_list.cost]]  

end

cur_id = target_node;
route = [];
while cur_id > 0
    route = [cur_id route];                          
    array_index = find([closed_list.id] == cur_id);  
    cur_id = closed_list(array_index(1)).parent;     
end
route

%-------------------------------------------------------------------------------