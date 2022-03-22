function mCl = get_mCl_sw(Sal)

% mCl = get_mCl_sw(Sal)

% Calculates total sulfate concentration in mol/kgH2O.
% Equation from Dickson 2008, Best practices


mCl = 0.99889./35.453.*Sal./1.80655./(1-0.00105.*Sal); %Convert to molality (mol/kg-H2O)

return
