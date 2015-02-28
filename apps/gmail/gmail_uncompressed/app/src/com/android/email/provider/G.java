package com.android.email.provider;

import android.database.sqlite.*;
import com.android.mail.utils.*;
import com.android.emailcommon.mail.*;
import android.database.*;
import android.text.*;
import android.accounts.*;
import android.os.*;
import android.content.*;
import com.android.emailcommon.provider.*;

public final class g extends SQLiteOpenHelper
{
    final Context mContext;
    
    g(final Context mContext, final String s) {
        super(mContext, s, (SQLiteDatabase$CursorFactory)null, 101);
        this.mContext = mContext;
    }
    
    public final void onCreate(final SQLiteDatabase sqLiteDatabase) {
        E.c("EmailProvider", "Creating EmailProviderBody database", new Object[0]);
        f.n(sqLiteDatabase);
    }
    
    public final void onOpen(final SQLiteDatabase sqLiteDatabase) {
    }
    
    public final void onUpgrade(final SQLiteDatabase sqLiteDatabase, final int n, final int n2) {
        if (n < 5) {
            f.r(sqLiteDatabase);
        }
        if (n < 6) {
            f.s(sqLiteDatabase);
        }
        if (n < 8) {
            f.t(sqLiteDatabase);
        }
        if (n < 101) {
            f.d(this.mContext, sqLiteDatabase);
        }
    }
}
