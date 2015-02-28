package com.google.android.gm.provider;

import android.database.sqlite.*;
import android.database.*;

final class ao implements SQLiteDatabase$CursorFactory
{
    final /* synthetic */ MailEngine bjA;
    final /* synthetic */ aG bjC;
    
    ao(final MailEngine bjA, final aG bjC) {
        this.bjA = bjA;
        this.bjC = bjC;
    }
    
    public final Cursor newCursor(final SQLiteDatabase sqLiteDatabase, final SQLiteCursorDriver sqLiteCursorDriver, final String s, final SQLiteQuery sqLiteQuery) {
        return (Cursor)new aF(this.bjA, sqLiteDatabase, sqLiteCursorDriver, s, sqLiteQuery, this.bjC);
    }
}
