name = 'circle_whole';
fprintf('Full %s\n', name);

disp('Start');
pot_2d_circle_whole;

disp('Solving');
solve_2d_tridiagonal_crank_nicolson;

full_graphics;
