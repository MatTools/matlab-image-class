function res = lt(this, arg)
%LT Overload the lt operator for Image objects
%
%   output = lt(input)
%
%   Example
%   lt
%
%   See also
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2010-11-28,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

if isa(arg, 'Imalt')
    arg = arg.data;
end

newData = bsxfun(@lt, this.data, arg);

nd = getDimension(this);
res = Image(nd, 'data', newData, 'parent', this, 'type', 'binary');
