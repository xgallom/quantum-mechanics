m = 1;
hbar = 1;
n = 100;
t = 400;
dx = 1 / (n-1);
dt = 2 * m * dx^2 / hbar;

a = 1i * hbar / dt;
b = hbar^2 / (4 * m * dx^2);

B = repmat(b, n-1, 1);

x = 0:dx:1;
y = 0:dx:1;

[x, y] = meshgrid(x, y);
