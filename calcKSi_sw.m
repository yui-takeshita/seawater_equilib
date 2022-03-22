function [KSi, lnKSi] = calcKSi_sw(TK,S)

% [KSi, lnKSi] = calcKSi_sw(TK,S)
% 
% calcKB_sw calculates the equilibrium constant of silicic acid in seawater
% based on the expression given in Millero, 1995. "Thermodynamics of the carbon
% dioxide system in the oceans." Geochim. Cosmochim. Acta 50:661-677
%
% Check Value: S=35, t=25C, ln(KSi/k0) = -21.61, where k0 = mol/kg-sol
%
% Author: Yui Takeshita
% Scripps Institution of Oceanography
% Created: Sep 20, 2012
% Last Modified: Sep 20, 2012

% Constants
d = [-8904.2, 117.385, -19.334];
c = [-458.79, 3.5913, 188.74, -1.5998, -12.1652, 0.07871];

I = 19.924.*S./(1000-1.005.*S);

lnKSi = (d(1)./TK + d(2) + d(3).*log(TK) ... %KHO4_o, eqn. 22
        + (c(1)./TK + c(2)).*sqrt(I) ...
        + (c(3)./TK + c(4)).*I ...
        + (c(5)./TK + c(6)).*(I.^2) ...
        + log(1 - 0.001005.*S)); %Converts from umol/kg-H2O to umol/kg-sol

KSi = exp(lnKSi);

return