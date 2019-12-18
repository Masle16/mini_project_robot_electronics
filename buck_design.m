%% Buck Absolute Design
clc;clear;close all; format compact;
OperatingFrequency = 20*10^3; %[Hz]
V_IN = 12; %[V]
I_RIPPLE = 0.05 %[A] Current ripple
         % Standard: 200 mA, rapid: 1000mA
         % e.g. if we charge with 600 mA we will be in the range [300, 900]
         % mA which is between standard and rapid.
 V_RIPPLE = 0.05
 RIPPLE_PERCENTAGE = [0.01 0.02 0.05]
         
         
figure('Name','Inductor')
V_OUT = 1.5 : 0.1 : 6.0;
L = zeros(size(V_OUT,2),1);
L_PERCENTAGE = zeros(size(V_OUT,2),3);
i = 1;
for VOUT = V_OUT
    L(i) = (V_IN - VOUT)*(VOUT/( V_IN*OperatingFrequency ))/I_RIPPLE * 10^3;
    
    I_RIPPLE_PERCENTAGE = VOUT/7.5 * RIPPLE_PERCENTAGE(1);
    L_PERCENTAGE(i,1) = (V_IN - VOUT)*(VOUT/( V_IN*OperatingFrequency ))/I_RIPPLE_PERCENTAGE * 10^3;
    
    I_RIPPLE_PERCENTAGE = VOUT/7.5 * RIPPLE_PERCENTAGE(2);
    L_PERCENTAGE(i,2) = (V_IN - VOUT)*(VOUT/( V_IN*OperatingFrequency ))/I_RIPPLE_PERCENTAGE * 10^3;
    
    I_RIPPLE_PERCENTAGE = VOUT/7.5 * RIPPLE_PERCENTAGE(3);
    L_PERCENTAGE(i,3) = (V_IN - VOUT)*(VOUT/( V_IN*OperatingFrequency ))/I_RIPPLE_PERCENTAGE * 10^3;
    
    i = i + 1;
end
plot(V_OUT,L,V_OUT,L_PERCENTAGE(:,1),V_OUT,L_PERCENTAGE(:,2),V_OUT,L_PERCENTAGE(:,3))
grid on
xlabel('V_{out} [V]')
ylabel('L [mH]')
legend('\Delta i_L = 50 [mA]', '\Delta i_L = 0.01 \cdot 0.1 cmA','\Delta i_L = 0.02 \cdot 0.1 cmA','\Delta i_L = 0.05 \cdot 0.1 cmA','Location', 'bestoutside')

figure('Name','Capacitor')
C = zeros(size(V_OUT,2),1);
C_PERCENTAGE = zeros(size(V_OUT,2),3);
i = 1;
for VOUT = V_OUT
    %V_RIPPLE = 0.05 * VOUT;
    C(i) = I_RIPPLE*(VOUT/(V_IN * OperatingFrequency))/V_RIPPLE * 10^6;
    
    I_RIPPLE_PERCENTAGE = VOUT/7.5 * RIPPLE_PERCENTAGE(1);
    V_RIPPLE_PERCENTAGE = VOUT * RIPPLE_PERCENTAGE(1);
    C_PERCENTAGE(i,1) = I_RIPPLE_PERCENTAGE*(VOUT/(V_IN * OperatingFrequency))/V_RIPPLE_PERCENTAGE * 10^6;
    
    I_RIPPLE_PERCENTAGE = VOUT/7.5 * RIPPLE_PERCENTAGE(2);
    V_RIPPLE_PERCENTAGE = VOUT * RIPPLE_PERCENTAGE(2);
    C_PERCENTAGE(i,2) = I_RIPPLE_PERCENTAGE*(VOUT/(V_IN * OperatingFrequency))/V_RIPPLE_PERCENTAGE * 10^6;
    
    I_RIPPLE_PERCENTAGE = VOUT/7.5 * RIPPLE_PERCENTAGE(3);
    V_RIPPLE_PERCENTAGE = VOUT * RIPPLE_PERCENTAGE(3);
    C_PERCENTAGE(i,3) = I_RIPPLE_PERCENTAGE*(VOUT/(V_IN * OperatingFrequency))/V_RIPPLE_PERCENTAGE * 10^6;
    i = i + 1;
end
plot(V_OUT,C,V_OUT,C_PERCENTAGE(:,1),'r',V_OUT,C_PERCENTAGE(:,2),'r',V_OUT,C_PERCENTAGE(:,3),'r')
grid on
xlabel('V_{out} [V]')
ylabel('C [\muF]')
legend(['\Delta V_C = 50 [mV]' newline '\Delta i_L = 50 [mA]'], [newline,'\Delta V_C = 0.01 \cdot V_{out}',newline,'\Delta i_L = 0.01 \cdot 0.1 cmA'], [newline,'\Delta V_C = 0.02 \cdot V_{out}',newline,'\Delta i_L = 0.02 \cdot 0.1 cmA'], [newline,'\Delta V_C = 0.05 \cdot V_{out}',newline,'\Delta i_L = 0.05 \cdot 0.1 cmA'],'Location', 'bestoutside')
