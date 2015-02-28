package com.google.android.gm;

import android.webkit.*;
import android.os.*;
import com.android.mail.utils.*;
import android.app.*;
import java.io.*;
import android.view.*;

public class LicenseActivity extends Activity
{
    private WebView aKF;
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130968718);
        final ActionBar actionBar = this.getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
            actionBar.setIcon(17170445);
            actionBar.setDisplayUseLogoEnabled(false);
        }
        this.aKF = (WebView)this.findViewById(2131558672);
        try {
            final InputStream openRawResource = this.getResources().openRawResource(2131165184);
            final BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(openRawResource));
            final int available = openRawResource.available();
            final char[] array = new char[available];
            int read = 0;
            int n = 0;
            do {
                n += read;
                read = bufferedReader.read(array, n, available - n);
            } while (read >= 0 && n + read < available);
            bufferedReader.close();
            this.aKF.loadData(new String(array), "text/html", (String)null);
        }
        catch (IOException ex) {
            E.e(ay.mW, ex, "Error reading licence file", new Object[0]);
            this.finish();
        }
    }
    
    protected void onDestroy() {
        this.aKF.destroy();
        super.onDestroy();
    }
    
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            this.finish();
            return true;
        }
        return false;
    }
}
