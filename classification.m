function classification
    signal = audioread('multiple_sines1.wav'); %read in signal
    signal = signal(:,1);%convert to mono if necessary
    fft_size = 4096;
    j = 1;
    disp(mirduration(signal));
    for i = 1 : fft_size : length(signal)-fft_size %iterate through each frame
        spectrum = fft( signal( i : i + fft_size), fft_size); %set spectrum to change each iteration
        f = (0:fft_size/2-1)*fs/fft_size;%create frequency vector
        z = abs(spectrum(1:fft_size/2));%obtain amplitudes of each frequency for sample size
    end
                
  