close all;
clear;
clc;

%read in sim data
sdata1 = csvread('HorizontalUnloadedSimulation.csv',1,0);

%extract sim data
xSim1 = sdata1(:,1);
ySim1 = sdata1(:,2);
txSim1 = sdata1(:,3);
tySim1 = sdata1(:,4);

%read in robot data 1
rdata1 = csvread('unloadedX1.csv',1,0);

%extract robot data 1
xReal1 = rdata1(:,1);
yReal1 = rdata1(:,2);
txReal1 = rdata1(:,3);
tyReal1 = rdata1(:,4);

%read in robot data 2
rdata2 = csvread('unloadedX2.csv',1,0);

%extract robot data 2
xReal2 = rdata2(:,1);
yReal2 = rdata2(:,2);
txReal2 = rdata2(:,3);
tyReal2 = rdata2(:,4);

%read in robot data 3
rdata3 = csvread('unloadedX3.csv',1,0);

%extract robot data 3
xReal3 = rdata3(:,1);
yReal3 = rdata3(:,2);
txReal3 = rdata3(:,3);
tyReal3 = rdata3(:,4);

%read in robot data 4
rdata4 = csvread('unloadedX4.csv',1,0);

%extract robot data 4
xReal4 = rdata4(:,1);
yReal4 = rdata4(:,2);
txReal4 = rdata4(:,3);
tyReal4 = rdata4(:,4);


%read in robot data 5
rdata5 = csvread('unloadedX5.csv',1,0);

%extract robot data 5
xReal5 = rdata5(:,1);
yReal5 = rdata5(:,2);
txReal5 = rdata5(:,3);
tyReal5 = rdata5(:,4);


timeReal1 = (0:length(xReal1)-1)'/1000;
timeSim1 = (0:length(xSim1)-1)'/1000;

for i = 1:length(timeSim1)
    aveX(i) = mean([xReal1(i),xReal2(i),xReal3(i),xReal4(i),xReal5(i)]);
    aveY(i) = mean([yReal1(i),yReal2(i),yReal3(i),yReal4(i),yReal5(i)]);   
end

%plot sim real xy
figure(1)
plot(txSim1,tySim1,'r',354,126.2,'rx')
hold on
plot(xReal1,yReal1,'-.','Color',[0 0.4470 0.7410])
hold on
plot(xReal2,yReal2,'-.','Color',[0.8500 0.3250 0.0980])
hold on
plot(xReal3,yReal3,'-.','Color',[0.9290 0.6940 0.1250])
hold on
plot(xReal4,yReal4,'-.','Color',[0.4660 0.6740 0.1880])
hold on
plot(xReal5,yReal5,'-.','Color',[0.6350 0.0780 0.1840])
hold on
plot(xSim1,ySim1,'k')
hold on
plot(aveX, aveY)
title({'Unloaded Simulated MyPAM and Real MyPAM','Responses to a X-Direction Trajectory Demand'});
legend('Trajectory Demand','Start Point','MyPAM R1','MyPAM R2','MyPAM R3','MyPAM R4','MyPAM R5','Simulated MyPAM','Location','south');
xlabel('X-position (mm)');
ylabel('Y-position (mm)');
xlim([354-110,354+110]);
ylim([126.2-110,126.2+110]);

figure(2)
subplot(2,1,1)
%plot real t vs x
plot(timeReal1,txReal1,'r')
hold on
plot(timeReal1,xReal1,'-.','Color',[0 0.4470 0.7410])
hold on
plot(timeReal1,xReal2,'-.','Color',[0.8500 0.3250 0.0980])
hold on
plot(timeReal1,xReal3,'-.','Color',[0.9290 0.6940 0.1250])
hold on
plot(timeReal1,xReal4,'-.','Color',[0.4660 0.6740 0.1880])
hold on
plot(timeReal1,xReal5,'-.','Color',[0.6350 0.0780 0.1840])
hold on
plot(timeSim1,xSim1,'k');
hold on
plot(timeSim1,aveX)
legend({'Trajectory Demand','MyPAM R1','MyPAM R2','MyPAM R3','MyPAM R4','MyPAM R5','Simulated MyPAM'},'Location','north','NumColumns',2);
xlabel('time (s)')
ylabel('X-position (mm)')
xlim([0,timeSim1(end)]);
ylim([354-110,354+110]);
title('X-position vs Time');

subplot(2,1,2)
%plot real t vs y
plot(timeReal1,tyReal1,'r')
hold on
plot(timeReal1,yReal1,'-.','Color',[0 0.4470 0.7410])
hold on
plot(timeReal1,yReal2,'-.','Color',[0.8500 0.3250 0.0980])
hold on
plot(timeReal1,yReal3,'-.','Color',[0.9290 0.6940 0.1250])
hold on
plot(timeReal1,yReal4,'-.','Color',[0.4660 0.6740 0.1880])
hold on
plot(timeReal1,yReal5,'-.','Color',[0.6350 0.0780 0.1840])
hold on
plot(timeSim1,ySim1,'k');
hold on
plot(timeSim1,aveY)
xlabel('time (s)')
ylabel('Y-position (mm)')
xlim([0,timeSim1(end)]);
ylim([126.2-20,126.2+20]);
title('Y-position vs Time');
sgtitle({'Unloaded Simulated MyPAM and Real MyPAM','Responses to a X-Direction Trajectory Demand'})


%%%%%

%plot sim real xy
figure(3)
plot(txSim1,tySim1,'r',354,126.2,'rx')
hold on
plot(xSim1,ySim1,'k')
hold on
plot(aveX, aveY,'Color',[0.8500 0.3250 0.0980])
title({'Unloaded Simulated MyPAM and Real MyPAM','Average Response to a X-Direction Trajectory Demand'});
legend('Trajectory Demand','Start Point','Simulated MyPAM Response','MyPAM Average Response','Location','northwest');
xlabel('X-position (mm)');
ylabel('Y-position (mm)');
xlim([354-110,354+110]);
ylim([126.2-110,126.2+110]);

figure(4)
subplot(2,1,1)
%plot real t vs x
plot(timeReal1,txReal1,'r')
hold on
plot(timeSim1,xSim1,'k');
hold on
plot(timeSim1,aveX,'Color',[0.8500 0.3250 0.0980])
xlabel('time (s)')
ylabel('X-position (mm)')
xlim([0,timeSim1(end)]);
ylim([354-110,354+110]);
title('X-position vs Time');

subplot(2,1,2)
%plot real t vs y
plot(timeReal1,tyReal1,'r')
hold on
plot(timeSim1,ySim1,'k');
hold on
plot(timeSim1,aveY,'Color',[0.8500 0.3250 0.0980])
legend({'Trajectory Demand','Simulated MyPAM','Average MyPAM Response'},'Location','south','NumColumns',2);
xlabel('time (s)')
ylabel('Y-position (mm)')
xlim([0,timeSim1(end)]);
ylim([126.2-20,126.2+20]);
title('Y-position vs Time');
sgtitle({'Unloaded Simulated MyPAM and Real MyPAM Average','Response to a X-Direction Trajectory Trajectory Demand'})