function [KC1, KC2] = calcKC_sw(TK,S)

% [KC1, KC2] = calcKS_sw(TK,S)
% 
% Calculates the equilibrium constants of caronic acid  in seawater based 
% on the equations given in Leuker et al. 2000. Constants on Total Hydrogen
% scale. 
%
% Check Values: S=35, t=25C, 
% logKC1/k0 = -5.8472, where k0 = mol/kg-sol
% logKC2/k0 = -8.9660, where k0 = mol/kg-sol
%
%
% Author: Yui Takeshita
% Scripps Institution of Oceanography
% Created: Sep 19, 2012
% Last Modified: Sep 19, 2012


logKC1 = ((-3633.86./TK) + 61.2172 - 9.6777.*log(TK) ...
    + 0.011555.*S - 0.0001152.*(S.^2));
KC1 = 10.^logKC1;

logKC2 = ((-471.78./TK) - 25.929 + 3.16967.*log(TK) ...
    + 0.01781.*S - 0.0001122.*(S.^2));
KC2 = 10.^logKC2;

return

