function x_dot = dynamics(x,u,p)
% DYNAMICS Compute the time derivative of the rocket state.
%
%   This function implements the nonlinear equations of motion for the
%   rocket. Given the current state, control input, and rocket parameters,
%   calculate the time derivative of the state.
%
% Inputs:
%   x - Current rocket state, [6x1]:
%       x(1) = vx       Horizontal velocity [m/s]
%       x(2) = vy       Vertical velocity   [m/s]
%       x(3) = omega    Angular velocity    [rad/s]
%       x(4) = dx       Horizontal position [m]
%       x(5) = dy       Vertical position   [m]
%       x(6) = theta    Angular position    [rad]
%
%   u - Current control input, [2x1]:
%       u(1) = tau      Throttle command [0-1]
%       u(2) = delta    Gimbal angle [rad]
%
%   p - Structure containing rocket parameters:
%       p.maxThrust_N
%       p.gravity_mps2
%       p.mass_kg
%       p.inertia_kgm2
%       p.dragX_kgps
%       p.dragY_kgps
%       p.rotDrag_kgm2ps
%       p.length_m
%
% Outputs:
%   x_dot - Time derivative of the rocket state, [6x1]:
%       x_dot = [dvx/dt; dvy/dt; domega/dt; ddx/dt; ddy/dt; dtheta/dt]
%
% Notes:
%   - Use the equations of motion derived in the project solicitation.
%   - The control input u represents the instantaneous control input.
%   - Do not modify the parameter structure p.
thrust = p.maxThrust_N * u(1); 
vxdot = (-thrust/p.mass_kg)*sin(u(2)+x(6)) - (p.dragX_kgps/p.mass_kg)*x(1);
vydot = (thrust/p.mass_kg)*cos(u(2)+x(6)) - p.gravity_mps2 - (p.dragY_kgps/p.mass_kg)*x(2);
wdot = (-thrust*p.length_m/p.inertia_kgm2)*sin(u(2)) - (p.rotDrag_kgm2ps/p.inertia_kgm2)*x(3);
dxdot = x(1);
dydot = x(2);
thetadot = x(3); 

x_dot = [vxdot; vydot; wdot; dxdot; dydot; thetadot]; 
end