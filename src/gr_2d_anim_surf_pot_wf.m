function gr_2d_anim_surf_pot_wf(x, y, V, psi_t, t, red, orange, cyan, blue, scale, outputName)
    z_max = max(psi_t, [], 'all');

    f = figure;
    
    [~, sPsi] = gr_2d_surf_pot_wf(x, y, V, V, red, orange, cyan, blue);
    
    [az, el] = view(3);
    
    axis tight manual;

    AZ = linspace(az + 180, az + 180, t);
    
    xlabel('x');
    ylabel('y');
        
    zlim([0 z_max]);

    for k = 1:t
        sPsi.ZData = psi_t(:,:,k);
        view(AZ(k), el);
        
        drawnow;
        
        out_gif_img(getframe(f), k, scale, outputName);
    end
    
    close(f);
end
