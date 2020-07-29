 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% Voice Record %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This program records the voice
function [norm_voice,h] = Voice_Rec(~)
option = 'n';
option_rec = 'n';
record_len = 1;         %Record time length in seconds
sample_freq = 8192;    %Sampling frequency in Hertz
sample_time = sample_freq * record_len;
%'Get ready to record your voice';
name = input('Enter the file name you want to save the file with: ','s');
file_name = sprintf('%s.wav',name);
option_rec = input('Press y to record: ','s');
if option_rec=='y'
    while option=='n'
        input('Press enter when ready to record--> ');
        record = audiorecorder( sample_freq,8,1);       %Records the input through the sound card to the variable with specified sampling frequency
        recordblocking(record,5);
        x=getaudiodata(record);
        input('Press enter to listen the recorded voice--> ');
        sound(x, sample_freq);
        option = input('Press y to save or n to record again: ','s');
    end    
    audiowrite(file_name,x,sample_freq);  %Save the recorded data to a file with the specified file name in .wav format
end
