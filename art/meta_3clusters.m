function [ X, Y ] = meta_3clusters(n, seed)

% Set the RandStream to use the seed
oldRs = RandStream.getDefaultStream();
rs = RandStream.create('mt19937ar','seed',seed);
RandStream.setDefaultStream(rs);          


nc = ceil(n/3);
zsep = 2.8;
% zsep = 4;
Sig = diag( 0.66*[1 1 1 ] );
XC1 = Sig*randn(3, nc) + repmat([6 ;0 ;zsep], 1,nc);
XC2 = Sig*randn(3, nc) + repmat([0 ;6 ;3*zsep], 1,nc);
XC3 = Sig*randn(3, nc) + repmat([0 ;0 ;2*zsep], 1,nc);

% shift
Shift = [5; 5; 5];
XC1 = bsxfun(@plus, XC1, Shift);
XC2 = bsxfun(@plus, XC2, Shift);
XC3 = bsxfun(@plus, XC3, Shift);

XN = rand(7, nc*3); % 7-dimension uniform noises
X = [XC1 XC2 XC3; XN];

Y = [ones(1, size(XC1,2)),  2*ones(1, nc), 3*ones(1, nc)];


% Set RandStream back to its original one
RandStream.setDefaultStream(oldRs);

end

