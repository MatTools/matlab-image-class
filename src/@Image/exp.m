function res = exp(this)
%EXP Overload the exp operator for image object
%
%   output = exp(input)
%
%   Example
%   exp
%
%   See also
% 

% ------
% Author: David Legland
% e-mail: david.legland@inra.fr
% Created: 2010-12-02,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

newData = exp(double(this.data));

res = Image('data', newData, 'parent', this, 'type', 'intensity');
