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




%% ========================================================================
%  Q3: DC GAIN
%  ========================================================================
%
% Determine the DC gain of each of the six transfer functions.
%
% YOUR CODE HERE


%% ========================================================================
%  Q3: BANDWIDTH
%  ========================================================================
%
% Determine the bandwidth of each of the six transfer functions.
%
% YOUR CODE HERE




%% ========================================================================
%  Q3: BODE PLOTS
%  ========================================================================
%
% Create Bode plots for the six input-output pairs.
%
% YOUR CODE HERE


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









