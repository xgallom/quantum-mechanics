name = 'single_slit_A';
fprintf('Full %s\n', name);

disp('Start');
pot_2d_single_slit_A;

disp('Solving');
solve_2d_tridiagonal_crank_nicolson;

full_graphics;
