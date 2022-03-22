function [KB, lnKB] = calcKB_sw(TK,S)

% calcKB_SW calculates the equilibrium constant of Boric acid in seawater,
% based on the equations given in Dickson 1990 "Thermodynamics of the
% dissociation of of boric acid in synthetic sea water from 273.15 to
% 298.15 K". Deep Sea Research. 37:755-766. This is on the TOTAL hydrogen
% scale. 
%
% Check Value: S=35, t=25C, ln(KB/k0) = -19.7964, where k0 = mol/kg-sol
%
% Author: Yui Takeshita
% Scripps Institution of Oceanography
% Created: Sep 19, 2012
% Last Modified: Sep 19, 2012

lnKB = (-8966.9 - 2890.53.*sqrt(S) - 77.942.*S + 1.728.*(S.^1.5) - 0.0996.*(S.^2))./(TK) ... 
    + (148.0248 + 137.1942.*sqrt(S) + 1.62142.*S) ...
    + (-24.4344 - 25.085.*sqrt(S) - 0.2474.*S).*log(TK) ...
    + 0.053105.*sqrt(S).*(TK);

KB = exp(lnKB);

return