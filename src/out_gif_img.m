function out_gif_img(frame, k, scale, outputName)
    drawnow;
        
    img = frame2im(frame);

    [imind, cm] = rgb2ind(imresize(img, scale), 256);

    if k == 1
        imwrite(imind, cm, outputName, 'gif', ...
            'Loopcount', inf, 'DelayTime', 0.01);
    else
        imwrite(imind, cm, outputName, 'gif', ...
            'WriteMode', 'append', 'DelayTime', 0.01);
    end
end
