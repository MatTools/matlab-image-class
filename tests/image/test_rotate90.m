function test_suite = test_rotate90(varargin)
%TEST_ROTATE90  One-line description here, please.
%
%   output = test_rotate90(input)
%
%   Example
%   test_rotate90
%
%   See also
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2010-11-25,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

test_suite = buildFunctionHandleTestSuite(localfunctions);

function test_image2d %#ok<*DEFNU>

dat = [...
    1 2 3 4 5; ...
    6 7 8 9 10; ...
    11 12 13 14 15];
img = Image.create(uint8(dat));

rot1 = img.rotate90(1);
assertEqual([3 5], size(rot1));

rot2 = img.rotate90(2);
assertEqual([5 3], size(rot2));

rot3 = img.rotate90(3);
assertEqual([3 5], size(rot3));

