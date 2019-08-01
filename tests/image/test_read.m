function test_suite = test_read(varargin) 
%TEST_READ  One-line description here, please.
%
%   output = test_read(input)
%
%   Example
%   test_read
%
%   See also
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2010-11-17,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

test_suite = buildFunctionHandleTestSuite(localfunctions);

function test_read_tif %#ok<*DEFNU>

img = Image.read('cameraman.tif');

assertEqual([256 256], size(img));


function test_read_color2d 

img = Image.read('peppers.png');

assertEqual(2, ndims(img));

