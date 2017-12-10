function map = distanceMap(this, varargin)
%DISTANCEMAP Distance map of a binary image (2D or 3D)
%
%   output = distanceMap(input)
%
%   Example
%   distanceMap
%
%   See also
%

% ------
% Author: David Legland
% e-mail: david.legland@inra.fr
% Created: 2011-03-27,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2011 INRA - Cepia Software Platform.

% check type
if ~strcmp(this.type, 'binary')
    error('Requires a binary image');
end

% compute distance map
dist = bwdist(this.data, varargin{:});

% create new image
map = Image('data', dist, ...
    'parent', this, ...
    'type', 'intensity', ...
    'channelNames', {'distance'});
