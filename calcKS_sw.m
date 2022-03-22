function [KS, lnKS] = calcKS_sw(TK,S)

% [KS, lnKS] = calcKS_sw(TK,S)
% 
% calcKB_sw calculates the equilibrium constant of bisulfate in seawater,
% based on the equations given in Dickson 1990 "Standard potential of the
% reaction: AgCl(s) + 1/2H2(g) = Ag(s) + HCl(aq), adn the standard acidity
% constant of the ion HSO4- in synthetic sea water from 273.15 to 318.15K.
% J. Chem. Thermodyn. 22: 113-127. (eqn. 22-23). Note that this K is on the
% free scale. 
%
% Check Value: S=35, t=25C, ln(KS/k0) = -2.3, where k0 = mol/kg-sol
%
% Author: Yui Takeshita
% Scripps Institution of Oceanography
% Created: Sep 19, 2012
% Last Modified: Sep 19, 2012

% Constants
%Constnats from Dickson, 1990 eqn. 22
d = [-4276.1, 141.328, -23.093];
%Dickson, 1990, eqn. 23
c = [-13856, 324.57, -47.986, 35474, -771.54, 114.723, -2698, 1776];

I = 19.924.*S./(1000-1.005.*S);

lnKS = (d(1)./TK + d(2) + d(3).*log(TK) ... %KHO4_o, eqn. 22
        + (c(1)./TK + c(2) + c(3).*log(TK)).*sqrt(I) ...
        + (c(4)./TK + c(5) + c(6).*log(TK)).*I ...
        + c(7)./TK.*(I.^1.5) + c(8)./TK.*I.^2) ...
        + log(1 - 0.001005.*S); %Converts from umol/kg-H2O to umol/kg-sol

KS = exp(lnKS);

return