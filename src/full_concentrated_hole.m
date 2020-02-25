name = 'concentrated_hole';
fprintf('Full %s\n', name);

disp('Start');
pot_2d_concentrated_hole;

disp('Solving');
solve_2d_tridiagonal_crank_nicolson;

full_graphics;
