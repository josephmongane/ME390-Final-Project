function p = RocketParametersHard()
% ROCKETPARAMETERSHARD Define the rocket parameters for Hard difficulty.
%
%   This function defines the rocket parameters used by the Hard
%   difficulty setting. Modify the student design parameters to make the
%   rocket satisfy the Hard-mode performance requirements while minimizing
%   the design cost.
%
% Outputs:
%   p - Structure containing the rocket parameters:
%       p.mass_kg       Mass [kg]
%       p.inertia_kgm2  Moment of inertia [kg*m^2]
%       p.length_m      Distance from center of mass to thruster [m]
%       p.maxThrust_N   Maximum thrust [N]
%       p.gravity_mps2  Gravitational acceleration [m/s^2]
%       p.dragX_kgps    Horizontal drag coefficient [kg/s]
%       p.dragY_kgps    Vertical drag coefficient [kg/s]
%       p.rotDrag_kgps  Rotational drag coefficient [kg*m^2/s]
%
% Notes:
%   - You may modify ONLY the student design parameters identified below.
%   - Fixed parameters must not be modified.
%   - The Hard-mode performance requirements and design budget are
%     specified in Part 3 of the project solicitation.
%   - The rocket must still be capable of hovering:

    % =========================================================
    % STUDENT DESIGN PARAMETERS
    % =========================================================

    p.mass_kg = 1000;
    p.inertia_kgm2 = 400;
    p.length_m = 2;
    p.maxThrust_N = 15000;

    % =========================================================
    % FIXED PARAMETERS -- DO NOT MODIFY
    % =========================================================

    p.gravity_mps2 = 9.81;
    p.dragX_kgps = 100;
    p.dragY_kgps = 100;
    p.rotDrag_kgm2ps = 400;

end
