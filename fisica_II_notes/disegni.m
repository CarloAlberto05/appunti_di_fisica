%% Fermi-Dirac

clear; close all; clc;

% 1. Definizione delle Costanti
k_B = 8.617333e-5;      % Costante di Boltzmann [eV/K]
E_F = 0;                % Energia di Fermi posta a 0 per riferimento [eV]

% Vettore delle temperature da analizzare [Kelvin]
% Si include 0K come caso limite e temperature tipiche/alte
Temperature = [0, 300, 1000, 2500]; 

% 2. Dominio Energetico
% Si definisce un intervallo di energia attorno al livello di Fermi
% Esempio: da -0.5 eV a +0.5 eV rispetto a E_F
E = linspace(E_F - 1.0, E_F + 1.0, 1000); 

% 3. Calcolo e Plotting
figure('Name', 'Distribuzione di Fermi-Dirac', 'Color', 'w');
hold on;
grid on;
box on;

% Ciclo sulle diverse temperature
for i = 1:length(Temperature)
    T = Temperature(i);
    
    if T == 0
        % Caso limite T = 0 K (Funzione a gradino di Heaviside)
        % f(E) = 1 se E < E_F, 0 se E > E_F, 0.5 se E = E_F
        f = double(E < E_F);
        f(E == E_F) = 0.5; 
        
        % Stile linea per T=0 (tratteggiata o più spessa)
        plot(E, f, 'k--', 'LineWidth', 2, 'DisplayName', sprintf('T = %d K', T));
    else
        % Caso generale T > 0 K
        arg = (E - E_F) / (k_B * T);
        f = 1 ./ (1 + exp(arg));
        
        % Plot delle curve continue
        plot(E, f, 'LineWidth', 1.5, 'DisplayName', sprintf('T = %d K', T));
    end
end

%4. Formattazione del Grafico
xlabel('Energia $E - E_F$ [eV]', 'Interpreter', 'latex', 'FontSize', 14);
ylabel('Probabilità di occupazione', 'Interpreter', 'latex', 'FontSize', 14);
title('Distribuzione di Fermi-Dirac a varie temperature', 'FontSize', 14);

% Limiti degli assi per una visualizzazione pulita
xlim([min(E), max(E)]);
ylim([-0.05, 1.05]);

% Legenda
legend('show', 'Location', 'northeast', 'FontSize', 12);

exportgraphics(gcf, 'fermi_dirac.pdf', 'ContentType', 'vector');

hold off;