%% Discretization Step Comparison
%
% This script compares the accuracy and computational cost of the
% Forward Euler and RK4 integration methods for different time steps.

clear all; close all; clc

%% ========================================================================
%  PROVIDED CODE: Simulation Setup
%  ========================================================================

% Simulation parameters
t_final = 50;
params = RocketParametersMedium();

% Initial condition
x0 = [0;0;0;0;0;0];

% Continuous-time control input
w1 = .05; 
A1 = .25; 
t1 = .3; 
b1 = .45;

w2 = .1; 
A2 = .05; 
t2 = .1; 
b2 = 0;

Ts_actuator = 10;  % fixed, physical actuator update period
u_fun = @(t) [ ...
    A1*sin(w1*t + t1) + b1
    A2*sin(w2*t + t2) + b2];
u_zoh = @(t) u_fun(floor(t/Ts_actuator + 1e-10)*Ts_actuator);


%% ========================================================================
%  PROVIDED CODE: Generate Reference Solution
%  ========================================================================

% The reference solution is generated using a variable-step solver with
% tight error tolerances. This solution is used as the "true" solution
% for comparison with Euler and RK4.

tRef = 0:.001:t_final;

xRef = referenceSolution(x0,tRef,u_zoh,Ts_actuator,params);

%% ========================================================================
%  PROVIDED CODE: Define Time Steps and Preallocate Results
%  ========================================================================

% Time steps to test
n = unique(round(logspace(log10(Ts_actuator/1e-2), log10(Ts_actuator/1), 100)));
DT = Ts_actuator ./ n;

% Maximum integration error for each time step
errorEuler = zeros(size(DT));
errorRK4   = zeros(size(DT));

% Average computation time per integration step
timeEuler = zeros(size(DT));
timeRK4   = zeros(size(DT));

%% ========================================================================
%  YOUR CODE
%  ========================================================================
%
%  For each time step in DT:
%
%  1. Create the time vector that spans from 0 to t_final.
%
%  2. Evaluate the control input at each time step (u = u_zoh(t)).
%
%  3. Initialize the Euler and RK4 solutions using x0.
%
%  4. Use a for loop to advance both solutions through the simulation.
%
%  5. Measure the computation time required for each integration step.
%     use tic and toc functions
%
%  6. Calculate the maximum integration error for Euler and RK4.
%     error = max(abs(xRef(:,end) - xDisc(:,end)))
%
%  7. Calculate the average computation time per integration step.
%
%  Store your results in:
%       errorEuler
%       errorRK4
%       timeEuler
%       timeRK4
%
% ========================================================================




%% ========================================================================
%  YOUR CODE: Plot Results
%  ========================================================================
%
% Create a log-log plot of maximum integration error versus time step
% for both Euler and RK4.
%
% Include:
%   - Axis labels
%   - Units where appropriate
%   - A legend
%   - A grid
%
% ========================================================================









