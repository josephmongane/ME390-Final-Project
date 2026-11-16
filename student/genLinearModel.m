function [A,B] = genLinearModel(p)
% GENLINEARMODEL Generate the linear state-space model of the rocket.
%
%   This function linearizes the nonlinear rocket dynamics about the
%   vertical hover equilibrium and returns the corresponding state-space
%   matrices A and B.
%
% Inputs:
%   p - Structure containing the rocket parameters.
%
% Outputs:
%   A - State matrix of the linearized system, [6x6].
%   B - Input matrix of the linearized system, [6x2].
%
% Notes:
%   - The equilibrium is vertical hover.
%   - Linearize the nonlinear equations of motion about this
%     equilibrium point.
%   - The state and input ordering must match the definitions below.
%
%   x - Rocket state, [6x1]:
%       x(1) = vx       Horizontal velocity [m/s]
%       x(2) = vy       Vertical velocity   [m/s]
%       x(3) = omega    Angular velocity    [rad/s]
%       x(4) = dx       Horizontal position [m]
%       x(5) = dy       Vertical position   [m]
%       x(6) = theta    Angular position    [rad]
%
%   u - Control input, [2x1]:
%       u(1) = tau      Throttle [0-1]
%       u(2) = delta    Gimbal angle [rad]

m  = p.mass_kg;
J  = p.inertia_kgm2;
l  = p.length_m;
T  = p.maxThrust_N;
g  = p.gravity_mps2;
bx = p.dragX_kgps;
by = p.dragY_kgps;
bw = p.rotDrag_kgm2ps;

% vx, vy, omega, dx, dy, theta
A = [ -bx/m   0      0      0   0   -g
       0     -by/m   0      0   0    0
       0      0     -bw/J   0   0    0
       1      0      0      0   0    0
       0      1      0      0   0    0
       0      0      1      0   0    0 ];

% tau, delta
B = [  0      -g
       T/m     0
       0      -l*m*g/J
       0       0
       0       0
       0       0 ];
end