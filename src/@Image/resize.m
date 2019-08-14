function res = resize(obj, k, varargin)
% Resize an image (2D or 3D).
%
%   IMG2 = resize(IMG, K)
%   Resizes the input image IMG by the factor K, such that the size of the
%   new image is K times the size of IMG.
%
%
%   Example
%     % resize a grayscale image
%     img = Image.read('coins.png');
%     size(img)
%     ans = 
%        300  246
%     img2 = resize(img, .25);
%     size(img2)
%     ans =
%         75   62
%
%     % resize a color image
%     img = Image.read('peppers.png');
%     size(img)
%     ans =
%        512   384
%     img2 = resize(img, .2);
%     size(img2)
%     ans =
%        103    77
%
%     % resize a 3D image, using different resize ratios
%     img = Image.read('brainMRI.hdr');
%     size(img)
%     ans =
%        128   128    27
%     img2 = resize(img, [.5 .5 1]);
%     size(img2)
%     ans =
%         64    64    27
%
%   See also
%     size, crop, resample
%
 
% ------
% Author: David Legland
% e-mail: david.legland@inra.fr
% Created: 2017-08-08,    using Matlab 9.1.0.441655 (R2016b)
% Copyright 2017 INRA - Cepia Software Platform.

% eventually convert vector of scale factors into new dims
if length(k) > 1 && any(k < 1.0)
    k = obj.DataSize(1:obj.Dimension) .* k;
end

% process data buffer, using Matlab's Image Processing Toolbox
if obj.Dimension <= 2
    data = imresize(obj.Data, k, varargin{:});
else
    data = imresize3(obj.Data, k, varargin{:});
end

% create new image object for storing result
res = Image('data', data, 'parent', obj);
