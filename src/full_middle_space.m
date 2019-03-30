name = 'middle_space';
fprintf('Full %s\n', name);

disp('Start');
pot_2d_middle_space;

disp('Solving');
solve_2d_tridiagonal_crank_nicolson;

full_graphics;
