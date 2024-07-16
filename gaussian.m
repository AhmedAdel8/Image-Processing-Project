function [NI] = gaussian(I, sigma, index)
    [H, W, ~] = size(I);  % Original size
    filter = fspecial('gaussian', [H, W], sigma);
    
    if (index ~= 0)
        filter = 1 - filter;
    end

    % Frequency Domain Processing
    fi = fft2(I);
    fi = fftshift(fi);

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
    NI = log(NI + 1); % Adding 1 to avoid log(0) issues
    NI = mat2gray(NI);

end
