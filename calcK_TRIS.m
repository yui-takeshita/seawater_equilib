function [Ktris, lnKtris] = calcK_TRIS(TK)

% [Ktris, lnKtris] = calcKS_sw(TK,S)
% 
% calcK_TRIS calculates the equilibrium constant of TRIS buffer in
% artificial seawater, of salinity 35. Equation from Delvalls and Dickson,
% 1998 (Equation 19). untis are in mol/kg-H2O, and is on the total scale. 
%
% Author: Yui Takeshita
% Scripps Institution of Oceanography
% Created: Sep 16, 2013

% Constants

lnKtris = -29247.474./(TK)+928.94859-164.50331.*log(TK)+0.2945875.*TK;

Ktris = exp(lnKtris);

return