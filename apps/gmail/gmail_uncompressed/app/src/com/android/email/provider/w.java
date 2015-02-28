package com.android.email.provider;

import android.app.*;
import android.net.*;
import com.android.mail.providers.*;
import com.android.emailcommon.provider.*;
import com.android.mail.utils.*;
import android.os.*;
import android.database.*;
import android.content.*;

public class w extends Activity implements y
{
    private long LN;
    private boolean TA;
    private ProgressDialog TB;
    private int Tx;
    private x Ty;
    private String Tz;
    
    public w() {
        this.TA = true;
    }
    
    private void b(final Uri uri, final int n) {
        int n2 = 1;
        final Object[] array = new Object[n2];
        array[0] = this.Tz;
        final String string = this.getString(n, array);
        if (this.TA) {
            n2 = 0;
        }
        new z((Context)this, uri, this, string, n2 != 0).show();
    }
    
    private void kp() {
        this.b(Uri.parse("content://" + EmailContent.AUTHORITY + "/uifullfolders/" + this.LN), 2131296980);
    }
    
    public final void a(final Folder folder) {
        final Long value = Long.parseLong(folder.azZ.aPj.getLastPathSegment());
        final ContentValues contentValues = new ContentValues();
        final Mailbox d = Mailbox.d((Context)this, this.LN, this.Tx);
        if (d != null) {
            contentValues.put("type", 1);
            this.getContentResolver().update(ContentUris.withAppendedId(Mailbox.CONTENT_URI, d.Ln), contentValues, (String)null, (String[])null);
        }
        final Mailbox v = Mailbox.v((Context)this, value);
        if (v != null) {
            contentValues.put("type", this.Tx);
            this.getContentResolver().update(ContentUris.withAppendedId(Mailbox.CONTENT_URI, v.Ln), contentValues, (String)null, (String[])null);
            contentValues.clear();
            final Account k = Account.k((Context)this, this.LN);
            contentValues.put("flags", k.dM);
            this.getContentResolver().update(ContentUris.withAppendedId(Account.CONTENT_URI, k.Ln), contentValues, (String)null, (String[])null);
        }
        this.finish();
    }
    
    public final void cancel() {
        this.finish();
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final Intent intent = this.getIntent();
        final Uri data = intent.getData();
        if (data != null) {
            final String queryParameter = data.getQueryParameter("account");
            if (queryParameter == null) {
                E.e("FolderPickerActivity", "No account # in Uri?", new Object[0]);
                this.finish();
                return;
            }
            while (true) {
                while (true) {
                    try {
                        this.LN = Long.parseLong(queryParameter);
                        if (!intent.hasExtra("mailbox_type")) {
                            final boolean ta = true;
                            this.TA = ta;
                            this.Tx = intent.getIntExtra("mailbox_type", 6);
                            if (Mailbox.c((Context)this, this.LN, 6) != -1L && this.TA) {
                                E.e("FolderPickerActivity", "Trash folder already exists", new Object[0]);
                                this.finish();
                                return;
                            }
                            break;
                        }
                    }
                    catch (NumberFormatException ex) {
                        E.e("FolderPickerActivity", "Invalid account # in Uri?", new Object[0]);
                        this.finish();
                        return;
                    }
                    final boolean ta = false;
                    continue;
                }
            }
            final Account k = Account.k((Context)this, this.LN);
            if (k == null) {
                E.e("FolderPickerActivity", "No account?", new Object[0]);
                this.finish();
                return;
            }
            this.Tz = k.Xy;
            if ((0x2000 & k.dM) != 0x0) {
                this.kp();
                return;
            }
            (this.TB = new ProgressDialog((Context)this)).setIndeterminate(true);
            this.TB.setMessage((CharSequence)this.getString(2131296982));
            this.TB.show();
            this.Ty = new x(this, (Context)this, new Handler());
            this.getContentResolver().registerContentObserver(ContentUris.withAppendedId(Account.CONTENT_URI, this.LN), false, (ContentObserver)this.Ty);
        }
        else {
            final com.android.mail.providers.Account account = (com.android.mail.providers.Account)intent.getParcelableExtra("picker_ui_account");
            this.Tz = account.getDisplayName();
            this.LN = Long.parseLong(account.uri.getLastPathSegment());
            this.Tx = intent.getIntExtra("picker_mailbox_type", -1);
            final int intExtra = intent.getIntExtra("picker_header_id", 0);
            if (intExtra == 0) {
                this.finish();
                return;
            }
            this.b(account.ayh, intExtra);
        }
    }
    
    public void onDestroy() {
        super.onDestroy();
        if (this.Ty != null) {
            this.getContentResolver().unregisterContentObserver((ContentObserver)this.Ty);
            this.Ty = null;
        }
        if (this.TB != null) {
            this.TB.dismiss();
            this.TB = null;
        }
    }
}
