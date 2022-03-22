function [ion_concentration] = get_Tion(Sal, ion_letter)

% [ion_concentration] = get_Tion(Sal, 'ion_letter')
%
% Returns total concentration of major ions in seawater [umol/kg-solution].
% Equations from Dickson 2007 guide to best CO2 measurements. 
%
% Major ions include :
% 
% Ion               ion letter      Molecular Weight
% --------------------------------------------------
% Chloride          'Cl'                35.45
% Sulfate           'S'                 96.062
% Bromide           'Br'                79.904
% Fluoride          'F'                 18.998
% Sodium            'Na'                22.99
% Magnesium         'Mg'                24.305
% Calcium           'Ca'                40.078
% Potassium         'K'                 39.098
% Strontium         'Sr'                87.62
% Boron             'B'                 10.81


switch(ion_letter)
    case 'Cl'
        MW = 35.45;  rel_conc = 0.99889;
        ion_concentration = (rel_conc/MW)*(Sal./1.80655);
    case 'S'
        MW = 96.062; rel_conc = 0.14;
        ion_concentration = (rel_conc/MW).*(Sal./1.80655);
    case 'Br'
        MW = 79.904; rel_conc = 0.003473;
        ion_concentration = (rel_conc/MW).*(Sal./1.80655);
    case 'F'
        MW = 18.998; rel_conc = 0.000067;
        ion_concentration = (rel_conc/MW).*(Sal./1.80655);
    case 'Na'
        MW = 22.99;  rel_conc = 0.55661;
        ion_concentration = (rel_conc/MW).*(Sal./1.80655);
    case 'Mg'
        MW = 24.305; rel_conc = 0.06626;
        ion_concentration = (rel_conc/MW).*(Sal./1.80655);
    case 'Ca'
        MW = 40.078; rel_conc = 0.02127;
        ion_concentration = (rel_conc/MW).*(Sal./1.80655);
    case 'K'
        MW = 39.098; rel_conc = 0.0206;
        ion_concentration = (rel_conc/MW).*(Sal./1.80655);
    case 'Sr'
        MW = 87.62;  rel_conc = 0.00041;
        ion_concentration = (rel_conc/MW).*(Sal./1.80655);
    case 'B'
        MW = 10.811;  rel_conc = 0.000232;
        ion_concentration = (rel_conc/MW).*(Sal./1.80655);
end























