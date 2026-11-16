function [u,u_state] = controller(t,x,u_state_old,dt,p,c,config)
% CONTROLLER Calculate the rocket control input.
%
%   This function calculates the throttle and gimbal commands required
%   to control the rocket during autonomous flight. It is called once
%   per simulation time step and may use its internal state to retain
%   information between calls.
%
% Inputs:
%   t           - Current simulation time [s].
%
%   x           - Current rocket state, [6x1]:
%                 x(1) = vx       Horizontal velocity [m/s]
%                 x(2) = vy       Vertical velocity   [m/s]
%                 x(3) = omega    Angular velocity    [rad/s]
%                 x(4) = dx       Horizontal position [m]
%                 x(5) = dy       Vertical position   [m]
%                 x(6) = theta    Angular position    [rad]
%
%   u_state_old - Controller state from the previous time step. This
%                 allows the controller to retain information between
%                 calls.
%
%   dt          - Controller time step [s].
%
%   p           - Structure containing the rocket's physical parameters.
%
%   c           - Structure containing controller parameters (see 
%                 ctrlParams from setInitialControlState.m)
%
%   config      - Structure containing game and landing configuration
%                 parameters.
%
% Outputs:
%   u           - Current control input, [2x1]:
%                 u(1) = tau      Throttle [0-1]
%                 u(2) = delta    Gimbal angle [rad]
%
%   u_state     - Updated controller state to be passed to the controller
%                 at the next time step.
%
% Notes:
%   - The controller must autonomously control the rocket using throttle
%     and gimbal angle.
%   - The controller should satisfy the landing criteria specified in
%     the project solicitation.
%   - Control inputs must remain within the allowable actuator limits.
%   - If the controller does not require internal state, u_state may
%     remain unchanged (u_state = u_state_old).
%   - The control law must can be designed with the help of AI.


end