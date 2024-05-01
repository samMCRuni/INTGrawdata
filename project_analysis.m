clear;
clc;

% Average price of Petrol and Diesel per Litre (04/03/24 - Statista)
avg_pet_pL = 144.73;
avg_die_pL = 154.53;

% Price Comparison Factor
price_CF = avg_pet_pL / avg_die_pL;

% Average Combined MPG - 'Which? December 2023'
% Test of 135 diesel and 169 petrol engines
avg_pet_mpg = 41.9;
avg_die_mpg = 46.8;

% MPG Comparison Factor
mpg_CF = avg_pet_mpg / avg_die_mpg;

% CO2 Comparison Factor
% European Energy Agency 2015 (petrol / diesel)
carbD_CF = 122.5 / 119.2;


% ------------------------------------------------------------------

% 2005 Data
mpg05 = [36.2 42.8 53.2 40.9 43.5 mpg_CF*(56.5) 40.9 37.2 38.7 mpg_CF*(42.2)];
avg_mpg05 = mean(mpg05);

carbDio05 = [188 158 127 164 154 carbD_CF*(132) 165 182 174 carbD_CF*(179)];
avg_carbDio05 = mean(carbDio05);

% 2006 Data
mpg06 = [36.2 42.8 45.6 53.2 40.9 mpg_CF*(56.5) 38.7 mpg_CF*(42.2) 37.2 38.6];
avg_mpg06 = mean(mpg06);

carbDio06 = [188 158 147 127 164 carbD_CF*(132) 174 carbD_CF*(179) 182 175];
avg_carbDio06 = mean(carbDio06);

% 2007 Data
mpg07 = [36.2 42.8 45.6 49.6 mpg_CF*(56.5) 44.8 mpg_CF*(42.2) 41.5 38.7 39.2];
avg_mpg07 = mean(mpg07);

carbDio07 = [188 158 147 137 carbD_CF*(132) 150 carbD_CF*(179) 163 174 173];
avg_carbDio07 = mean(carbDio07);

% 2008 Data
mpg08 = [40.9 49.6 46.3 45 mpg_CF*(56.5) 44.8 mpg_CF*(52.3) 39.2 38.6 39.2];
avg_mpg08 = mean(mpg08);

carbDio08 = [164 137 145 146 carbD_CF*(132) 150 carbD_CF*(144) 172 175 173];
avg_carbDio08 = mean(carbDio08);

% 2009 Data
mpg09 = [46.3 40.9 49.6 45 mpg_CF*(62.8) 44.8 52.3 mpg_CF*(58.9) mpg_CF*(42.2) mpg_CF*(47.9)];
avg_mpg09 = mean(mpg09);

carbDio09 = [145 164 137 146 carbD_CF*(119) 150 129 carbD_CF*(128) carbD_CF*(177) carbD_CF*(156)];
avg_carbDio09 = mean(carbDio09);

% 2010 Data
mpg10 = [49.6 44.8 40.9 49.6 mpg_CF*(62.8) 48.7 44.8 mpg_CF*(60.1) 52.3 mpg_CF*(55.4)];
avg_mpg10 = mean(mpg10);

carbDio10 = [145 151 164 137 carbD_CF*(119) 138 150 carbD_CF*(125) 129 carbD_CF*(135)];
avg_carbDio10 = mean(carbDio10);

% 2011 Data
mpg11 = [49.6 40.9 49.6 mpg_CF*(62.8) 44.8 48.7 51.4 mpg_CF*(60.1) mpg_CF*(55.4) 52.3];
avg_mpg11 = mean(mpg11);

carbDio11 = [145 164 137 carbD_CF*(119) 151 154 128 carbD_CF*(125) carbD_CF*(135) 129];
avg_carbDio11 = mean(carbDio11);

% 2012 Data
mpg12 = [49.6 53.3 40.9 44.8 mpg_CF*(62.8) mpg_CF*(56.5) mpg_CF*(60.1) 51.4 mpg_CF*(55.4) mpg_CF*(62.8)];
avg_mpg12 = mean(mpg12);

carbDio12 = [130 125 164 151 carbD_CF*(119) carbD_CF*(132) carbD_CF*(125) 128 carbD_CF*(135) carbD_CF*(119)];
avg_carbDio12 = mean(carbDio12);

% 2013 Data
mpg13 = [49.6 47.1 53.3 45.6 mpg_CF*(68.9) mpg_CF*(56.5) mpg_CF*(60.1) 51.4 mpg_CF*(62.8) 62.8];
avg_mpg13 = mean(mpg13);

carbDio13 = [130 139 125 146 carbD_CF*(106) carbD_CF*(132) carbD_CF*(125) 128 carbD_CF*(119) 104];
avg_carbDio13 = mean(carbDio13);

% 2014 Data
mpg14 = [57.6 47.1 53.3 mpg_CF*(68.9) 45.6 mpg_CF*(74.3) 68.9 mpg_CF*(67.3) 58.9 47.1];
avg_mpg14 = mean(mpg14);

carbDio14 = [114 139 125 carbD_CF*(106) 146 carbD_CF*(103) 94 carbD_CF*(108) 113 139];
avg_carbDio14 = mean(carbDio14);

% 2015 Data
mpg15 = [57.6 53.3 61.4 mpg_CF*(68.9) mpg_CF*(74.3) 68.9 45.6 mpg_CF*(67.3) 62.8 44.8];
avg_mpg15 = mean(mpg15);

carbDio15 = [114 125 105 carbD_CF*(106) carbD_CF*(103) 94 146 carbD_CF*(108) 105 145];
avg_carbDio15 = mean(carbDio15);

% -------------------------------------------------------------------


% Years
years = 2005:2015;

% Average MPG data
avg_mpg = [avg_mpg05, avg_mpg06, avg_mpg07, avg_mpg08, avg_mpg09, ...
           avg_mpg10, avg_mpg11, avg_mpg12, avg_mpg13, avg_mpg14, avg_mpg15];

% Average Carbon Dioxide emissions data
avg_carbDio = [avg_carbDio05, avg_carbDio06, avg_carbDio07, avg_carbDio08, avg_carbDio09, ...
                avg_carbDio10, avg_carbDio11, avg_carbDio12, avg_carbDio13, avg_carbDio14, avg_carbDio15];



% Plotting the Average MPG
figure(1)
plot(years, avg_mpg, '-x', 'LineWidth', 2, 'MarkerSize', 10, 'Color', '#1088ED', 'MarkerEdgeColor', '#DE0634');
title('Average MPG - Top 10 UK road cars (2005 - 2015)');
ylim([30 68]);
xlabel('Year');
ylabel('Average Miles Per Gallon');
grid on;

% Plotting the Average Carbon Dioxide emissions
figure(2)
plot(years, avg_carbDio, '-x', 'LineWidth', 2, 'MarkerSize', 10, 'Color', '#70CF0B', 'MarkerEdgeColor', '#DE0634');
title('Average Carbon Dioxide Emissions - Top 10 UK road cars (2005 - 2015)');
ylim([80 180]);
xlabel('Year');
ylabel('Average Carbon Dioxide Emissions ( g / km )');
grid on;



