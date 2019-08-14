function b = isLabelImage(obj)
% Checks if an image is a label image.
%
%   B = isLabel(IMG)
%
%   Example
%     img = Image.read('rice.png');
%     img2 = topHat(img, ones(20, 20));
%     lbl = labeling(img2 > 50);
%     isLabel(lbl)
%     ans =
%         1
%
%   See also
%     isGrayscaleImage, isScalarImage, isBinaryImage
%

% ------
% Author: David Legland
% e-mail: david.legland@inra.fr
% Created: 2011-09-26,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2011 INRA - Cepia Software Platform.

b = strcmp(obj.Type, 'label');
