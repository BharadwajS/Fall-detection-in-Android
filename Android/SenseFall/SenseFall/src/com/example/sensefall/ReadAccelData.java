package com.example.sensefall;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;


public class ReadAccelData extends Activity implements SensorEventListener {
	
	public final static String EXTRA_MESSAGE = "com.example.sensefall.MESSAGE";
	public double ax,ay,az;
	public double a_norm;
	public int i=0;
	static int BUFF_SIZE=50;
	static public double[] window = new double[BUFF_SIZE];
	double sigma=0.5,th=10,th1=5,th2=2;
	private SensorManager sensorManager;
	public static String curr_state,prev_state;
	public MediaPlayer m1_fall,m2_sit,m3_stand,m4_walk;
	
	public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.accel_main);
        sensorManager=(SensorManager) getSystemService(SENSOR_SERVICE);
        sensorManager.registerListener(this, sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER), SensorManager.SENSOR_DELAY_UI);
        initialize();
    }
	 private void initialize() {
		// TODO Auto-generated method stub
		 for(i=0;i<BUFF_SIZE;i++){
	    	 window[i]=0;
	     }
		 prev_state="none";
		 curr_state="none";
		 m1_fall=MediaPlayer.create(getBaseContext(), R.raw.fall);
	     m2_sit=MediaPlayer.create(getBaseContext(), R.raw.sitting);
	     m3_stand=MediaPlayer.create(getBaseContext(), R.raw.standing);
	     m4_walk=MediaPlayer.create(getBaseContext(), R.raw.walking);
	            
	    
	}
	@Override
	   public void onAccuracyChanged(Sensor arg0, int arg1) {
	   }

	   @SuppressLint("ParserError")
	@Override
	   public void onSensorChanged(SensorEvent event) {
	        if (event.sensor.getType()==Sensor.TYPE_ACCELEROMETER){
	                    ax=event.values[0];
	                    ay=event.values[1];
	                    az=event.values[2];
	                    AddData(ax,ay,az);
	                    posture_recognition(window,ay);
	                    SystemState(curr_state,prev_state);
	                   if(!prev_state.equalsIgnoreCase(curr_state)){
                        	prev_state=curr_state;
                        }
	            	    
	            }
	   }
	private void posture_recognition(double[] window2,double ay2) {
		// TODO Auto-generated method stub
		int zrc=compute_zrc(window2);
		if(zrc==0){
			
			if(Math.abs(ay2)<th1){
				curr_state="sitting";
			}else{
				curr_state="standing";
			}
				
		}else{
			
			if(zrc>th2){
				curr_state="walking";
			}else{
				curr_state="none";
			}
				
		}
			
		
		
	}
	private int compute_zrc(double[] window2) {
		// TODO Auto-generated method stub
		int count=0;
		for(i=1;i<=BUFF_SIZE-1;i++){
			
			if((window2[i]-th)<sigma && (window2[i-1]-th)>sigma){
				count=count+1;
			}
			
		}
		return count;
	}
	private void SystemState(String curr_state1,String prev_state1) {
		// TODO Auto-generated method stub

	        	//Fall !!
              if(!prev_state1.equalsIgnoreCase(curr_state1)){
            	  if(curr_state1.equalsIgnoreCase("fall")){
            		  m1_fall.start();
            	  }
            	  if(curr_state1.equalsIgnoreCase("sitting")){
            		  m2_sit.start();
            	  }
            	  if(curr_state1.equalsIgnoreCase("standing")){
            		  m3_stand.start();
            	  }
            	  if(curr_state1.equalsIgnoreCase("walking")){
            		  m4_walk.start();
            	  }
              }	
	 	 
	 	
	}
	private void AddData(double ax2, double ay2, double az2) {
		// TODO Auto-generated method stub
		 a_norm=Math.sqrt(ax*ax+ay*ay+az*az);
		 for(i=0;i<=BUFF_SIZE-2;i++){
	    	window[i]=window[i+1];
	     }
	     window[BUFF_SIZE-1]=a_norm;
	       
	}
	
	public void exit_app(View view){
		   finish();
	      
		   
	}
	   
       
	
}
