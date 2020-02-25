function gr_2d_anim_pot_wf(x, y, V, psi_t, t, scale, outputName)
    f = figure;
    
    [~, c] = contourf(x, y, V, linspace(0, 1, 25), 'LineStyle', 'none');
    
    hold on;
    contour(x, y, V, [0 1]);
    
    axis tight manual;
    
    xlabel('x');
    ylabel('y');
        
    for k = 1:t
        c.ZData = psi_t(:,:,k);
        
        out_gif_img(getframe(f), k, scale, outputName);
    end
    
    close(f);
end
