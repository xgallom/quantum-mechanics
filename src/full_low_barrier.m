name = 'low_barrier';
fprintf('Full %s\n', name);

disp('Start');
pot_2d_low_barrier;

disp('Solving');
solve_2d_tridiagonal_crank_nicolson;

full_graphics;
