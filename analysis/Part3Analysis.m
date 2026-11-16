%% Part 3 Analysis
%
% This script is provided as a starting point for the Part 3 analysis.
% Complete the sections marked "YOUR CODE HERE" and use the results to
% answer the Part 3 questions in your report.

clear all; close all; clc

%% ========================================================================
%  Q2: GENERATE TRANSFER FUNCTIONS
%  ========================================================================
%
% Generate the transfer function matrix for each difficulty mode.
%
% Use:
%   RocketParametersEasy
%   RocketParametersMedium
%   RocketParametersHard
%
% Each transfer function matrix is 3x2:
%
%   Rows:
%       1. Horizontal velocity
%       2. Vertical velocity
%       3. Rotational velocity
%
%   Columns:
%       1. Throttle input
%       2. Gimbal input
%
% YOUR CODE HERE




%% ========================================================================
%  Q2: FREQUENCY RESPONSE
%  ========================================================================
%
% For each difficulty mode, calculate the frequency response of all six
% input-output pairs.
%
% Use the same frequency vector for all three difficulty modes so that the
% responses can be compared directly.
%
% YOUR CODE HERE




%% ========================================================================
%  Q2: PLOT FREQUENCY RESPONSES
%  ========================================================================
%
% Create ONE figure containing 12 subplots:
%
%   Rows 1-2: Horizontal velocity
%   Rows 3-4: Vertical velocity
%   Rows 5-6: Rotational velocity
%
% For each output:
%   - One subplot should show magnitude
%   - One subplot should show phase
%
% On each subplot, plot the Easy, Medium, and Hard responses together.
%
% Use a logarithmic frequency axis.
%
% Label each subplot clearly and include a legend identifying the
% difficulty modes.
%
% YOUR CODE HERE



%% ========================================================================
%  Q2: PERFORMANCE METRICS AND DESIGN POINTS
%  ========================================================================
%
% Report the following for each difficulty mode:
%
%   - Vertical velocity DC gain
%   - Vertical velocity bandwidth
%   - Rotational velocity DC gain
%   - Rotational velocity bandwidth
%   - Horizontal velocity gain at 1 rad/s
%   - Total design points used
%
% The performance metrics should be obtained from your Part 3 design
% calculations.
%
% YOUR CODE HERE


