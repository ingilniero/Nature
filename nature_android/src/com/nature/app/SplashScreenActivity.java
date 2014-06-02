package com.nature.app;

import java.util.Timer;
import java.util.TimerTask;
 
import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.view.Window;
 
public class SplashScreenActivity extends Activity {
 

	private long splashDelay = 6000; //6 segundos

	  @Override
	  protected void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.splash_screen);

	    TimerTask task = new TimerTask() {
	      @Override
	      public void run() {
	        Intent mainIntent = new Intent().setClass(SplashScreenActivity.this, MainActivity.class);
	        startActivity(mainIntent);
	        finish();//Destruimos esta activity para prevenit que el usuario retorne aqui presionando el boton Atras.
	      }
	    };

	    Timer timer = new Timer();
	    timer.schedule(task, splashDelay);//Pasado los 6 segundos dispara la tarea
	  }

    // Set the duration of the splash screen
    private static final long SPLASH_SCREEN_DELAY = 3000;
 
   

}