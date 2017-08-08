function test_suite = test_channel(varargin)
%TEST_CHANNEL  One-line description here, please.
%
%   output = test_channel(input)
%
%   Example
%   test_channel
%
%   See also
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2011-07-06,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2011 INRA - Cepia Software Platform.

test_suite = buildFunctionHandleTestSuite(localfunctions);

function test_2d %#ok<*DEFNU>

img = Image.read('peppers.png');
dim = size(img);

red =  channel(img, 1);
dim2 = size(red);

assertEqual(dim, dim2);
