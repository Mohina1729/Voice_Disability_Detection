[x0,Fs] = audioread('1543-a_n.wav');
x0 = x0(:,1);
[Y0,G] = pwelch(x0,hamming(512));
plot(G,10*log10(Y0));
grid on 
[x50,Fs] = audioread('1933-a_n.wav');
x50 = x50(:,1);
[Y50,G2] = pwelch(x50,hamming(512));
hold on ;
plot(G2,10*log10(Y50),'r');

[x51,Fs1] = audioread('937-a_n.wav');
x51 = x51(:,1);
[Y51,G1] = pwelch(x51,hamming(512));
hold on ;
plot(G1,10*log10(Y51),'g');

title('Welch Power Spectral Density Estimate');
xlabel('rad/sample')
ylabel('dB / (rad/sample)')


