function [tmin tmax]=falldetection(a_vec)

l1=length(a_vec);
flag=0;
tmax=1;
tmin=1;
diff = a_vec(1:l1)-[0;a_vec(1:l1-1)];
i=1;
while( (i<=(l1-1))&& (flag~=2))
  if(diff(i)<0 && diff(i+1)>0 && flag==0)
    tmin=find(min(a_vec(i:i+1)))+i-1;
    flag=flag+1;
  else
  if(diff(i)>0 && diff(i+1)<0 && flag==1)
      tmax=find(max(a_vec(i:i+1)))+i-1;
    flag=flag+1;
  end
  end
  i=i+1;
end

minmax_attr=a_vec(tmax)-a_vec(tmin);

if((minmax_attr < 2*9.8) || tmax<tmin)
    tmin=0;
    tmax=0;
end

