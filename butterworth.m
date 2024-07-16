function [NI] = butterworth(I, D0, index)
    [H, W, ~] = size(I);  % Original size
    filter = zeros(H, W);
    
    % Default filter order
    n = 2;

    % Filter design and inversion
    for j = 1:H
        for k = 1:W
            dist = sqrt((j - (H/2)).^2 + (k - (W/2)).^2);
            filter(j, k) = 1 / (1 + (dist/D0)^(2*n));
        end
    end

    if (index ~= 0)
        filter = 1 - filter;
    end

    % Frequency Domain Processing
    fi = fft2(I);
    fi = fftshift(fi);

    % Keep track of the original size
    [M, N] = size(fi);

    % Apply the filter to each channel of the frequency domain representation
    for c = 1:size(fi, 3)
        fi(:, :, c) = fi(:, :, c) .* filter;
    end

    % Inverse FFT
    NI = ifft2(ifftshift(fi));

    % Restore the original size
    NI = NI(1:H, 1:W, :);

    % Image processing steps (e.g., logarithmic transformation and normalization)
    NI = abs(NI);
    NI = log(NI);
    NI = mat2gray(NI);
end
