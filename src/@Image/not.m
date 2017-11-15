function res = not(this)
%NOT Overload the not operator for Image objects
%
%   output = not(input)
%
%   Example
%   not
%
%   See also
%

% ------
% Author: David Legland
% e-mail: david.legland@inra.fr
% Created: 2010-11-29,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

if ~islogical(this.data)
    error('Requires a binary image to work');
end

newData = builtin('not', this.data);

res = Image('data', newData, 'parent', this);
