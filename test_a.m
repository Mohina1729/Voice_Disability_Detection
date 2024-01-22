[y1,Fs1]=audioread('1543-a_n.wav');
y1=downsample(y1,700);
n = linspace(0, Fs1, numel(y1))
%cftool(n,y1)
% %for a
       a12 =      0.2292  
       b12 =        32.5  
       c12 =      0.1592  
       a22 =       0.158  
       b22 =       29.42  
       c22 =      -1.257  
       a32 =      0.1448  
       b32 =       26.14
       c32 =     -0.6921  
       a42 =      0.2387 
       b42 =       33.13  
       c42 =       2.589  
       a52 =     0.06178  
       b52 =       9.987  
       c52 =      -2.005  
       a62 =     0.09406  
       b62 =       24.94  
       c62 =      -3.121  
       a72 =     0.03064 
       b72 =       7.011  
       c72 =       2.022  
       a82 =     0.03221  
       b82 =       14.98  
       c82 =       1.739

  
 f1=feval(ftype,a12,b12,c12,a22,b22,c22,a32,b32,c32,a42,b42,c42,a52,b52,c52,a62,b62,c62,a72,b72,c72,a82,b82,c82,n')     

 
 
 
[y2,Fs2]=audioread('m1.wav');
y2=downsample(y2,700);
%cftool(n,y2)
%for a sound
       a11 =     0.04841  
       b11 =       24.34  
       c11 =      0.7269  
       a21 =     0.04877  
       b21 =       19.13  
       c21 =       1.438  
       a31 =     0.04441
       b31 =       15.27  
       c31 =       3.022  
       a41 =      0.0485  
       b41 =       12.45 
       c41 =       1.722  
       a51 =     0.05942  
       b51 =       15.83  
       c51 =    -0.07625  
       a61 =     0.02453  
       b61 =       6.347  
       c61 =       1.004  
       a71 =     0.02714  
       b71 =       28.59  
       c71 =       -1.86  
       a81 =       7.082 
       b81 =        33.1  
       c81 =       -1.57

 f2=feval(ftype,a11,b11,c11,a21,b21,c21,a31,b31,c31,a41,b41,c41,a51,b51,c51,a61,b61,c61,a71,b71,c71,a81,b81,c81,n')     
     
    

f=f1+f2
plot(f)



[yx,Fsx] = audioread('835-a_n.wav')
yx=downsample(yx,700);
nx = linspace(0, Fsx, numel(yx))
%cftool(nx,yx)
  a1x =       4.316  
       b1x =        33.1 
       c1x =       1.576  
       a2x =      0.2036  
       b2x =       30.94 
       c2x =      0.9196  
       a3x =     0.06901  
       b3x =       21.42  
       c3x =        1.77 
       a4x =     0.06702  
       b4x =       26.37  
       c4x =       3.191  
       a5x =     0.07118  
       b5x =       13.64
       c5x =      0.6701  
       a6x =     0.06664  
       b6x =       5.185  
       c6x =      -0.772  
       a7x =     0.07279  
       b7x =       8.126  
       c7x =      -1.456 
       a8x =     0.06511  
       b8x =        10.7 
       c8x =     -0.6814 
 
   


      
    
 
     
ftype1=fittype('sin8')
fx=feval(ftype1,a1x,b1x,c1x,a2x,b2x,c2x,a3x,b3x,c3x,a4x,b4x,c4x,a5x,b5x,c5x,a6x,b6x,c6x,a7x,b7x,c7x,a8x,b8x,c8x,n')



lms=dsp.LMSFilter('Method','Normalized LMS')
%lms=dsp.LMSFilter()

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

 

