name = 'inf_barrier';
fprintf('Full %s\n', name);

disp('Start');
pot_2d_inf_barrier;

disp('Solving');
solve_2d_tridiagonal_crank_nicolson;

full_graphics;
