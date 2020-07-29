function speechrecognition(filename)
% ---Correlation Method---- 
voice=audioread('test1.wav');
x=voice; 
x=x';
x=x(1,:);
x=x';
y1=audioread('fb.wav');
y1=y1';
y1=y1(1,:);
y1=y1';
z1=xcorr(x,y1);
m1=max(z1);
l1=length(z1);
t1=-((l1-1)/2):1:((l1-1)/2);
t1=t1';
%subplot(3,2,1);
plot(t1,z1);
y2=audioread('myproject.wav');
y2=y2';
y2=y2(1,:);
y2=y2';
z2=xcorr(x,y2);
m2=max(z2);
l2=length(z2);
t2=-((l2-1)/2):1:((l2-1)/2);
t2=t2';
%subplot(3,2,2);
figure
plot(t2,z2);
y3=audioread('gear.wav');
y3=y3';
y3=y3(1,:);
y3=y3';
z3=xcorr(x,y3);
m3=max(z3);
l3=length(z3);
t3=-((l3-1)/2):1:((l3-1)/2);
t3=t3';
%subplot(3,2,3);
figure
plot(t3,z3);
%P=Filter(voice);
%y4=P;
y4=audioread('goodmrng.wav');
y4=y4';
y4=y4(1,:);
y4=y4';
z4=xcorr(x,y4);
m4=max(z4);
l4=length(z4);
t4=-((l4-1)/2):1:((l4-1)/2);
t4=t4';
%subplot(3,2,4);
figure
plot(t4,z4);
y5=audioread('close.wav');
y5=y5';
y5=y5(1,:);
y5=y5';
z5=xcorr(x,y5);
m5=max(z5);
l5=length(z5);
t5=-((l5-1)/2):1:((l5-1)/2);
t5=t5';
%subplot(3,2,5);
figure 
plot(t5,z5);
y6=audioread('open.wav');
y6=y6';
y6=y6(1,:);
y6=y6';
z6=xcorr(x,y6);
m6=max(z6);
l6=length(z6);
t6=-((l6-1)/2):1:((l6-1)/2);
t6=t6';
%subplot(3,2,6);
figure
plot(t6,z6);
m7=5;
a=[m1 m2 m3 m4 m5 m6 m7];
m=max(a);
h=audioread('bubble.wav');
if m<=m1
    soundsc(audioread('fb.wav'),8192)
    pause(2)    
    soundsc(h,8192)
       msgbox(' facebook ');
elseif m<=m2
    soundsc(audioread('myproject.wav'),8192)
    pause(2)    
    soundsc(h,8192)
        msgbox(' my project ');
elseif m<=m3
    soundsc(audioread('gear.wav'),4000)
    pause(2)    
    soundsc(h,8192)
        msgbox(' change gear to first ');
elseif m<=m4
    soundsc(audioread('goodmrng.wav'),8192)
    pause(2) 
        soundsc(h,8192)
msgbox(' goodmorning ');
elseif m<=m5
    soundsc(audioread('close.wav'),8192)
    pause(2)    
    soundsc(h,8192)
msgbox(' close the door ');
elseif m<=m6
    soundsc(audioread('open.wav'),8192)
    pause(2)    
    soundsc(h,8192)
msgbox(' open the door ');
else
   soundsc(audioread('tryagain.wav'),8192)
   msgbox(' please try again ');
   
end
