psi_o = zeros(n, n, t);
psi_i = psi;

progress = 0;
for k = 1:t
    if round(100 * k / t) ~= progress
        progress = round(100 * k / t);
        fprintf('Progress: %3.0f%%\n', progress);
    end
    
    for j = 1:n
        A = diag(2 .* a - 2 .* b - V(:,j) ./ 2) + ...
            diag(B, 1) + ...
            diag(B, -1);

        Y = (2 .* a + 2 .* b + V(:,j) ./ 2) .* psi_i(:,j) ...
            - b .* (psi_i(:, min(j+1, n)) + psi_i(:, max(j-1, 1)));

        psi_o(:,j,k) = linsolve(A, Y);
    end
    
    psi_i = psi_o(:,:,k);

    for i = 1:n
        A = diag(2 .* a - 2 .* b - V(i,:).' ./ 2) + ...
            diag(B, 1) + ...
            diag(B, -1);

        Y = (2 .* a + 2 .* b + V(i,:).' ./ 2) .* psi_i(i,:).' ...
            - b .* (psi_i(min(i+1, n), :) + psi_i(max(i-1, 1), :)).';

        psi_o(i,:,k) = linsolve(A, Y).';
    end
    
    psi_i = psi_o(:,:,k);
end
