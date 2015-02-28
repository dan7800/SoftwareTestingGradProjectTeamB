package com.google.android.gm;

import android.app.*;
import com.android.mail.utils.*;
import android.os.*;
import com.google.android.gm.ui.*;
import com.android.mail.providers.*;
import android.content.*;

public class CreateShortcutActivityGmail extends Activity
{
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final Account[] aw = a.aw((Context)this);
        final Intent intent = this.getIntent();
        if (aw != null && aw.length == 1) {
            intent.setClass((Context)this, (Class)FolderSelectionActivityGmail.class);
            intent.setFlags(1107296256);
            intent.setAction("android.intent.action.CREATE_SHORTCUT");
            intent.putExtra("account-shortcut", (Parcelable)aw[0]);
        }
        else {
            intent.setClass((Context)this, (Class)MailboxSelectionActivityGmail.class);
            intent.setFlags(33554432);
        }
        this.startActivity(intent);
        this.finish();
    }
}
