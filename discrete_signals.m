% Discrete-Time Signal Generation in MATLAB
% Range of n values
n = -10:10;  

%% 1. Unit Impulse Signal (δ[n])
impulse = (n == 0); % 1 when n=0, otherwise 0
figure;
stem(n, impulse, 'filled');
title('Unit Impulse Signal \delta[n]');
xlabel('n'); ylabel('\delta[n]');
grid on;

%% 2. Unit Step Signal (u[n])
step_signal = (n >= 0); % 1 for n >= 0, 0 otherwise
figure;
stem(n, step_signal, 'filled');
title('Unit Step Signal u[n]');
xlabel('n'); ylabel('u[n]');
grid on;

%% 3. Unit Ramp Signal (r[n])
ramp = n .* (n >= 0); % n for n >= 0, 0 otherwise
figure;
stem(n, ramp, 'filled');
title('Unit Ramp Signal r[n]');
xlabel('n'); ylabel('r[n]');
grid on;

%% 4. Exponential Signal (a^n)
a = 0.8; % base of exponential (choose |a|<1 for decaying, |a|>1 for growing)
exp_signal = (a.^n) .* (n >= 0); % causal exponential
figure;
stem(n, exp_signal, 'filled');
title(['Exponential Signal a^n, a = ', num2str(a)]);
xlabel('n'); ylabel('a^n');
grid on;

%% 5. Signum Function (sgn[n])
signum = zeros(size(n)); % initialize
signum(n>0) = 1; % 1 for n > 0
signum(n<0) = -1; % -1 for n < 0
% (signum(0) = 0 by default)
figure;
stem(n, signum, 'filled');
title('Signum Function sgn[n]');
xlabel('n'); ylabel('sgn[n]');
grid on;

%% 6. Sinc Function (sin(pi*n)/(pi*n))
sinc_func = zeros(size(n));
for i = 1:length(n)
    if n(i) == 0
        sinc_func(i) = 1; % limit value at n=0
    else
        sinc_func(i) = sin(pi*n(i))/(pi*n(i));
    end
end
figure;
stem(n, sinc_func, 'filled');
title('Sinc Function sinc[n] = sin(\pin)/(\pin)');
xlabel('n'); ylabel('sinc[n]');
grid on;
 
