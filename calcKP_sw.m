function [KP1, KP2, KP3] = calcKP_sw(TK,S)

% [KP1, KP2, KP3] = calcKP_sw(TK,S)
% 
% Calculates the equilibrium constants of phosphoric acid in seawater based
% on the expression given in Millero, 1995. "Thermodynamics of the carbon
% dioxide system in the oceans." Geochim. Cosmochim. Acta 50:661-677
%
% Actual equations transcribed from DOE Handbook, 2007. 0.015 has been
% subtracted from the constnat term to transfer to the total scale from the
% published seawater scale.
%
%
% Check Values: S=35, t=25C, 
% ln(KP1/k0) = -3.71, where k0 = mol/kg-sol
% ln(KP2/k0) = -13.727
% ln(KP3/k0) = -20.24
%
% Author: Yui Takeshita
% Scripps Institution of Oceanography
% Created: Sep 20, 2012
% Last Modified: Sep 20, 2012

logKP1 = -4576.752./TK + 115.525 - 18.453.*log(TK) ...
    + (-106.736./TK + 0.69171).*sqrt(S) ...
    + (-0.65654./TK - 0.01844).*S;
KP1 = exp(logKP1);

logKP2 = -8814.715./TK + 172.0883 - 27.927.*log(TK) ...
    + (-160.340./TK + 1.3566).*sqrt(S) ...
    + (0.37335./TK - 0.05778).*S;
KP2 = exp(logKP2);

logKP3 = -3070.75./TK - 18.141 + (17.27039./TK + 2.81197).*sqrt(S) ...
    + (-44.99486./TK - 0.09984).*S;
KP3 = exp(logKP3);

return