function tests = test_calibration(varargin) 
%TEST_CALIBRATION  One-line description here, please.
%
%   output = test_calibration(input)
%
%   Example
%   test_calibration
%
%   See also
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2010-11-17,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

tests = functiontests(localfunctions);

function test_setGetSpacing(testCase) %#ok<*DEFNU>

img = Image.read('cameraman.tif');
sp = [2.5 3];
img.Spacing = sp;

sp2 = img.Spacing;
assertEqual(testCase, sp, sp2);


function test_setGetOrigin(testCase)

img = Image.read('cameraman.tif');
ori = [-5, -10];
img.Origin = ori;

ori2 = img.Origin;
assertEqual(testCase, ori, ori2);


function test_setGetSpacing3d(testCase)

dat = cat(3, [10 20 30;40 50 60], [30 40 50;60 70 80]);
img = Image.create(uint8(dat));
sp = [2.5 3 1.5];
img.Spacing = sp;

sp2 = img.Spacing;
assertEqual(testCase, sp, sp2);

function test_setGetOrigin3d(testCase)

dat = cat(3, [10 20 30;40 50 60], [30 40 50;60 70 80]);
img = Image.create(uint8(dat));

ori = [-5 -10 -2];
img.Origin = ori;

ori2 = img.Origin;
assertEqual(testCase, ori, ori2);
