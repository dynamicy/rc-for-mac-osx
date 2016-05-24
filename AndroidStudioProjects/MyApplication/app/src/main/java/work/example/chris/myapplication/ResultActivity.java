package work.example.chris.myapplication;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

/**
 * Created by chris on 5/23/16.
 */
public class ResultActivity extends Activity {

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.setContentView(R.layout.activity_result);

        TextView msgTextView = (TextView) findViewById(R.id.msg);
        msgTextView.append(this.getIntent().getExtras().getString("UserId"));
    }

    public void resultDoActivity(View view) {
        Intent intent = new Intent();
        intent.setClass(this, MainActivity.class);

        Bundle bundle = new Bundle();
        bundle.putString("UserId", "MainActivity!");
        intent.putExtras(bundle);
        startActivity(intent);
    }
}
