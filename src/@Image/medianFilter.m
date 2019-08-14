function res = medianFilter(obj, se, varargin)
% Compute median value in the neighboorhood of each pixel.
%
%   RES = medianFilter(IMG, SE)
%   Compute the mean filter of image IMG, using structuring element SE.
%   The goal of obj function is to provide the same interface as for
%   other image filters (imopen, imerode ...), and to allow the use of 
%   mean filter with user-defined structuring element. 
%   This function can be used for directional filtering.
%
%
%   RES = medianFilter(IMG, SE, PADOPT) 
%   also specify padding option. PADOPT can be one of:
%     'zeros'
%     'ones'
%     'symmetric' 
%   see ordfilt2 for details. Default is 'symmetric' (contrary to the
%   default for ordfilt2).
%
%   See also:
%     meanFilter, ordfilt2, median
%

% ------
% Author: David Legland
% e-mail: david.legland@inra.fr
% Created: 2011-08-05,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2011 INRA - Cepia Software Platform.


if obj.Dimension > 2
    error('Median filter implemented only for planar images');
end

% transform STREL object into single array
if isa(se, 'strel')
    se = getnhood(se);
end

% get Padopt option
padopt = 'symmetric';
if ~isempty(varargin)
    padopt = varargin{1};
end

% rotate structuring element
se = permute(se, [2 1 3:5]);

% perform filtering
order = ceil(sum(se(:)) / 2);
data = ordfilt2(obj.Data, order, se, padopt);

% create result image
res = Image('data', data, 'parent', obj);
