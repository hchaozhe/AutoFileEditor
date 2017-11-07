%% test the auto edit
clear all; clc;close all
% fid=fopen('test_func.m','a');
% fwrite(fid,'Test');
% fclose(fid);

%% 
% Read txt into cell A
% filename='test_func.m';
% AutoEditor(filename,[6],{'dx=cos(x*y*z)*(n+m+p);'});
%% Test on a large file
% filename='C:\Users\hchaozhe\Documents\TruckSim\TruckFeedData\Sfunctions\MPC_ipopt_slack.m';
% dT=0.01;
% AutoEditor(filename,[86],{['block.SampleTimes = [',num2str(dT), ' 0];  % should be the same as dT']});
