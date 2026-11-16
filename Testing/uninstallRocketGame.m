function uninstallRocketGame()
% UNINSTALLROCKETGAME Remove the Rocket Game folders from the MATLAB path.
%
%   UNINSTALLROCKETGAME() removes the analysis, engine, grader, and
%   student folders associated with the Rocket Game from the MATLAB
%   search path and saves the updated path.
%
%   The RocketGame folder is determined from the location of this file,
%   so UNINSTALLROCKETGAME() can be called from any current folder.

% Get the folder containing this uninstaller
gameFolder = fileparts(mfilename('fullpath'));

% Folders to remove
folders = {
    fullfile(gameFolder, 'analysis')
    fullfile(gameFolder, 'engine')
    fullfile(gameFolder, 'grader')
    fullfile(gameFolder, 'student')
    };

% Remove folders from MATLAB path
for i = 1:length(folders)
    if isfolder(folders{i})
        rmpath(folders{i});
    end
end

% Save the updated MATLAB path
if savepath ~= 0
    warning('RocketGame:PathNotSaved', ...
        ['The Rocket Game folders were removed from the MATLAB path, ' ...
        'but MATLAB could not save the updated path.']);
end

fprintf('Rocket Game uninstalled successfully.\n');
end