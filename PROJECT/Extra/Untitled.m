clc
clear all
close all
warning off
Fs=15000;
ch=1;
datatype='uint8';
nbits=16;
Nseconds=10;
recorder=audiorecorder(Fs,nbits,ch);
disp('Start Speaking')
recordblocking(recorder,Nseconds);
disp('End of Recording');
x=getaudiodata(recorder,datatype);
audiowrite('test.wav',x,Fs);
filename="test.wav";
samples=[Fs,10*Fs];
[y,Fs]=audioread('test.wav',samples);
y=y(:,1);
Fs3=11000;
sound(y,Fs3);
