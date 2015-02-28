package com.google.android.gm;

import com.android.mail.providers.*;
import android.net.*;
import android.view.*;
import android.os.*;
import java.util.*;
import com.android.mail.utils.*;
import android.content.*;
import com.google.android.gm.provider.*;
import android.content.res.*;
import android.widget.*;
import java.io.*;
import com.android.mail.widget.*;

public class LabelSynchronizationActivity extends A implements View$OnClickListener, AdapterView$OnItemClickListener
{
    private Account Nc;
    private String Tz;
    private int aIX;
    private Uri aRj;
    private Uri aRk;
    private String aRl;
    private Gmail$Settings aWU;
    private ArrayList<String> aYA;
    private String aYB;
    private String aYC;
    private String aYD;
    private String aYE;
    private boolean aYw;
    private int aYx;
    private String aYy;
    private ArrayList<String> aYz;
    
    public LabelSynchronizationActivity() {
        this.aYx = 1;
        this.aWU = null;
    }
    
    public void onClick(final View view) {
        this.setResult(0);
        this.finish();
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130968716);
        final Intent intent = this.getIntent();
        this.aYw = intent.getBooleanExtra("perform-actions-internally", false);
        if (intent.getExtras().containsKey("update-widgetid-on-sync-change")) {
            this.aYx = intent.getIntExtra("update-widgetid-on-sync-change", -1);
            this.aIX = intent.getIntExtra("folder-type", 1);
            this.aRj = (Uri)intent.getParcelableExtra("folder-uri");
            this.aRk = (Uri)intent.getParcelableExtra("folder-conversation-list-uri");
            this.aRl = intent.getStringExtra("folder-display-name");
            this.aYy = this.aRj.getLastPathSegment();
            this.Nc = (Account)intent.getParcelableExtra("account");
            this.Tz = this.Nc.lw();
        }
        else {
            this.aYy = intent.getStringExtra("folder");
            this.Tz = intent.getStringExtra("account");
        }
        int intExtra;
        if (!this.aYw) {
            this.aYz = (ArrayList<String>)intent.getStringArrayListExtra("included-labels");
            this.aYA = (ArrayList<String>)intent.getStringArrayListExtra("partial-labels");
            intExtra = intent.getIntExtra("num-of-sync-days", 0);
        }
        else {
            this.aWU = Gmail.P((Context)this, this.Tz);
            (this.aYz = new ArrayList<String>()).addAll(this.aWU.EA());
            (this.aYA = new ArrayList<String>()).addAll(this.aWU.EB());
            intExtra = (int)this.aWU.Ey();
        }
        final T v = Y.v((Context)this, this.Tz, this.aYy);
        if (v == null) {
            E.f(ay.mW, "Unable to get label: %s for account: %s", this.aYy, this.Tz);
            this.finish();
            return;
        }
        this.setTitle((CharSequence)v.getName());
        final Resources resources = this.getResources();
        this.aYC = resources.getString(2131297146);
        this.aYD = ag.a((Context)this, 2131820569, intExtra);
        this.aYE = resources.getString(2131297145);
        String[] array;
        if (v.Fc()) {
            array = new String[] { this.aYD, this.aYE };
        }
        else {
            array = new String[] { this.aYC, this.aYD, this.aYE };
        }
        if (this.aYz.contains(this.aYy)) {
            this.aYB = this.aYE;
        }
        else if (this.aYA.contains(this.aYy)) {
            this.aYB = this.aYD;
        }
        else {
            this.aYB = this.aYC;
        }
        while (true) {
            for (int i = 0; i < array.length; ++i) {
                if (array[i].equals(this.aYB)) {
                    this.setListAdapter((ListAdapter)new ArrayAdapter((Context)this, 2130968717, (Object[])array));
                    this.getListView().setChoiceMode(1);
                    this.getListView().setItemChecked(i, true);
                    this.getListView().setOnItemClickListener((AdapterView$OnItemClickListener)this);
                    ((Button)this.findViewById(2131558554)).setOnClickListener((View$OnClickListener)this);
                    return;
                }
            }
            int i = 0;
            continue;
        }
    }
    
    public void onItemClick(final AdapterView<?> adapterView, final View view, final int n, final long n2) {
        final String s = (String)this.getListAdapter().getItem(n);
        if (s.equals(this.aYB)) {
            this.finish();
            return;
        }
        this.aYz.remove(this.aYy);
        this.aYA.remove(this.aYy);
        if (s.equals(this.aYE)) {
            this.aYz.add(this.aYy);
        }
        else if (s.equals(this.aYD)) {
            this.aYA.add(this.aYy);
        }
        if (!this.aYw) {
            final Intent intent = new Intent();
            intent.putExtra("included-labels", (Serializable)this.aYz);
            intent.putExtra("partial-labels", (Serializable)this.aYA);
            this.setResult(-1, intent);
        }
        else {
            this.aWU.y(this.aYz);
            this.aWU.z(this.aYA);
            Gmail.a(this.Tz, this.aWU, this.getContentResolver());
        }
        if (this.aYx != -1) {
            b.a((Context)this, this.aYx, this.Nc, this.aIX, 0, this.aRj, this.aRk, this.aRl);
        }
        this.finish();
    }
}
