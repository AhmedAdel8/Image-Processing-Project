function [out_img] = contrast_stretching(img)
    [H, W, L] = size(img);
    out_img = zeros(H, W, L, 'uint8');  % Initialize output image with uint8
    
    old_min = double(min(min(img)));
    old_max = double(max(max(img)));
    new_min = double(0);
    new_max = double(255);
    
    m = (new_max - new_min) / (old_max - old_min);

    for i = 1:H   
        for j = 1:W
            % Use .* for element-wise multiplication
            out_img(i, j, :) = uint8((double(img(i, j, :)) - old_min) .* m + new_min);
        end
    end
end
