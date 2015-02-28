package com.google.android.gm.provider;

import android.database.sqlite.*;
import android.util.*;
import java.util.zip.*;
import java.io.*;
import android.database.*;

public final class CompressedMessageCursor extends CursorWrapper implements CrossProcessCursor
{
    private final int bdu;
    
    public CompressedMessageCursor(final Cursor cursor, final String s) {
        super(cursor);
        this.bdu = super.getColumnIndex(s);
    }
    
    public CompressedMessageCursor(final SQLiteDatabase sqLiteDatabase, final SQLiteCursorDriver sqLiteCursorDriver, final String s, final SQLiteQuery sqLiteQuery, final String s2) {
        super((Cursor)new SQLiteCursor(sqLiteDatabase, sqLiteCursorDriver, s, sqLiteQuery));
        this.bdu = super.getColumnIndex(s2);
    }
    
    private String getMessageBody() {
        while (true) {
            final TimingLogger timingLogger = new TimingLogger("Gmail", "getMessageBody");
            while (true) {
                int n = 0;
                Label_0185: {
                    while (true) {
                        int columnIndex = 0;
                        Label_0125: {
                            try {
                                final byte[] blob = super.getBlob(this.bdu);
                                String a;
                                if (blob == null) {
                                    a = "";
                                }
                                else {
                                    if (blob[0] != 48) {
                                        break Label_0125;
                                    }
                                    n = -1 + blob.length;
                                    if (blob[n] != 0) {
                                        break Label_0185;
                                    }
                                    final int n2 = n - 1;
                                    a = new String(blob, 1, n2);
                                }
                                return a;
                            }
                            catch (DataFormatException ex) {
                                columnIndex = this.getColumnIndex("messageId");
                                if (columnIndex < 0) {
                                    final long long1 = -1L;
                                    throw new CompressedMessageCursor$CorruptedMessageException(this, long1, ex);
                                }
                                final byte[] blob;
                                return bJ.a(blob, -1 + blob.length);
                                // iftrue(Label_0149:, blob[0] != 49)
                                return bJ.a(blob, -1 + blob.length);
                                Label_0149: {
                                    throw new DataFormatException("Unexpected format found in database");
                                }
                            }
                            catch (UnsupportedEncodingException ex2) {
                                throw new IllegalStateException("UTF-8 not supported");
                            }
                        }
                        final long long1 = this.getLong(columnIndex);
                        continue;
                    }
                }
                final int n2 = n;
                continue;
            }
        }
    }
    
    public final void fillWindow(final int n, final CursorWindow cursorWindow) {
        ((SQLiteCursor)this.getWrappedCursor()).fillWindow(n, cursorWindow);
        if (n < 0 || n > this.getCount() || this.bdu == -1) {
            return;
        }
        cursorWindow.acquireReference();
        int position;
        try {
            position = this.getPosition();
            this.moveToPosition(n - 1);
            while (this.moveToNext()) {
                cursorWindow.putString(this.getMessageBody(), this.getPosition(), this.bdu);
            }
        }
        finally {
            cursorWindow.releaseReference();
        }
        this.moveToPosition(position);
        cursorWindow.releaseReference();
    }
    
    public final String getString(final int n) {
        if (n != this.bdu) {
            return super.getString(n);
        }
        return this.getMessageBody();
    }
    
    public final CursorWindow getWindow() {
        return null;
    }
    
    public final boolean onMove(final int n, final int n2) {
        return ((SQLiteCursor)this.getWrappedCursor()).onMove(n, n2);
    }
}
