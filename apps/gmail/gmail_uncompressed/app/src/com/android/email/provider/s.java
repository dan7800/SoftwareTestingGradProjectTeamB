package com.android.email.provider;

import android.content.*;
import android.database.*;
import android.net.*;
import com.android.emailcommon.provider.*;
import android.text.*;
import com.android.emailcommon.b.*;

final class s extends CursorWrapper
{
    private final int Tq;
    private final int Tr;
    private final String[] Ts;
    private final Context mContext;
    
    public s(final Context mContext, final Cursor cursor) {
        super(cursor);
        this.Tq = cursor.getColumnIndex("contentUri");
        this.Tr = cursor.getColumnIndex("uri");
        this.mContext = mContext;
        this.Ts = new String[cursor.getCount()];
        if (this.Tq == -1) {
            return;
        }
        while (cursor.moveToNext()) {
            final int position = cursor.getPosition();
            final long long1 = Long.parseLong(Uri.parse(this.getString(this.Tr)).getLastPathSegment());
            final EmailContent$Attachment o = EmailContent$Attachment.o(this.mContext, long1);
            if (o == null) {
                this.Ts[position] = "";
            }
            else if (!TextUtils.isEmpty((CharSequence)o.lK())) {
                this.Ts[position] = o.lK();
            }
            else {
                String s;
                if (o.Yw == 1 && o.Yv == 3 && TextUtils.equals((CharSequence)o.Ym, (CharSequence)"application/vnd.android.package-archive")) {
                    s = o.lL();
                }
                else {
                    final String ll = o.lL();
                    String authority;
                    if (!TextUtils.isEmpty((CharSequence)ll)) {
                        authority = Uri.parse(ll).getAuthority();
                    }
                    else {
                        authority = null;
                    }
                    if (TextUtils.equals((CharSequence)authority, (CharSequence)EmailContent$Attachment.Yj)) {
                        s = ll;
                    }
                    else {
                        s = a.c(o.Lq, long1).toString();
                    }
                }
                this.Ts[position] = s;
            }
        }
        cursor.moveToPosition(-1);
    }
    
    public final String getString(final int n) {
        if (n == this.Tq) {
            return this.Ts[this.getPosition()];
        }
        return super.getString(n);
    }
}
