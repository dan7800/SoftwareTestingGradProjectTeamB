package com.google.android.gm.provider;

import android.database.sqlite.*;
import android.database.*;

final class ap implements SQLiteDatabase$CursorFactory
{
    final /* synthetic */ MailEngine bjA;
    final /* synthetic */ aP bjD;
    
    ap(final MailEngine bjA, final aP bjD) {
        this.bjA = bjA;
        this.bjD = bjD;
    }
    
    public final Cursor newCursor(final SQLiteDatabase sqLiteDatabase, final SQLiteCursorDriver sqLiteCursorDriver, final String s, final SQLiteQuery sqLiteQuery) {
        return (Cursor)new aE(this.bjA, sqLiteDatabase, sqLiteCursorDriver, s, sqLiteQuery, this.bjD);
    }
}
