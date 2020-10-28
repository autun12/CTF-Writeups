package com.example.razictf_2;

import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

public class MainActivity extends AppCompatActivity {
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(R.id.activity_main);
    final ImageButton button = (ImageButton)findViewById(R.id.my_button);
    final DisplayMetrics displaymetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
    (new Timer()).schedule(new TimerTask() {
          public void run() {
            MainActivity.this.runOnUiThread(new Runnable() {
                  public void run() {
                    Random random = new Random();
                    float f1 = random.nextFloat();
                    float f2 = displaymetrics.widthPixels;
                    float f3 = random.nextFloat();
                    float f4 = displaymetrics.heightPixels;
                    new Timer();
                    button.animate().x(f1 * f2).y(f3 * f4).setDuration(0L).start();
                  }
                });
          }
        },  0L, 1000L);
    imageButton.setOnClickListener(new View.OnClickListener() {
          public void onClick(View param1View) {
            TextView textView = (TextView)MainActivity.this.findViewById(R.id.Num);
            int i = Integer.parseInt(textView.getText().toString());
            if (i == 0 || i < 0) {
              textView.setText("0");
              return;
            } 
            String str = (new switcher()).run(--i);
            if (str != null)
              ((TextView)MainActivity.this.findViewById(R.id.Flag)).setText(str); 
            textView.setText(String.valueOf(i));
          }
        });
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/com/example/razictf_2/MainActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */