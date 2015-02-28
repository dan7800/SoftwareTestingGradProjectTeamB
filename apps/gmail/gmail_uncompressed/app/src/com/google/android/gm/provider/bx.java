package com.google.android.gm.provider;

import android.database.*;
import android.database.sqlite.*;

final class bx implements SQLiteDatabase$CursorFactory
{
    final String bmS;
    
    public bx(final String bmS) {
        this.bmS = bmS;
    }
    
    public final Cursor newCursor(final SQLiteDatabase sqLiteDatabase, final SQLiteCursorDriver sqLiteCursorDriver, final String s, final SQLiteQuery sqLiteQuery) {
        if (this.bmS.equals("documents")) {
            return (Cursor)new CompressedMessageCursor(sqLiteDatabase, sqLiteCursorDriver, s, sqLiteQuery, "section_body");
        }
        return (Cursor)new SQLiteCursor(sqLiteDatabase, sqLiteCursorDriver, s, sqLiteQuery);
    }
}
