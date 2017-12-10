function b = isempty(this)
%ISEMPTY  Check if image contains data
%
%   B = img.isempty();
%
%   Example
%   img = Image2D.read('cameraman.tif');
%   isempty(img)
%   ans =
%       0
%
%   See also
%     dim, ndims, elementNumber
%

% ------
% Author: David Legland
% e-mail: david.legland@inra.fr
% Created: 2010-07-13,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

b = numel(this.data)==0;