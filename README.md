# RLC Circuit Transient Analysis with MATLAB

This repository contains a MATLAB script that simulates and plots the transient step response of a series RLC circuit. 

## 📌 Project Overview
The project analyzes an **underdamped** series RLC circuit. It calculates the damping factor (alpha), natural frequency, and damped frequency to plot the voltage across the capacitor over time when a DC step voltage is applied.

## 🧮 Mathematical Model
The script is based on the second-order linear differential equation governing the series RLC circuit:
V_in = V_R + V_L + V_C
L*(d^2i/dt^2) + R*(di/dt) + (1/C)*i = 0

## 🛠️ How to Use
1. Clone the repository or download the `rlc_transient_analysis.m` file.
2. Open the file in **MATLAB**.
3. Run the script.
4. You can easily modify the `R`, `L`, `C`, and `V_in` variables at the top of the script to observe overdamped or critically damped responses.

## 📈 Output
Running the script generates a 2D plot showing the underdamped oscillations of the capacitor voltage before it settles at the steady-state input voltage.
