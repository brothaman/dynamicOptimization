%% Optimal Pricing 
% determine the optimal pricing profile to maximize earnings when a competitor 
% is present in the market
M = 10;

% constants
[kp, up, kq, uq] = deal(1);
[up, uq] = deal(6);
p = @(u) 1./(1+exp(-kp*(u-up)));
q = @(u) 1./(1+exp( kq*(u-uq)));

ubar = 6;
N = 10;
x = zeros(1,N);
u = 11*ones(1,N-1);
J = zeros(1,N);
% performing the summation with a for loop
for i = 2:N
	x(i) = q(u(i-1)) + (1 - p(u(i-1)) - q(u(i-1)))*x(i-1);
	J(i) = J(i-1) + M * 1/2 * (x(i) + x(i-1)) * (u(i-1) - ubar);
end
