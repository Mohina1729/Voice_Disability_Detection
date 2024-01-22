[y1,Fs1]=audioread('1543-u_n.wav');
y1=downsample(y1,700);
n = linspace(0, Fs1, numel(y1))
%cftool(n,y1)
       %for u
       a12 =      0.1324  
       b12 =       9.667  
       c12 =      0.9765  
       a22 =     0.02294  
       b22 =       11.26  
       c22 =       1.728  
       a32 =      0.3442 
       b32 =       21.84  
       c32 =     -0.8241 
       a42 =     0.01172  
       b42 =       7.374 
       c42 =      -2.731  
       a52 =    0.008299  
       b52 =       13.42  
       c52 =      -3.248  
       a62 =     0.03018  
       b62 =       19.72  
       c62 =     -0.9675  
       a72 =     0.01125 
       b72 =        29.4  
       c72 =       -1.07  
       a82 =      0.3439  
       b82 =       21.83  
       c82 =       2.304 


 ftype=fittype('sin8') 
 f1=feval(ftype,a12,b12,c12,a22,b22,c22,a32,b32,c32,a42,b42,c42,a52,b52,c52,a62,b62,c62,a72,b72,c72,a82,b82,c82,n')     

 
 
 
[y2,Fs2]=audioread('m3.wav');
y2=downsample(y2,700);
%cftool(n,y2)
%for u sound
       a11 =        17.7  
       b11 =       21.55  
       c11 =      0.6865
       a21 =     0.02787 
       b21 =       18.09  
       c21 =       2.981 
       a31 =        17.7  
       b31 =       21.55  
       c31 =      -2.453  
       a41 =     0.02818  
       b41 =       24.59  
       c41 =       1.469  
       a51 =     0.02114 
       b51 =      0.8801 
       c51 =     -0.4363  
       a61 =     0.02089  
       b61 =       9.627  
       c61 =       1.973 
       a71 =     0.01251  
       b71 =       16.41  
       c71 =      -2.133 
       a81 =     0.01607  
       b81 =       2.501  
       c81 =       1.738

f2=feval(ftype,a11,b11,c11,a21,b21,c21,a31,b31,c31,a41,b41,c41,a51,b51,c51,a61,b61,c61,a71,b71,c71,a81,b81,c81,n')     
     
    


f=f1+f2
plot(f)


%test sample
[yx,Fsx] = audioread('837-a_n.wav')
yx=downsample(yx,700);
nx = linspace(0, Fsx, numel(yx))
%cftool(nx,yx)
%Add coefficients!
    
 
     
ftype1=fittype('sin8')
fx=feval(ftype1,a1x,b1x,c1x,a2x,b2x,c2x,a3x,b3x,c3x,a4x,b4x,c4x,a5x,b5x,c5x,a6x,b6x,c6x,a7x,b7x,c7x,a8x,b8x,c8x,n')



lms=dsp.LMSFilter('Method','Normalized LMS')


 [out,err,wts]=lms(fx,f);
 subplot(3,1,1)
 plot(f)
 title("desired")
 
 subplot(3,1,2)
 plot(f1)
 title('input')
 
 subplot(3,1,3)
 plot(out)
 title("output")

 R=corrcoef(out,f)
 R=R(1,2)

 

