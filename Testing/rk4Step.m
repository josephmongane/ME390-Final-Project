function x_next = rk4Step(x,u,p,dt)
% RK4STEP Advance the rocket state by one time step using RK4.
%
%   Given the current state x and constant control input u, use the
%   fourth-order Runge-Kutta integration method to calculate the state
%   at the next time step.
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
%   - This function should implement the classical fourth-order
%     Runge-Kutta method.
%   - https://en.wikipedia.org/wiki/Runge%E2%80%93Kutta_methods
    k1 = dynamics(x,u,p); 
    k2 = dynamics((x + (k1*dt/2)),u,p);
    k3 = dynamics((x + (k2*dt/2)),u,p); 
    k4 = dynamics((x + (k3*dt)),u,p); 
    x_next = x + (dt/6)*(k1 + 2*k2 + 2*k3 + k4);

end