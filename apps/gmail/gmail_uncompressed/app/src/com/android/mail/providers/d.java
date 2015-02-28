package com.android.mail.providers;

import com.android.mail.utils.*;
import android.provider.*;
import android.net.*;
import android.text.*;
import android.database.*;
import android.content.*;
import java.util.*;

final class D extends G
{
    final /* synthetic */ C aCo;
    
    public D(final C aCo) {
        this.aCo = aCo;
        super(C.aCl);
    }
    
    public final D cf(final String s) {
        final Cursor query = this.aCo.mContext.getContentResolver().query(Uri.withAppendedPath(ContactsContract$CommonDataKinds$Email.CONTENT_FILTER_URI, Uri.encode(s)), C.aCn, (String)null, (String[])null, (String)null);
        final String string = "android.resource://" + this.aCo.mContext.getPackageName() + "/2130837606";
        if (query != null) {
            final int columnIndex = query.getColumnIndex("data4");
            final int columnIndex2 = query.getColumnIndex("data1");
            while (query.moveToNext()) {
                String s2 = query.getString(columnIndex);
                if (TextUtils.isEmpty((CharSequence)s2)) {
                    s2 = query.getString(columnIndex2);
                }
                this.addRow(new Object[] { 0, s2, this.aCo.ce(s2), string });
            }
            query.close();
        }
        return this;
    }
}
