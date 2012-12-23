

norm1=(fall_accel(2:93,2).^2+fall_accel(2:93,3).^2+fall_accel(2:93,4).^2).^(1/2);
t1=fall_accel(2:93,1);

norm2=(fall_accel(2:64,6).^2+fall_accel(2:64,7).^2+fall_accel(2:64,8).^2).^(1/2);
t2=fall_accel(2:64,5);

norm3=(fall_accel(2:125,10).^2+fall_accel(2:125,11).^2+fall_accel(2:125,12).^2).^(1/2);
t3=fall_accel(2:125,9);

norm4=(fall_accel(2:67,14).^2+fall_accel(2:67,15).^2+fall_accel(2:67,16).^2).^(1/2);
t4=fall_accel(2:67,13);

fall_accel(2:119,17),fall_accel(2:119,18)+fall_accel(2:119,19)+fall_accel(2:119,20)
norm5=(fall_accel(2:119,18).^2+fall_accel(2:119,19).^2+fall_accel(2:119,20).^2).^(1/2);
t5=fall_accel(2:119,17);
%%
diff=norm1(2:length(norm1))-norm1(1:length(norm1)-1);
plot(t1(1:length(t1)-1),diff,t1(1:length(t1)-1),norm1(1:length(norm1)-1));

%%
diff=(norm2(2:length(norm2))-norm2(1:length(norm2)-1))/0.06;
plot(t2(1:length(t2)-1),diff,t2(1:length(t2)-1),norm2(1:length(norm2)-1));

%%
diff=norm3(2:length(norm3))-norm3(1:length(norm3)-1);
plot(t3(1:length(t3)-1),diff,t3(1:length(t3)-1),norm3(1:length(norm3)-1));


t=t1;
i=1;    
    while(diff(i)>0)
     i=i+1;
     tstart=t(i);
    end
    
    
    
    



