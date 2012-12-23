package com.example.sensefall;

import android.app.Activity;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.widget.TextView;

public class DisplayMessageActivity extends Activity {

	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.display_message);
		Intent intent = getIntent();
		String message = intent.getStringExtra(ReadAccelData.EXTRA_MESSAGE);
		  // Create the text view
        if(message.equalsIgnoreCase("fall")){
        	MediaPlayer.create(getBaseContext(), R.raw.fall).start();
        }
        if(message.equalsIgnoreCase("sitting")){
        	MediaPlayer.create(getBaseContext(), R.raw.sitting).start();
        }
        if(message.equalsIgnoreCase("standing")){
        	MediaPlayer.create(getBaseContext(), R.raw.standing).start();
        }
        if(message.equalsIgnoreCase("walking")){
        	MediaPlayer.create(getBaseContext(), R.raw.walking).start();
        }
        
	    TextView textView = new TextView(this);
	    textView.setTextSize(40);
	    textView.setText(message);

	    setContentView(textView);
	    finish();
	}
	
}
