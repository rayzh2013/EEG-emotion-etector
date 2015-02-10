close all;
clear all;


%%
%alpha absolute
%alpha relative
%beta absolute
%% import all data from the prerecorded data
amuse = importdata('C:\Users\Hang\Desktop\Final Design Matlab\Assignment 3\amusement.mat');
anger = importdata('C:\Users\Hang\Desktop\Final Design Matlab\Assignment 3\anger.mat');
awe = importdata('C:\Users\Hang\Desktop\Final Design Matlab\Assignment 3\awe.mat');
contentment = importdata('C:\Users\Hang\Desktop\Final Design Matlab\Assignment 3\contentment.mat');
disgust = importdata('C:\Users\Hang\Desktop\Final Design Matlab\Assignment 3\disgust.mat');
excitement = importdata('C:\Users\Hang\Desktop\Final Design Matlab\Assignment 3\excitement.mat');
fear = importdata('C:\Users\Hang\Desktop\Final Design Matlab\Assignment 3\fear.mat');
sad = importdata('C:\Users\Hang\Desktop\Final Design Matlab\Assignment 3\sad.mat');
table = importdata('C:\Users\Hang\Desktop\Final Design Matlab\Assignment 3\Emotion_Table.xlsx');

%% setup
N = 1070;

table.data = table.data(:,5:12);

%% only used the first 1071 points
%% amusement

a1 = amuse.elements.alpha_absolute(1:N,2:5);
ar1 = amuse.elements.alpha_relative(1:N,2:5);
b1 = amuse.elements.beta_absolute(1:N,2:5);
br1 = amuse.elements.beta_relative(1:N,2:5);
blink1 = amuse.elements.blink(1:N,2);
d1 = amuse.elements.delta_absolute(1:N,2:5);
dr1 = amuse.elements.delta_relative(1:N,2:5);
concentration1 = amuse.elements.experimental_concentration(1:N,2);
mellow1 = amuse.elements.experimental_mellow (1:N,2);
g1 = amuse.elements.gamma_absolute(1:N,2:5);
gr1 = amuse.elements.gamma_relative(1:N,2:5);
t1 = amuse.elements.theta_absolute(1:N,2:5);
tr1 = amuse.elements.theta_relative(1:N,2:5);
ratio1 = b1./a1;
train = horzcat(a1,ar1,b1,br1,blink1,d1,dr1,concentration1,mellow1,g1,gr1,t1,tr1);
target1 = table.data(1,:);
for i = 1:N
target1(i,:) = table.data (1,:);
end
%% Anger

a2 = anger.elements.alpha_absolute(1:N,2:5);
ar2 = anger.elements.alpha_relative(1:N,2:5);
b2 = anger.elements.beta_absolute(1:N,2:5);
br2 = anger.elements.beta_relative(1:N,2:5);
blink2 = anger.elements.blink(1:N,2);
d2 = anger.elements.delta_absolute(1:N,2:5);
dr2 = anger.elements.delta_relative(1:N,2:5);
concentration2 = anger.elements.experimental_concentration(1:N,2);
mellow2 = anger.elements.experimental_mellow (1:N,2);
g2 = anger.elements.gamma_absolute(1:N,2:5);
gr2 = anger.elements.gamma_relative(1:N,2:5);
t2 = anger.elements.theta_absolute(1:N,2:5);
tr2 = anger.elements.theta_relative(1:N,2:5);

train = vertcat(train,horzcat(a2,ar2,b2,br2,blink2,d2,dr2,concentration2,mellow2,g2,gr2,t2,tr2));
for i = (N+1):2*N
target1(i,:) = table.data (2,:);
end

%% awe

a3 = awe.elements.alpha_absolute(1:N,2:5);
ar3 = awe.elements.alpha_relative(1:N,2:5);
b3 = awe.elements.beta_absolute(1:N,2:5);
br3 = awe.elements.beta_relative(1:N,2:5);
blink3 = awe.elements.blink(1:N,2);
d3 = awe.elements.delta_absolute(1:N,2:5);
dr3 = awe.elements.delta_relative(1:N,2:5);
concentration3 = awe.elements.experimental_concentration(1:N,2);
mellow3 = awe.elements.experimental_mellow(1:N,2);
g3 = awe.elements.gamma_absolute(1:N,2:5);
gr3 = awe.elements.gamma_relative(1:N,2:5);
t3 = awe.elements.theta_absolute(1:N,2:5);
tr3 = awe.elements.theta_relative(1:N,2:5);

train = vertcat(train,horzcat(a3,ar3,b3,br3,blink3,d3,dr3,concentration3,mellow3,g3,gr3,t3,tr3));
for i = (2*N+1):3*N
target1(i,:) = table.data (3,:);
end
%% contentment

a4 = contentment.elements.alpha_absolute(1:N,2:5);
ar4 = contentment.elements.alpha_relative(1:N,2:5);
b4 = contentment.elements.beta_absolute(1:N,2:5);
br4 = contentment.elements.beta_relative(1:N,2:5);
blink4 = contentment.elements.blink(1:N,2);
d4 = contentment.elements.delta_absolute(1:N,2:5);
dr4 = contentment.elements.delta_relative(1:N,2:5);
concentration4 = contentment.elements.experimental_concentration(1:N,2);
mellow4 = contentment.elements.experimental_mellow(1:N,2);
g4 = contentment.elements.gamma_absolute(1:N,2:5);
gr4 = contentment.elements.gamma_relative(1:N,2:5);
t4 = contentment.elements.theta_absolute(1:N,2:5);
tr4 = contentment.elements.theta_relative(1:N,2:5);

train = vertcat(train,horzcat(a4,ar4,b4,br4,blink4,d4,dr4,concentration4,mellow4,g4,gr4,t4,tr4));
for i = (3*N+1):4*N
target1(i,:) = table.data (4,:);
end

%% disgust

a5 = disgust.elements.alpha_absolute(1:N,2:5);
ar5 = disgust.elements.alpha_relative(1:N,2:5);
b5 = disgust.elements.beta_absolute(1:N,2:5);
br5 = disgust.elements.beta_relative(1:N,2:5);
blink5 = disgust.elements.blink(1:N,2);
d5 = disgust.elements.delta_absolute(1:N,2:5);
dr5 = disgust.elements.delta_relative(1:N,2:5);
concentration5 = disgust.elements.experimental_concentration(1:N,2);
mellow5 = disgust.elements.experimental_mellow(1:N,2);
g5 = disgust.elements.gamma_absolute(1:N,2:5);
gr5 = disgust.elements.gamma_relative(1:N,2:5);
t5 = disgust.elements.theta_absolute(1:N,2:5);
tr5 = disgust.elements.theta_relative(1:N,2:5);

train = vertcat(train,horzcat(a5,ar5,b5,br5,blink5,d5,dr5,concentration5,mellow5,g5,gr5,t5,tr5));
for i = (4*N+1):5*N
target1(i,:) = table.data (5,:);
end

%% excitement

a6 = excitement.elements.alpha_absolute(1:N,2:5);
ar6 = excitement.elements.alpha_relative(1:N,2:5);
b6 = excitement.elements.beta_absolute(1:N,2:5);
br6 = excitement.elements.beta_relative(1:N,2:5);
blink6 = excitement.elements.blink(1:N,2);
d6 = excitement.elements.delta_absolute(1:N,2:5);
dr6 = excitement.elements.delta_relative(1:N,2:5);
concentration6 = excitement.elements.experimental_concentration(1:N,2);
mellow6 = excitement.elements.experimental_mellow(1:N,2);
g6 = excitement.elements.gamma_absolute(1:N,2:5);
gr6 = excitement.elements.gamma_relative(1:N,2:5);
t6 = excitement.elements.theta_absolute(1:N,2:5);
tr6 = excitement.elements.theta_relative(1:N,2:5);

train = vertcat(train,horzcat(a6,ar6,b6,br6,blink6,d6,dr6,concentration6,mellow6,g6,gr6,t6,tr6));
for i = (5*N+1):6*N
target1(i,:) = table.data (6,:);
end

%% fear

a7 = fear.elements.alpha_absolute(1:N,2:5);
ar7 = fear.elements.alpha_relative(1:N,2:5);
b7 = fear.elements.beta_absolute(1:N,2:5);
br7 = fear.elements.beta_relative(1:N,2:5);
blink7 = fear.elements.blink(1:N,2);
d7 = fear.elements.delta_absolute(1:N,2:5);
dr7 = fear.elements.delta_relative(1:N,2:5);
concentration7 = fear.elements.experimental_concentration(1:N,2);
mellow7 = fear.elements.experimental_mellow (1:N,2);
g7 = fear.elements.gamma_absolute(1:N,2:5);
gr7 = fear.elements.gamma_relative(1:N,2:5);
t7 = fear.elements.theta_absolute(1:N,2:5);
tr7 = fear.elements.theta_relative(1:N,2:5);

train = vertcat(train,horzcat(a7,ar7,b7,br7,blink7,d7,dr7,concentration7,mellow7,g7,gr7,t7,tr7));
for i = (6*N+1):7*N
target1(i,:) = table.data (7,:);
end


%% sad
a8 = sad.elements.alpha_absolute(1:N,2:5);
ar8 = sad.elements.alpha_relative(1:N,2:5);
b8 = sad.elements.beta_absolute(1:N,2:5);
br8 = sad.elements.beta_relative(1:N,2:5);
blink8 = sad.elements.blink(1:N,2);
d8 = sad.elements.delta_absolute(1:N,2:5);
dr8 = sad.elements.delta_relative(1:N,2:5);
concentration8 = sad.elements.experimental_concentration(1:N,2);
mellow8 = sad.elements.experimental_mellow (1:N,2);
g8 = sad.elements.gamma_absolute(1:N,2:5);
gr8 = sad.elements.gamma_relative(1:N,2:5);
t8 = sad.elements.theta_absolute(1:N,2:5);
tr8 = sad.elements.theta_relative(1:N,2:5);

train = vertcat(train,horzcat(a8,ar8,b8,br8,blink8,d8,dr8,concentration8,mellow8,g8,gr8,t8,tr8));
for i = (7*N+1):8*N
target1(i,:) = table.data (8,:);
end

