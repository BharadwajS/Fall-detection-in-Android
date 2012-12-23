%% 


%% Set 1 Fall data -ax
plot(fall_accel(2:93,1),fall_accel(2:93,2));

%% Set 1 Fall data -ay
plot(fall_accel(2:93,1),fall_accel(2:93,3));


%% Set 1 Fall data -az
plot(fall_accel(2:93,1),fall_accel(2:93,4));



%% Set 1 ax+ay

plot(fall_accel(2:93,1),fall_accel(2:93,2)+fall_accel(2:93,3));

%% Set 1 ax+ay+az
norm=(fall_accel(2:93,2).^2+fall_accel(2:93,3).^2+fall_accel(2:93,4).^2).^(1/2);

plot(fall_accel(2:93,1).*10^-9,(fall_accel(2:93,2).^2+fall_accel(2:93,3).^2+fall_accel(2:93,4).^2).^(1/2));


%% Set 2 ax+ay+az

plot(fall_accel(2:64,5),fall_accel(2:64,6)+fall_accel(2:64,7)+fall_accel(2:64,8));


%% Set 3 ax+ay+az

plot(fall_accel(2:125,9),fall_accel(2:125,10)+fall_accel(2:125,11)+fall_accel(2:125,12));


%% Set 4 ax+ay+az
 
plot(fall_accel(2:67,13),fall_accel(2:67,14)+fall_accel(2:67,15)+fall_accel(2:67,16));

%% Set 5 ax+ay+az


plot(fall_accel(2:119,17),fall_accel(2:119,18)+fall_accel(2:119,19)+fall_accel(2:119,20));


%% Histogram

% diff=fall_accel(3:93,1)-fall_accel(2:92,1);
diff=fall_accel(3:119,17)-fall_accel(2:118,17);
hist(diff,90);








%% Orientation -sitting 


%% Set 1
plot(orient_sittin(2:350,1),orient_sittin(2:350,2)+orient_sittin(2:350,3)+orient_sittin(2:350,4));

%% Set 2
plot(orient_sittin(2:253,5),orient_sittin(2:253,6)+orient_sittin(253,7)+orient_sittin(2:253,8));
%% Set 3
plot(orient_sittin(2:209,9),orient_sittin(2:209,10)+orient_sittin(2:209,11)+orient_sittin(2:209,12));

%% Set 4
plot(orient_sittin(2:338,13),orient_sittin(2:338,14)+orient_sittin(2:338,15)+orient_sittin(2:338,16));

%% Set 5

plot(orient_sittin(2:215,17),orient_sittin(2:215,18)+orient_sittin(2:215,19)+orient_sittin(2:215,20));


%% standing
%% set 1
plot(orient_standin(2:210,1),orient_standin(2:210,2)+orient_standin(2:210,3)+orient_standin(2:210,4));

%% set 2
plot(orient_standin(2:210,5),orient_standin(2:210,6)+orient_standin(2:210,7)+orient_standin(2:210,8));

%% set 3
plot(orient_standin(2:210,9),orient_standin(2:210,10)+orient_standin(2:210,11)+orient_standin(2:210,12));

%% Set 4

plot(orient_standin(2:203,13),orient_standin(2:203,14)+orient_standin(2:203,15)+orient_standin(2:203,16));

%% Set 5
plot(orient_standin(2:210,17),orient_standin(2:210,18)+orient_standin(2:210,19)+orient_standin(2:210,20));


