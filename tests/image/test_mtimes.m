function tests = test_mtimes(varargin)
%TEST_TIMES  Test case for mtimes function
%
%   Test case for the file times

%   Example
%   test_times
%
%   See also
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2011-08-08,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2011 INRA - Cepia Software Platform.

tests = functiontests(localfunctions);

function test_TwoImages(testCase) %#ok<*DEFNU>

img1 = Image.create([1 2 3 4;5 6 7 8;9 10 11 12]);
img2 = Image.create(2*ones(3, 4));

exp = Image.create([2 4 6 8;10 12 14 16;18 20 22 24]);
res = img1 * img2;
assertEqual(testCase, exp.Data, res.Data);

function test_Constant(testCase) 

img1 = Image.create([1 2 3 4;5 6 7 8;9 10 11 12]);

exp = Image.create([2 4 6 8;10 12 14 16;18 20 22 24]);

res = img1 * 2;
assertEqual(testCase, exp.Data, res.Data);

res = 2 * img1;
assertEqual(testCase, exp.Data, res.Data);




