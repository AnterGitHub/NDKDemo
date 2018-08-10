package com.example.ndkdemo;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;

public class MainActivity extends Activity {

	private static final String TAG = "MainActivity"; 
	
	static {
		System.loadLibrary("student");
		System.loadLibrary("teacher");
	}
	public static native int get();
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		Log.i(TAG, "get() = " + get());
	}

}
