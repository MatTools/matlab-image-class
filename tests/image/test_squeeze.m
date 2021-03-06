function tests = test_squeeze(varargin)
%TEST_SQUEEZE  Test case for the file squeeze
%
%   Test case for the file squeeze

%   Example
%   test_squeeze
%
%   See also
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2012-03-13,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2012 INRA - Cepia Software Platform.

tests = functiontests(localfunctions);

function test_Simple(testCase) %#ok<*DEFNU>
% Test call of function without argument
img = Image.read('brainMRI.hdr');
sli = slice3d(img, 3, 12);
sli2 = squeeze(sli);

assertEqual(testCase, 2, ndims(sli2));

extent = physicalExtent(sli2);
assertEqual(testCase, 4, length(extent));

