package work.example.chris.myapplication;

import android.content.Context;
import android.view.View;
import android.widget.Toast;

import static android.widget.Toast.LENGTH_LONG;

/**
 * Created by chris on 5/23/16.
 */
public class Food implements View.OnClickListener {

    private Context context;

    public Food(Context context) {
        this.context = context;
    }

    public Food() {
        this.context = context;
    }

    @Override
    public void onClick(View v) {
        Toast.makeText(this.context, "test4", LENGTH_LONG).show();
    }
}
