function nc = channelNumber(this)
% Returns the number of channels of the image.
%
%   NC = channelNumber(IMG)
%   Returns the number of channels (color components, or spectral bands...)
%   of the input image. For grayscale or binary images, returns 1.
%
%   Example
%   img = Image.read('peppers.png');
%   channelNumber(img)
%   ans = 
%        3
%
%   See also
%     size, channel
%

% ------
% Author: David Legland
% e-mail: david.legland@inra.fr
% Created: 2010-11-17,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

nc = size(this.Data, 4);