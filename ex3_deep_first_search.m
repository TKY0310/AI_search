
%-------------------------------------------------------------------------------
initial_node = 1;
target_node  = 7;
A = [ 0 1 0 0 0 0 0;
      1 0 0 7 4 0 0;
      0 0 0 6 0 0 0;
      0 2 1 0 2 2 0;
      0 4 0 7 0 4 0;
      0 0 0 7 4 0 1;
      0 0 0 0 0 1 0
];
%%--- 探索処理（に必要な5つの関数相当の処理）-----------------------------------
% P1) AddNodes: open_listの初期化
open_list = [ struct('id', initial_node, 'parent', 0) ];
closed_list = [];

while ~isempty(open_list)

cur_node = open_list(1);
open_list(1) = [];

closed_list = [closed_list cur_node]

if cur_node.id == target_node 
disp('Complete')
break;
end

hyp_node_ids = find(A(cur_node.id, :) > 0);    

if ~isempty(closed_list)
    hyp_node_ids = hyp_node_ids(~ismember(hyp_node_ids, [closed_list.id]));
end

if ~isempty(open_list)
    hyp_node_ids = hyp_node_ids(~ismember(hyp_node_ids, [open_list.id]));
end

if isempty(hyp_node_ids)
    disp('No hypothesis: skip updating open_list')
    continue
end

hyp_node_parents = repmat(cur_node.id, size(hyp_node_ids));
hyp_nodes = struct('id', num2cell(hyp_node_ids), ...
                   'parent', num2cell(hyp_node_parents));

open_list = [ hyp_nodes open_list];
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