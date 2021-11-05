clear;
clc;
close all

rdata1 = csvread('HorizontalUnloadedRobot.csv',1,0);
sdata1 = csvread('HorizontalUnloadedSimulation.csv',1,0);

%extract robot data
xReal1 = rdata1(:,1);
yReal1 = rdata1(:,2);
txReal1 = rdata1(:,3);
tyReal1 = rdata1(:,4);

%extract sim data
xSim1 = sdata1(:,1);
ySim1 = sdata1(:,2);
txSim1 = sdata1(:,3);
tySim1 = sdata1(:,4);

timeReal1 = [0:length(xReal1)-1]'/1000;
timeSim1 = [0:length(xSim1)-1]'/1000;

%plot sim real xy
figure(1)
plot(xSim1,ySim1,xReal1,yReal1,txSim1,tySim1)
hold on
plot(354,126.2,'rx')
title({'Unloaded Simulated MyPAM and Real MyPAM','Responses to a X-Direction Trajectory Demand'});
legend('Simulated MyPAm','Real MyPAM', 'Trajectory Demand', 'Start Point','Location','northwest');
xlabel('X-position (mm)');
ylabel('Y-position (mm)');
xlim([354-110,354+110]);
ylim([126.2-110,126.2+110]);

figure(2)
subplot(2,1,1)
%plot real t vs x
plot(timeSim1,xSim1,timeReal1,xReal1,timeReal1,txReal1)
legend('Simulated MyPAm','Real MyPAM', 'Trajectory Demand','Location','northwest');
xlabel('time (s)')
ylabel('X-position (mm)')
xlim([0,timeSim1(end)]);
ylim([354-110,354+110]);
title('X-position vs Time');

subplot(2,1,2)
%plot real t vs y
plot(timeSim1,ySim1,timeReal1,yReal1,timeReal1,tyReal1)
xlabel('time (s)')
ylabel('Y-position (mm)')
xlim([0,timeSim1(end)]);
ylim([126.2-20,126.2+20]);
title('Y-position vs Time');
sgtitle({'Unloaded Simulated MyPAM and Real MyPAM','Responses to a X-Direction Trajectory Demand'})


rdata2= csvread('VerticalUnloadedRobot.csv',1,0);
sdata2 = csvread('VerticalUnloadedSimulation.csv',1,0);

%extract robot data
xReal2 = rdata2(:,1);
yReal2 = rdata2(:,2);
txReal2 = rdata2(:,3);
tyReal2 = rdata2(:,4);

%extract sim data
xSim2 = sdata2(:,1);
ySim2 = sdata2(:,2);
txSim2 = sdata2(:,3);
tySim2 = sdata2(:,4);

timeReal2 = [0:length(xReal2)-1]'/1000;
timeSim2 = [0:length(xSim2)-1]'/1000;

%plot sim real xy
figure(3)
plot(xSim2,ySim2,xReal2,yReal2,txSim2,tySim2)
hold on
plot(354,126.2,'rx')
title({'Unloaded Simulated MyPAM and Real MyPAM','Responses to a Y-Direction Trajectory Demand'});
legend('Simulated MyPAm','Real MyPAM', 'Trajectory Demand', 'Start Point','Location','northwest');
xlabel('X-position (mm)');
ylabel('Y-position (mm)');
xlim([354-110,354+110]);
ylim([126.2-110,126.2+110]);

figure(4)
subplot(2,1,1)
%plot real t vs x
plot(timeSim2,xSim2,timeReal2,xReal2,timeReal2,txReal2)
xlabel('time (s)')
ylabel('X-position (mm)')
xlim([0,timeSim2(end)]);
ylim([354-25,354+25]);
title('X-position vs Time');

subplot(2,1,2)
%plot real t vs y
plot(timeSim2,ySim2,timeReal2,yReal2,timeReal2,tyReal2)
xlabel('time (s)')
ylabel('Y-position (mm)')
xlim([0,timeSim2(end)]);
ylim([126.2-120,126.2+120]);
title('Y-position vs Time');
legend('Simulated MyPAm','Real MyPAM', 'Trajectory Demand','Location','southwest');
sgtitle({'Unloaded Simulated MyPAM and Real MyPAM','Responses to a Y-Direction Trajectory Demand'})

rdata3 = csvread('HorizontalLoadedRobot.csv',1,0);
sdata3 = csvread('HorizontalLoadedSimulation.csv',1,0);

%extract robot data
xReal3 = rdata3(:,1);
yReal3 = rdata3(:,2);
txReal3 = rdata3(:,3);
tyReal3 = rdata3(:,4);

%extract sim data
xSim3 = sdata3(:,1);
ySim3 = sdata3(:,2);
txSim3 = sdata3(:,3);
tySim3 = sdata3(:,4);

timeReal3 = [0:length(xReal3)-1]'/1000;
timeSim3 = [0:length(xSim3)-1]'/1000;

%plot sim real xy
figure(5)
plot(xSim3,ySim3,xReal3,yReal3,txSim3,tySim3)
hold on
plot(354,126.2,'rx')
title({'Loaded Simulated MyPAM and Real MyPAM','Response to X-Direction Trajectory Demand'});
legend('Simulated MyPAm','Real MyPAM', 'Trajectory Demand', 'Start Point','Location','northwest');
xlabel('X-position (mm)');
ylabel('Y-position (mm)');
xlim([354-110,354+110]);
ylim([126.2-110,126.2+110]);

figure(6)
subplot(2,1,1)
%plot real t vs x
plot(timeSim3,xSim3,timeReal3,xReal3,timeReal3,txReal3)
legend('Simulated MyPAm','Real MyPAM', 'Trajectory Demand','Location','northwest');
xlabel('time (s)')
ylabel('X-position (mm)')
xlim([0,timeSim3(end)]);
ylim([354-110,354+110]);
title('X-position vs Time');

subplot(2,1,2)
%plot real t vs y
plot(timeSim3,ySim3,timeReal3,yReal3,timeReal3,tyReal3)
xlabel('time (s)')
ylabel('Y-position (mm)')
xlim([0,timeSim3(end)]);
ylim([126.2-20,126.2+20]);
title('Y-position vs Time');
sgtitle({'Loaded Simulated MyPAM and Real MyPAM','Responses to a X-Direction Trajectory Demand'})


rdata4= csvread('VerticalLoadedRobot.csv',1,0);
sdata4 = csvread('VerticalLoadedSimulation.csv',1,0);

%extract robot data
xReal4 = rdata4(:,1);
yReal4 = rdata4(:,2);
txReal4 = rdata4(:,3);
tyReal4 = rdata4(:,4);

%extract sim data
xSim4 = sdata4(:,1);
ySim4 = sdata4(:,2);
txSim4 = sdata4(:,3);
tySim4 = sdata4(:,4);

timeReal4 = [0:length(xReal4)-1]'/1000;
timeSim4 = [0:length(xSim4)-1]'/1000;

%plot sim real xy
figure(7)
plot(xSim4,ySim4,xReal4,yReal4,txSim4,tySim4)
hold on
plot(354,126.2,'rx')
title({'Loaded Simulated MyPAM and Real MyPAM','Responses to a Y-Direction Trajectory Demand'});
legend('Simulated MyPAm','Real MyPAM', 'Trajectory Demand', 'Start Point','Location','northwest');
xlabel('X-position (mm)');
ylabel('Y-position (mm)');
xlim([354-110,354+110]);
ylim([126.2-110,126.2+110]);

figure(8)
subplot(2,1,1)
%plot real t vs x
plot(timeSim4,xSim4,timeReal4,xReal4,timeReal4,txReal4)
xlabel('time (s)')
ylabel('X-position (mm)')
xlim([0,timeSim4(end)]);
ylim([354-30,354+30]);
title('X-position vs Time');

subplot(2,1,2)
%plot real t vs y
plot(timeSim4,ySim4,timeReal4,yReal4,timeReal4,tyReal4)
xlabel('time (s)')
ylabel('Y-position (mm)')
xlim([0,timeSim4(end)]);
ylim([126.2-120,126.2+120]);
title('Y-position vs Time');
legend('Simulated MyPAm','Real MyPAM', 'Trajectory Demand','Location','southwest');
sgtitle({'Loaded Simulated MyPAM and Real MyPAM','Responses to a Y-Direction Trajectory Demand'})