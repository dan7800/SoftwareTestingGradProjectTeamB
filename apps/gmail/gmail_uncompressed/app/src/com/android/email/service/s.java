package com.android.email.service;

import com.android.emailcommon.mail.*;
import android.content.*;

final class s implements g
{
    final /* synthetic */ Context PG;
    final /* synthetic */ com.android.emailcommon.provider.g Vq;
    
    s(final Context pg, final com.android.emailcommon.provider.g vq) {
        this.PG = pg;
        this.Vq = vq;
    }
    
    @Override
    public final void S(final String s) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("syncServerId", s);
        this.PG.getContentResolver().update(ContentUris.withAppendedId(com.android.emailcommon.provider.g.CONTENT_URI, this.Vq.Ln), contentValues, (String)null, (String[])null);
    }
}
