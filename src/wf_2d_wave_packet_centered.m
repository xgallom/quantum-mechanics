px = x - 0.5;
py = y - 0.5;

psi = exp(1i .* 100 .* px - (px.^2 + py.^2) ./ (2 * 0.14^2));
