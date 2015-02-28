package com.android.mail.ui;

import android.content.*;
import android.os.*;
import android.text.*;
import android.app.*;
import android.widget.*;
import android.view.*;

public class ShortcutNameActivity extends Activity implements View$OnClickListener, TextView$OnEditorActionListener
{
    private EditText aMZ;
    private String aNa;
    private Intent aNb;
    
    private void Ab() {
        final Editable text = this.aMZ.getText();
        final Intent intent = new Intent();
        intent.putExtra("extra_folder_click_intent", (Parcelable)this.aNb);
        intent.putExtra("android.intent.extra.shortcut.NAME", this.aNa);
        final String string = ((CharSequence)text).toString();
        if (TextUtils.getTrimmedLength((CharSequence)string) > 0) {
            this.aNb.putExtra("android.intent.extra.shortcut.NAME", string);
        }
        this.setResult(-1, this.aNb);
        this.finish();
    }
    
    public void onClick(final View view) {
        final int id = view.getId();
        if (2131558555 == id) {
            this.Ab();
        }
        else if (2131558554 == id) {
            this.setResult(0);
            this.finish();
        }
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130968755);
        this.aNb = (Intent)this.getIntent().getParcelableExtra("extra_folder_click_intent");
        this.aNa = this.getIntent().getStringExtra("extra_shortcut_name");
        (this.aMZ = (EditText)this.findViewById(2131558934)).setText((CharSequence)this.aNa);
        this.aMZ.setOnEditorActionListener((TextView$OnEditorActionListener)this);
        this.aMZ.requestFocus();
        final Editable text = this.aMZ.getText();
        Selection.setSelection((Spannable)text, text.length());
        this.findViewById(2131558555).setOnClickListener((View$OnClickListener)this);
        this.findViewById(2131558554).setOnClickListener((View$OnClickListener)this);
        final ActionBar actionBar = this.getActionBar();
        if (actionBar != null) {
            actionBar.setIcon(2130903042);
        }
    }
    
    public boolean onEditorAction(final TextView textView, final int n, final KeyEvent keyEvent) {
        if (n == 6) {
            this.Ab();
            return true;
        }
        return false;
    }
}
