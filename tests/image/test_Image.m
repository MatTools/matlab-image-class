function test_suite = test_Image(varargin) 
% Tests functions for class 'Image' that are not yet in their own files
%   output = testImArea(input)
%
%   Example
%   testImEuler2d
%
%   See also
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2009-04-22,    using Matlab 7.7.0.471 (R2008b)
% Copyright 2009 INRA - Cepia Software Platform.

test_suite = buildFunctionHandleTestSuite(localfunctions);

function test_ImageFromData

% create test image
dat = [1 2 3 4;5 6 7 8;9 10 11 12];
img = Image('data', dat');

assertEqual([4 3], size(img));


function testIsa  %#ok<*DEFNU>

% test for 2D image
img = Image(uint8([10 20 30;40 50 60]));
assertTrue(isa(img, 'Image'));

% test for 3D image
img = Image(uint8(cat(3, [10 20 30;40 50 60], [30 40 50;60 70 80])));
assertTrue(isa(img, 'Image'));


function test_getPixel

% create test image
dat = [1 2 3 4;5 6 7 8;9 10 11 12];
img = Image('data', dat');

% get a pixel
assertEqual(11, img.getPixel(3, 3));

% get a pixel not on diagonal
assertEqual(9, img.getPixel(1, 3));


function test_getXYZ

maxX = 10;
maxY = 15;
maxZ = 20;

dat = ones([maxY maxX maxZ]);
img = Image(uint8(dat));
xImg = img.getX();
yImg = img.getY();
zImg = img.getZ();
[x y z] = meshgrid(1:maxX, 1:maxY, 1:maxZ);
assertElementsAlmostEqual(x, xImg);
assertElementsAlmostEqual(y, yImg);
assertElementsAlmostEqual(z, zImg);


function test_getX

dat = ones(10, 15);
img = Image.create(dat);
xImg = img.getX();
yImg = img.getY();
[x y] = meshgrid(1:15, 1:10);
assertElementsAlmostEqual(x, xImg);
assertElementsAlmostEqual(y, yImg);

