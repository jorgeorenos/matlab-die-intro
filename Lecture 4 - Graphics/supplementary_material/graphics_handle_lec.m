%graphics_handle_lec.m
figH = figure('pos',[141,258,869,523]);
axH = axes();
ax1H = subplot(2,2,3);
sinH = plot(sin(linspace(0,2*pi,100)));
[c contH] = contour(peaks);
%peaks is a function of 2 variables obtained be translating and scaling
fHan = zeros(1, 10);
for i = 1:10, fHan(i) = figure(); end
ax = axes('Parent', fHan(4));
[C, objHan] = contourf(ax,peaks);



x = linspace(0,10);

fig = figure('pos', [500, 200, 1000, 750]);
ax = axes();

plot(x, sin(x));

ylim([-1.3, 1.3]);

hold on

plot(x, cos(x));

legend('seno', 'coseno','Location', 'best');


x = struct();

for i = 1:10
    x.(strcat('x_', num2str(i))) = randi(100, 1, 20)';
end


plot(struct2array(x));





