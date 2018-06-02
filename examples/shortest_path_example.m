% cost = zeros(num_states,num_states) ;
% iconnect(1,2) = 1 ; cost(1,2) = 1 ;
% iconnect(1,3) = 1 ; cost(1,3) = 2 ;
% iconnect(2,4) = 1 ; cost(2,4) = 6 ;
% iconnect(2,5) = 1 ; cost(2,5) = 12 ;
% iconnect(3,4) = 1 ; cost(3,4) = 3 ;
% iconnect(3,6) = 1 ; cost(3,6) = 4 ;
% iconnect(4,5) = 1 ; cost(4,5) = 4 ;
% iconnect(4,6) = 1 ; cost(4,6) = 15 ;
% iconnect(4,7) = 1 ; cost(4,7) = 3 ;
% iconnect(4,8) = 1 ; cost(4,8) = 4 ;
% iconnect(5,7) = 1 ; cost(5,7) = 7 ;
% iconnect(6,8) = 1 ; cost(6,8) = 7 ;
% iconnect(6,9) = 1 ; cost(6,9) = 15 ;
% iconnect(7,9) = 1 ; cost(7,9) = 3 ;
% iconnect(8,9) = 1 ; cost(8,9) = 10 ;
Nstages = 8;
Nstates = 9;
NODES = cell(9,1);
NODES(1:Nstages) = {nNode};

% ID tag all the nodes
for i = length(NODES)
    NODES{i}.ID = i;
end

% 
NODES{1}.transitions = {[2 1] [3 2]};
NODES{2}.transitions = {[5 12] [4 6]};
NODES{3}.transitions = {[4 3] [6 4]};
NODES{4}.transitions = {[5 4] [7 15] [8 7] [6 4]};
NODES{5}.transitions = {[7 7]};
NODES{6}.transitions = {[8 7] [9 15]};
NODES{7}.transitions = {[9 3]};
NODES{8}.transitions = {[9 10]};

% compute value function
for stage = Nstages:-1:1 
    % iterate backwards from the final state back and store all the cost
    for state = stage:Nstates
    % 
    if (NODES{stage}.ID 
    NODES{stage}.policy = [NODES{state}.policy NODES{state
    end
end