function s = physicalSize(this)
%PHYSICALSIZE  Return the physical size of an image, in user unit
%
%   siz = img.physicalSize();
%
%   Example
%   img = Image2D.read('cameraman.tif');
%   physicalSize(img)
%   ans =
%       256 256
%
%   See also
%   ndims, size, physicalExtent, isCalibrated, clearCalibration
%

% ------
% Author: David Legland
% e-mail: david.legland@inra.fr
% Created: 2010-07-13,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

nd = ndims(this);

% multiply size of data array by element spacing
s = this.dataSize(1:nd) .* this.spacing;
