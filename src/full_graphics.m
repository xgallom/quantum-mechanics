disp('Contour 1x');
gr_2d_anim_pot_wf(x, y, V, abs(psi_o), t, ...
    0.25, sprintf('../figures/1x/contour_%s.gif', name));

disp('Contour 2x');
gr_2d_anim_pot_wf(x, y, V, abs(psi_o), t, ...
    0.5, sprintf('../figures/2x/contour_%s.gif', name));

disp('Surface 1x');
gr_2d_anim_surf_pot_wf(x, y, V, abs(psi_o), t, red, orange, cyan, blue, ...
    0.25, sprintf('../figures/1x/surface_%s.gif', name));

disp('Surface 2x');
gr_2d_anim_surf_pot_wf(x, y, V, abs(psi_o), t, red, orange, cyan, blue, ...
    0.5, sprintf('../figures/2x/surface_%s.gif', name));
