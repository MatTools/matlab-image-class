function [res, num] = createLabels(this, conn)
%CREATELABELS Connected components labeling of a binary image
%
%   LBL = createLabels(BIN);
%   where BIN is either a 2D or 3D binary image, returns a label image of
%   the connected components of image BIN.
%
%   LBL = createLabels(BIN, CONN);
%   Specifies the connectivity to use, can be 4 or 8 for 2D images, 6, 18
%   or 26 for 3D images.
%
%   Example
%   createLabels
%
%   See also
%   bwlabel, bwlabeln, bwconncomp

% check image data type
if ~strcmp(this.type, 'binary')
    error('oolip:WrongArgument', ...
        'Function "createLabels" requires a binary image as input');
end

% extract image dimension
nd = ndims(this);

% setup default connectivity
if nargin < 2
    if nd == 2
        conn = 8;
    else
        conn = 26;
    end
end

% call the label function
if nd == 2
    [labels, num] = bwlabel(this.data, conn);
else
    [labels, num] = bwlabeln(this.data, conn);
end

% create new image with result of filtering
res = Image(...
    'data', labels, ...
    'parent', this, 'type', 'label');
    
    