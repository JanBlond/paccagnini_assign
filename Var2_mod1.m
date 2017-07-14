%%Exercise Var_2

%load dataset of US monthly data
clc
clear
cd 'D:\JansPlatte\IMTLucca\courses\Macroeconomics\Paccagnini\final\assignment_solution\data'
[data,names]=xlsread('20170713_Vardataset.xlsx',1,'','basic');
cd 'D:\JansPlatte\IMTLucca\courses\Macroeconomics\Paccagnini\final\assignment_solution\matlab code'

time=data(:,1);
CPI=data(:,2);
IP=data(:,3);
int=data(:,4);

plot(CPI)
title('Consumer Price Index')

plot(IP)      
title('Industrial Production')

plot(int)      
title('Short Term interest rate')

%Take log of CPI and IP (levels too high for comparison with interest rate)
cpi=log(CPI);
ip=log(IP);
%From observation of the time series: All variables seem non stationary- 

cpi_diff=diff(cpi);
ip_diff=diff(ip);
int_diff=diff(int);
    

   %show difference plots 
plot(cpi_diff)
title('Consumer Price Index first differences')

plot(ip_diff)       % plot using + markers
title('Industrial Production first differences')


% After differencing series  and taking the logs of IP and CPI, the data is ready to
% use for VAR analysis



