package com.android.mail.c;

import android.util.*;
import android.database.*;

public class b<T> extends CursorWrapper
{
    private final SparseArray<T> awU;
    private final a<T> awV;
    
    public b(final Cursor cursor, final a<T> awV) {
        super(cursor);
        if (cursor != null) {
            this.awU = (SparseArray<T>)new SparseArray(cursor.getCount());
        }
        else {
            this.awU = null;
        }
        this.awV = awV;
    }
    
    public void close() {
        super.close();
        this.awU.clear();
    }
    
    public final T sW() {
        final Cursor wrappedCursor = this.getWrappedCursor();
        Object value;
        if (wrappedCursor == null) {
            value = null;
        }
        else {
            final int position = wrappedCursor.getPosition();
            value = this.awU.get(position);
            if (value == null) {
                final T g = this.awV.g(wrappedCursor);
                this.awU.put(position, (Object)g);
                return g;
            }
        }
        return (T)value;
    }
    
    final void sX() {
        final Cursor wrappedCursor = this.getWrappedCursor();
        if (wrappedCursor == null || !wrappedCursor.moveToFirst()) {
            return;
        }
        do {
            this.sW();
        } while (wrappedCursor.moveToNext());
    }
}
