function [KW, lnKW] = calcKW_sw(TK,S)

% [KW, lnKW] = calcKW_sw(TK,S)
% 
% calcKW_sw calculates the equilibrium constant of water in seawater based
% on the expression given in Millero, 1995. "Thermodynamics of the carbon
% dioxide system in the oceans." Geochim. Cosmochim. Acta 50:661-677
%
% Actual equations transcribed from DOE Handbook, 2007. 0.015 has been
% subtracted from the constnat term to transfer to the total scale from the
% published seawater scale.
%
% Check Value: S=35, t=25C, ln(KW/k0^2) = -30.434, where k0 = mol/kg-sol
%
% Author: Yui Takeshita
% Scripps Institution of Oceanography
% Created: Sep 19, 2012
% Last Modified: Sep 19, 2012


lnKW = -13847.26./TK + 148.9652 - 23.6521.*log(TK) ...
    + (118.67./TK - 5.977 + 1.0495.*log(TK)).*sqrt(S) - 0.01615.*S;
KW = exp(lnKW);



return;
