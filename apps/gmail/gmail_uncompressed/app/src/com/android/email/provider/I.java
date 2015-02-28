package com.android.email.provider;

import com.android.mail.browse.*;
import android.database.*;
import com.google.common.collect.*;
import java.util.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;
import android.text.*;
import com.android.mail.providers.*;
import com.android.emailcommon.mail.*;
import android.text.util.*;
import android.content.*;
import com.android.emailcommon.provider.*;
import android.net.*;
import android.os.*;

public final class i extends CursorWrapper implements J
{
    private final long PJ;
    private final int Sc;
    private final FolderList Sd;
    private final Bundle cV;
    private final Context mContext;
    
    public i(final Context mContext, final Cursor cursor, final Folder folder, final long pj) {
        super(cursor);
        this.cV = new Bundle();
        this.PJ = pj;
        this.mContext = mContext;
        this.Sd = FolderList.p(Lists.n(folder));
        final Mailbox v = Mailbox.v(mContext, pj);
        if (v == null) {
            this.Sc = -1;
            final Bundle cv = this.cV;
            int count = 0;
            if (cursor != null) {
                count = cursor.getCount();
            }
            cv.putInt("cursor_total_count", count);
            this.cV.putInt("cursor_status", 8);
            return;
        }
        this.Sc = v.Zr;
        this.cV.putInt("cursor_total_count", v.Zz);
        if (v.Zx == 4 || v.Zx == 1 || v.Zx == 2 || v.Zx == 8) {
            this.cV.putInt("cursor_status", 1);
            return;
        }
        if (v.Zx != 0) {
            E.c(b.mW, "Unknown mailbox sync status" + v.Zx, new Object[0]);
            this.cV.putInt("cursor_status", 8);
            return;
        }
        if (v.XB == 0 && (Mailbox.bl(v.Zr) || v.Zr == 8) && !TextUtils.isEmpty((CharSequence)v.Vv) && System.currentTimeMillis() - v.Zt > 300000L) {
            this.cV.putInt("cursor_status", 1);
            return;
        }
        this.cV.putInt("cursor_status", 8);
    }
    
    private ConversationInfo kb() {
        final ConversationInfo conversationInfo = new ConversationInfo(this.getInt(this.getColumnIndex("numMessages")));
        conversationInfo.azO = this.getString(this.getColumnIndex("snippet"));
        conversationInfo.azQ = conversationInfo.azO;
        conversationInfo.azP = conversationInfo.azO;
        final boolean b = this.getInt(this.getColumnIndex("read")) != 0;
        final String string = this.getString(this.getColumnIndex("displayName"));
        String s = this.getString(this.getColumnIndex("fromList"));
        if (s != null) {
            final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize((CharSequence)s);
            if (tokenize.length > 0) {
                s = tokenize[0].getAddress();
            }
            else {
                E.c(E.TAG, "Couldn't parse sender email address", new Object[0]);
            }
        }
        else {
            s = null;
        }
        if (this.Sc == 3) {
            conversationInfo.azN = 1;
        }
        else {
            if (this.Sc != 5 && this.Sc != 4) {
                conversationInfo.a(new ParticipantInfo(string, s, 0, b));
                return conversationInfo;
            }
            for (final Address address : Address.ak(this.getString(this.getColumnIndex("toList")))) {
                conversationInfo.a(new ParticipantInfo(address.li(), address.getAddress(), 0, b));
            }
        }
        return conversationInfo;
    }
    
    public final Bundle getExtras() {
        return this.cV;
    }
    
    public final void kc() {
        final ContentResolver contentResolver = this.mContext.getContentResolver();
        final ContentValues contentValues = new ContentValues(1);
        contentValues.put("flagSeen", true);
        contentResolver.update(g.CONTENT_URI, contentValues, "mailboxKey = ? AND flagSeen != ?", new String[] { String.valueOf(this.PJ), "1" });
    }
    
    public final void kd() {
        this.mContext.getContentResolver().delete(EmailProvider.a("uipurgefolder", this.PJ), (String)null, (String[])null);
    }
    
    public final Bundle respond(final Bundle bundle) {
        if (bundle.containsKey("setVisibility") && bundle.getBoolean("setVisibility")) {
            this.kc();
            if (bundle.containsKey("enteredFolder")) {
                final Mailbox v = Mailbox.v(this.mContext, this.PJ);
                if (v != null && v.XB == 0 && System.currentTimeMillis() - v.Zt > 300000L) {
                    this.mContext.getContentResolver().query(Uri.parse(EmailContent.CONTENT_URI + "/" + EmailProvider.Sj + "/" + v.Ln), (String[])null, (String)null, (String[])null, (String)null);
                }
            }
        }
        final Bundle bundle2 = new Bundle(2);
        bundle2.putString("setVisibility", "ok");
        if (bundle.containsKey("rawFolders")) {
            bundle2.putParcelable("rawFolders", (Parcelable)this.Sd);
        }
        if (bundle.containsKey("conversationInfo")) {
            bundle2.putParcelable("conversationInfo", (Parcelable)this.kb());
        }
        return bundle2;
    }
}
