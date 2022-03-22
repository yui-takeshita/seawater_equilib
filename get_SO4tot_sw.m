function SO4tot = get_SO4tot_sw(Sal)

%SO4tot = get_SO4tot_sw(Sal)

% Calculates total sulfate concentration in mol/kgH2O.
% Equation from Dickson 2008, Best practices

SO4tot = (0.14/96.062).*(Sal./1.80655)./(1-0.00105.*Sal); %[mol/kgH2O]

return;