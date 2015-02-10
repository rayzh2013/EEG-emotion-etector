%% MATLAB Client
function Real_time_Processing_Solution

t = tcpip('127.0.0.1', 5204, 'NetworkRole', 'client');
t2 = tcpip('127.0.0.1', 5205, 'NetworkRole', 'client');
t3 = tcpip('127.0.0.1', 5206, 'NetworkRole', 'client');
t4 = tcpip('127.0.0.1', 5207, 'NetworkRole', 'client');
%fopen(t)
%fopen(t2)
%fopen(t3)
%fopen(t4)
%fwrite(t, data);

%% Setup interface object to read chunks of data
% Set the number of bytes to read at a time
bytesToRead = 43;


% Define a callback function to be executed when desired number of bytes
% are available in the input buffer
%t.BytesAvailableFcn = {@localReadAndPlot,plotHandle,bytesToRead};
t.BytesAvailableFcnMode = 'byte';
t.BytesAvailableFcnCount = bytesToRead;
t.BytesAvailableFcn = {@localReadAndPlot,bytesToRead};

fopen(t)


%%
%%  Clean up the interface object
%fclose(t)
%delete (t);
%clear t;


% Implement the bytes available callback
% the callback function includes everything from the artifact rejecter to
% neural network classifier.
%% 
function localReadAndPlot(t,~,bytesToRead)

% Read the desired number of data bytes
data = fread(t,bytesToRead);
data = data /100;
%disp (data);
%% initialize parameters

%% apply the neural network functions
%P(1,:) = Forecast_Fcn(P(1,:));
y = Emo_Classification(data);
%y =(y>=0.5) ;%%0.5 is the decision boundary
%disp(y);


