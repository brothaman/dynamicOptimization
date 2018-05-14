%% Optimal Pricing 
% determine the optimal pricing profile to maximize earnings when a competitor 
% is present in the market
M = 10;

% constants
[kp, up, kq, uq] = deal(1);

p = @(u) 1./(1+exp(-kp*(u-up)));
q = @(u) 1./(1+exp(-kq*(u-uq)));

ubar = 6;
N = 10;
ui = 11*ones(1,N);
J = sum(M*1/2*(xi + q(ui) + (1 - p(ui) - q(ui).*xi)) * (ui - ubar))
