function installRocketGame()
% INSTALLROCKETGAME Add the Rocket Game folders to the MATLAB path.
%
%   INSTALLROCKETGAME() adds the analysis, engine, grader, and student
%   folders to the MATLAB search path and saves the updated path so that
%   the game remains available after restarting MATLAB.
%
%   The RocketGame folder is determined from the location of this file,
%   so INSTALLROCKETGAME() can be called from any current folder.
%
%   Folders added to the MATLAB path:
%       analysis
%       engine
%       grader
%       student

% Get the folder containing this installer
gameFolder = fileparts(mfilename('fullpath'));

% Folders to add
folders = {
    fullfile(gameFolder, 'analysis')
    fullfile(gameFolder, 'engine')
    fullfile(gameFolder, 'grader')
    fullfile(gameFolder, 'student')
    };

% Check that all required folders exist
for i = 1:length(folders)
    if ~isfolder(folders{i})
        error('RocketGame:MissingFolder', ...
            'Required folder not found:\n%s', folders{i});
    end
end

% Add folders to MATLAB path
addpath(folders{:});

% Save the updated MATLAB path
if savepath ~= 0
    warning('RocketGame:PathNotSaved', ...
        ['The Rocket Game folders were added to the MATLAB path, ' ...
        'but MATLAB could not save the updated path.']);
end

fprintf('Rocket Game installed successfully.\n');
end