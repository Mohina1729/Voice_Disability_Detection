[signal,fs] = audioread('healthy female.wav');
info=audioinfo('healthy female.wav');
signal = signal(:,1);
subplot(1,3,1)
%spectrogram(signal);
time=(1:length(signal))/fs;  % Time vector on x-axis 
plot(time,signal);xlabel('Time');
ylabel('Amplitude'); 
title('Healthy');

[signal1,fs1] = audioread('Rhinophonia female.wav');
signal1 = signal1(:,1);
subplot(1,3,2)
%spectrogram(signal1);
time1=(1:length(signal1))/fs1;  
plot(time1,signal1);xlabel('Time');
ylabel('Amplitude');
title('Rhinophonia')

[signal2,fs2] = audioread('aphonia female.wav');
signal2 = signal2(:,1);
subplot(1,3,3)
%spectrogram(signal2);
time2=(1:length(signal2))/fs2;  
plot(time2,signal2);xlabel('Time');
ylabel('Amplitude');
title('Aphonia')


