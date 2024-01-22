[y1,Fs1]=audioread('1543-i_n.wav');
y1=downsample(y1,700);
n = linspace(0, Fs1, numel(y1))
%cftool(n,y1)
% for i
       a12 =        0.07  
       b12 =       12.01 
       c12 =      0.4646  
       a22 =      0.3943  
       b22 =        9.51  
       c22 =      0.6343 
       a32 =       1.914  
       b32 =       14.28  
       c32 =       2.757
       a42 =      0.3387  
       b42 =        8.84  
       c42 =      -2.432 
       a52 =     0.04756  
       b52 =          21  
       c52 =      -1.458 
       a62 =     0.08849  
       b62 =         8.1  
       c62 =      0.8995  
       a72 =     0.01454  
       b72 =       18.68 
       c72 =      0.1761  
       a82 =       1.895  
       b82 =        14.3  
       c82 =     -0.3893
 f1=feval(ftype,a12,b12,c12,a22,b22,c22,a32,b32,c32,a42,b42,c42,a52,b52,c52,a62,b62,c62,a72,b72,c72,a82,b82,c82,n')     

 
 
 
[y2,Fs2]=audioread('m2.wav');
y2=downsample(y2,700);
%cftool(n,y2)
% %for e
       a11 =     0.04854  
       b11 =        27.5  
       c11 =      -2.276  
       a21 =      0.3634  
       b21 =       24.05  
       c21 =      -1.998  
       a31 =      0.2835  
       b31 =        17.6 
       c31 =      -5.661  
       a41 =      0.1002 
       b41 =        16.8  
       c41 =      -2.663  
       a51 =      0.1809 
       b51 =       23.18  
       c51 =      -2.011  
       a61 =      0.5073  
       b61 =       23.76  
       c61 =      -5.126  
       a71 =      0.2293 
       b71 =       17.93  
       c71 =      -2.493  
       a81 =     0.01664  
       b81 =       13.34  
       c81 =       3.143  
       
 
 f2=feval(ftype,a11,b11,c11,a21,b21,c21,a31,b31,c31,a41,b41,c41,a51,b51,c51,a61,b61,c61,a71,b71,c71,a81,b81,c81,n')     
     
    
[y3,Fs3] =audioread('13f-e.wav');
y3=downsample(y3,700);

%cftool(n,y3);
%for i
       a1 =      0.1758  
       b1 =       4.093  
       c1 =     -0.8486  
       a2 =      0.1719 
       b2 =       5.408  
       c2 =      -3.016 
       a3 =      0.1322  
       b3 =        9.02  
       c3 =       2.645  
       a4 =      0.1062  
       b4 =       12.18  
       c4 =      -3.356  
       a5 =     0.09961 
       b5 =       17.73  
       c5 =      -1.083  
       a6 =     0.06401  
       b6 =       26.32  
       c6 =       1.057  
       a7 =     0.09336  
       b7 =       22.06  
       c7 =       2.843  
       a8 =      0.1158  
       b8 =       14.88 
       c8 =      -2.266 

ftype=fittype('sin8')
f3=feval(ftype,a1,b1,c1,a2,b2,c2,a3,b3,c3,a4,b4,c4,a5,b5,c5,a6,b6,c6,a7,b7,c7,a8,b8,c8,n')     
    

f=f1+f2+f3
plot(f)



[yx,Fsx] = audioread('837-i_n.wav')
yx=downsample(yx,700);
nx = linspace(0, Fsx, numel(yx))
%cftool(nx,yx)
%Add the coeffcients!

      
     
ftype1=fittype('sin8')
%fx=feval(ftype1,a1x,b1x,c1x,a2x,b2x,c2x,a3x,b3x,c3x,a4x,b4x,c4x,a5x,b5x,c5x,a6x,b6x,c6x,a7x,b7x,c7x,a8x,b8x,c8x,n')



lms=dsp.LMSFilter('Method','Normalized LMS')


 [out,err,wts]=lms(f,f);
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

 

