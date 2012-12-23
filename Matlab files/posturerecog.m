%% Using accel_set1 as basis

%params
windowSize = 35;
% hnsize=2;
th=10;   %% remove dc
th1=2;   %% (to detect walking)
count=0;
sigma=0.5; %% remove jitter
g1=9.8;    %% acceleration due to gravity
tmin=0;
tmax=0;


%  a=accel_set1;
% a=accel_sitting_set2;
% a=accel_standing_set2;
% a=accel_walking_set2;
% a=accel_sitting_set3;
% a=accel_standing_set3;
% a=accel_walking_set3;
a=accel_set4;
% a=accel_set5;
% a=accel_set6;
% a=accel_set7;
% a=accel_set8;
% a=accel_set9;
% a=accel_sitting_set10;
% a=accel_standing_set10;
% a=accel_walking_set10;
% a=accel_set11;
% a=accel_sitting_set12;
% a=accel_standing_set12;
% a=accel_walking_set12;
% a=accel_set13;
% a=accel_set14;
% a=accel_sitting_set15;
% a=accel_standing_set15;
% a=accel_walking_set15;
% a=accel_set16;
% a=accel_sitting_set17;
% a=accel_standing_set17;
% a=accel_walking_set17;
% a=accel_set18;
% a=accel_set19;
% a=accel_set20;
%%


a_vec=sqrt(a(:,1).^2+a(:,2).^2+a(:,3).^2);

% a_vec=filter(ones(1,hnsize)/hnsize,1,a_vec);


sig=a(:,2)';
l1=length(sig);
decision_signal=zeros(1,l1);

% var1=zeros(1,l1);
% w=0;
% for i=1:l1
%  var1(i)=var(sig(i:i+w));
%  if(w<=windowSize)
%      w=w+1;
%  end
% end
 a_vec=a_vec-th;
zrc=zeros(1,l1);
for w=0:l1-windowSize
   
  for i=w+2:w+windowSize
    
    if((a_vec(i)<sigma )&&(a_vec(i-1)>sigma ))
     count=count+1;
    end
  end
zrc(1+w:windowSize+w)=count;
count=0;
end

for i=1:l1
   if(zrc(i)==0) 
    if(abs(sig(i))<5)
        decision_signal(i)=5;  %sitting
    else
        decision_signal(i)=10;  %standing
    end
   else
      if(zrc(i)>th1)
        decision_signal(i)=15;   % walking  
      else
        decision_signal(i)=0;    % none
      end
   end
end

a_vec=a_vec+th;
fall_decisionsignal=zeros(1,l1);

for w=0:l1-windowSize
   
      [tmin tmax]=falldetection(a_vec(w+1:w+windowSize));
      if(tmin~=tmax)
         fall_decisionsignal(tmin+w:tmax+w)=1;
         
      end
      
end
i=0;
j=i;
% i=375;
% j=210;
% i=841;
% x=(i:l1-1).*0.06;
% plot(x,a(i+1:l1,2));
% xlabel('t in sec->')
plot((i:l1-1).*0.06,a_vec(i+1:l1),(i:l1-1).*0.06,th,(i:l1-1).*0.06,th1+10,(i:l1-1).*0.06,sigma+10);
% plot((i:l1-1-j).*0.06,a_vec,(i:l1-1-j).*0.06,fall_decisionsignal(i+1:l1-j));
hleg1 = legend('L2 norm of acceleration vector','Output of Fall detection module');
ylabel('Acceleration vector norm in m/sec^2->')

xlabel('t(in sec)->')
% hleg1 = legend('L2 Norm of Acceleration vector','State of system');
% hleg1 = legend('L2 Norm of Acceleration vector','Mean value');