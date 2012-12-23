package com.example.sensefall;



import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.EditText;

public class MainActivity extends Activity {



	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_main, menu);
        return true;
    }
   public void start_app(View view){
	
	   
	   Intent intent = new Intent(this, ReadAccelData.class);
        startActivity(intent);
	   
	
	   
   }
   
   
   public void exit_app(View view){
	   finish();
      
	   
   }
    
}
