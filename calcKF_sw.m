function [KF, lnKF] = calcKF_sw(TK,S)

% [KF, lnKF] = calcKF_sw(TK,S)
% 
% Calculates the equilibrium constants of Hydrogen Fluoride in Seawater,
% based on Perez and Fraga, 1987. Association constant for fluroide and
% hydrogen ions in seawater. Marine Chemistry. 21:161-168
%
% Check Values: S=35, t=25C, ln(KF/k0) = -6.09, where k0 = mol/kg-sol
%
%
% Author: Yui Takeshita
% Scripps Institution of Oceanography
% Created: Sep 20, 2012
% Last Modified: Sep 20, 2012

% logKF = 874./TK - 9.68 + 0.111.*sqrt(S);

% KF = exp(logKF);


% Calculates KF in Seawater based on Dickson adn Riley, 1979. Estimation of
% acid dissociation constants in seawater media from potentiometric
% titrations with strong base. I. The ionic product of water (Kw). Marine
% Chemistry, 7: 89-99
%
%
%

KF = exp(1590.2./(TK)-12.641+1.525.*sqrt(get_I_SW(S)))...
    .*(1-0.001005.*S); % Convert to mol/kg-sol.
lnKF = log(KF);

return