%% Part 2 Analysis
%
% This script is provided as a starting point for the Part 2 analysis.
% Complete the sections marked "YOUR CODE HERE" and use the results to
% answer the Part 2 questions in your report.

clear all; close all; clc

%% ========================================================================
%  SETUP
%  ========================================================================

params = RocketParametersMedium();

%% ========================================================================
%  Q3: Transfer Functions
%  ========================================================================
%
% Generate the 3x2 transfer function matrix using the medium difficulty
% parameters.
%
% The rows correspond to:
%   1. Horizontal velocity
%   2. Vertical velocity
%   3. Rotational velocity
%
% The columns correspond to:
%   1. Throttle input
%   2. Gimbal input
%
% YOUR CODE HERE

% Hover equilibrium when upright, not moving, thrust = weight
x0 = [0;0;0;0;0;0];
u0 = [params.mass_kg*params.gravity_mps2/params.maxThrust_N; 0];

[A,B] = genLinearModel(params)
TF = genTransferFunction(x0,u0,params)



%% ========================================================================
%  Q3: DC GAIN
%  ========================================================================
%
% Determine the DC gain of each of the six transfer functions.
%
% YOUR CODE HERE
K = dcgain(TF) % linear DC gains
K_dB = 20*log10(abs(K)) % dB

%% ========================================================================
%  Q3: BANDWIDTH
%  ========================================================================
%
% Determine the bandwidth of each of the six transfer functions.
%
% YOUR CODE HERE

% only Vy/tau and Omega/delta have a finite DC gain so only they have a bandwidth.
% The other four are N/A since three are zero and Vx/delta has a pole at the origin.
BW_Vy_tau = bandwidth(TF(2,1))
BW_Omega_delta = bandwidth(TF(3,2))



%% ========================================================================
%  Q3: BODE PLOTS
%  ========================================================================
%
% Create Bode plots for the six input-output pairs.
%
% YOUR CODE HERE
figure
bode(TF)
grid on
title('Bode plots of the six input-output pairs (Medium)')

%% ========================================================================
%  Q4: POLES
%  ========================================================================
%
% Determine the poles of the transfer functions and use them to investigate
% how the rocket parameters affect the system dynamics.
%
% You may generate additional transfer functions using modified parameter
% values as needed.
%
% YOUR CODE HERE
poles_A = eig(A) % all poles of the linear model
poles_Vx_delta = pole(TF(1,2))
poles_Vy_tau = pole(TF(2,1))
poles_Omega_delta = pole(TF(3,2))


%% ========================================================================
%  Q5: PARAMETER EFFECTS
%  ========================================================================
%
% Investigate how changing the following parameters individually affects
% the frequency response and the feel of the rocket during manual control:
%
%   - mass
%   - inertia
%   - maximum thrust
%   - distance from the center of mass to the thruster
%
% Modify one parameter at a time while keeping the other parameters at
% their medium difficulty values.
%
% YOUR CODE HERE

% Change one parameter at a time to 1.5 times its medium value and compare
names = {'mass_kg','inertia_kgm2','maxThrust_N','length_m'};

for k = 1:4
    p = params; % start from medium
    p.(names{k}) = 1.5*params.(names{k}); % change one parameter
    u0_new = [p.mass_kg*p.gravity_mps2/p.maxThrust_N; 0];
    TF_new = genTransferFunction(x0,u0_new,p);

    figure
    bode(TF, TF_new)
    grid on
    legend('Medium', ['1.5x ' names{k}], 'Interpreter','none')
    title(['Effect of increasing ' names{k}], 'Interpreter','none')

    disp(names{k})
    dcgain_new = dcgain(TF_new)
    poles_new  = eig(genLinearModel(p))
end







