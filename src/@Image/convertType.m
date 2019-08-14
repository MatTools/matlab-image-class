function convertType(obj, newType)
% Convert image data type.
%
%   convertType(IMG, NEWTYPE)
%   Changes the type of data buffer to the type specified by NEWTYPE.
%
%   This function changes the internal state of the Image object.
%
%   Example
%     convertType
%
%   See also
%

% ------
% Author: David Legland
% e-mail: david.legland@inra.fr
% Created: 2010-11-26,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

obj.Data = cast(obj.Data, newType);
