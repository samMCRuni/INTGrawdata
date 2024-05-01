clear;
clc;

% Data Input
innovations = {'Rear-view Mirrors', 'Seat-belts', 'Fog Lamps', 'Windscreen Wipers', 'Front-Wheel-Drive', ...
               'Direct Injection', 'Disc Brakes', 'Halogen Headlights', 'All-Wheel Drive', ...
               'Dual-Clutch Transmission', 'Adaptive Suspension'};

motorsport_years = [1911, 1922, 1926, 1926, 1927, 1952, 1953, 1962, 1980, 1985, 1992];
road_years = [1921, 1959, 1955, 1963, 1934, 1974, 1965, 1968, 1992, 2003, 1998];

% Define Colours
% colors = ['#42CDC2'; '#42CDC2'; '#42CDC2'; '#42CDC2'; '#F5CB59'; '#F5CB59'; '#42CDC2'; '#42CDC2'; '#D52E51'; '#F5CB59'; '#D52E51'];
colors = ['#DA1F1F'; '#DA7F1F'; '#DAD71F'; '#A1DA1F'; '#1FDA39'; '#1FDAB5'; '#1FB2DA'; '#1F6EDA'; '#221FDA'; '#6E1FDA'; '#A71FDA'];

% Create Figure
figure;
hold on;

% Plot Thick Lines
for i = 1:numel(innovations)
    plot([motorsport_years(i), road_years(i)], [i, i], 'LineWidth', 14, 'Color', colors(i,:), 'LineJoin', 'round');
end

% Set Labels, Limits, and Ticks
set(gca, 'YTick', 1:numel(innovations), 'YTickLabel', innovations, 'YLim', [0.5, numel(innovations) + 0.5]);
xlabel('Year');
title('Timeline of Motorsport Innovations Translation into Road Cars');
grid on;

xlim([1906, 2010]);
xticks(1910:5:2010);
hold off;


% Average Translation Time in Yrs

yr_diff = road_years - motorsport_years;
average = mean(yr_diff);

safety_M_yr = [1911, 1922, 1926, 1926, 1953, 1962];
safety_R_yr = [1921, 1959, 1955, 1963, 1965, 1968];
average_safety = mean(safety_R_yr-safety_M_yr);

eff_M_yr = [1927, 1952, 1985];
eff_R_yr = [1934, 1974, 2003];
average_eff = mean(eff_R_yr-eff_M_yr);

perf_M_yr = [1980, 1992];
perf_R_yr = [1992, 1998];
average_perf = mean(perf_R_yr-perf_M_yr);





