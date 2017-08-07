function test_suite = test_ctranspose(varargin)
%TEST_CTRANSPOSE  One-line description here, please.
%
%   output = test_ctranspose(input)
%
%   Example
%   test_ctranspose
%
%   See also
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2010-11-26,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

test_suite = buildFunctionHandleTestSuite(localfunctions);

function test_grayscale %#ok<*DEFNU>

img = Image.read('cameraman.tif');
dim = size(img);
img2 = img'; 
dim2 = size(img2);
assertEqual(dim, dim2([2 1]));

function test_color

img = Image.read('peppers.png');
dim = size(img);
img2 = img'; 
dim2 = size(img2);
assertEqual(dim, dim2([2 1]));
