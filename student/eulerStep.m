function x_next = eulerStep(x,u,p,dt)
% EULERSTEP Advance the rocket state by one time step using Forward Euler.
%
%   Given the current state x and constant control input u, use the
%   Forward Euler integration method to calculate the state at the next
%   time step.
%
% Inputs:
%   x  - Current rocket state, [6x1].
%   u  - Control input held constant during this time step, [2x1].
%   dt - Integration time step [s].
%   p  - Structure containing rocket parameters.
%
% Outputs:
%   x_next - Rocket state at the end of the time step, [6x1].
%
% Notes:
%   - The control input u is held constant over the integration interval.
%   - This function should implement Forward Euler integration.
    x_next = x + (dynamics(x,u,p)*dt); 
end