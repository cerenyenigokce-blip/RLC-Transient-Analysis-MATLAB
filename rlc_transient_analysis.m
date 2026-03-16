% Series RLC Circuit Transient Response (Underdamped Case)
% This script calculates and plots the capacitor voltage over time.

% 1. Define Circuit Parameters
R = 10;        % Resistance in Ohms
L = 0.1;       % Inductance in Henrys
C = 1e-3;      % Capacitance in Farads
V_in = 12;     % Input Step Voltage in Volts

% 2. Calculate Natural Frequency and Damping Ratio
alpha = R / (2 * L);                  % Neper frequency (Damping attenuation)
omega_n = 1 / sqrt(L * C);            % Undamped natural frequency

% Check if the system is underdamped
if alpha < omega_n
    disp('System is Underdamped. Calculating response...');
    omega_d = sqrt(omega_n^2 - alpha^2); % Damped natural frequency
    
    % 3. Time Vector
    t = linspace(0, 0.1, 1000); % 0 to 0.1 seconds, 1000 points
    
    % 4. Calculate Capacitor Voltage V_c(t)
    % Formula for underdamped step response
    A = (alpha / omega_d);
    V_c = V_in * (1 - exp(-alpha * t) .* (cos(omega_d * t) + A * sin(omega_d * t)));
    
    % 5. Plot the Results
    figure;
    plot(t, V_c, 'b', 'LineWidth', 2);
    title('RLC Circuit Step Response (Underdamped)');
    xlabel('Time (s)');
    ylabel('Capacitor Voltage (V)');
    grid on;
else
    disp('System is not underdamped. Please adjust R, L, or C values.');
end