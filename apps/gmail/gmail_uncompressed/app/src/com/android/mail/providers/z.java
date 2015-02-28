package com.android.mail.providers;

import android.database.sqlite.*;
import android.database.*;
import java.util.*;
import android.content.*;
import com.android.mail.utils.*;

public class z
{
    private static final String mW;
    private SQLiteOpenHelper aBI;
    private String aBJ;
    private ArrayList<String> aBK;
    private final Object aBL;
    private boolean mClosed;
    protected final Context mContext;
    
    static {
        mW = D.AU();
    }
    
    public z(final Context mContext) {
        this.aBL = new Object();
        this.mContext = mContext;
        this.aBI = new A(this.mContext);
        this.aBJ = "android.resource://" + this.mContext.getPackageName() + "/2130837709";
    }
    
    private SQLiteDatabase bk(final boolean b) {
        synchronized (this.aBL) {
            if (!this.mClosed) {
                SQLiteDatabase sqLiteDatabase;
                if (b) {
                    sqLiteDatabase = this.aBI.getReadableDatabase();
                }
                else {
                    sqLiteDatabase = this.aBI.getWritableDatabase();
                }
                return sqLiteDatabase;
            }
            return null;
        }
    }
    
    public Cursor cc(final String s) {
        final SQLiteDatabase bk = this.bk(true);
        if (bk != null) {
            final StringBuilder sb = new StringBuilder();
            if (this.aBK != null) {
                final Iterator<String> iterator = this.aBK.iterator();
                while (iterator.hasNext()) {
                    sb.append(iterator.next()).append(" ");
                }
            }
            return bk.rawQuery(" SELECT _id   , display1 AS suggest_text_1   , ? || query AS suggest_intent_query   , ? AS suggest_icon_1 FROM suggestions WHERE display1 LIKE ? ORDER BY date DESC", new String[] { sb.toString(), this.aBJ, "%" + s + "%" });
        }
        return null;
    }
    
    public final void cd(final String s) {
        final SQLiteDatabase bk = this.bk(false);
        if (bk == null) {
            return;
        }
        final ContentValues contentValues = new ContentValues(3);
        contentValues.put("display1", s);
        contentValues.put("query", s);
        contentValues.put("date", System.currentTimeMillis());
        try {
            bk.insert("suggestions", (String)null, contentValues);
        }
        catch (IllegalStateException ex) {
            E.d(z.mW, ex, "recent suggestions db save exception", new Object[0]);
        }
    }
    
    public final void clearHistory() {
        final SQLiteDatabase bk = this.bk(false);
        if (bk == null) {
            return;
        }
        try {
            bk.delete("suggestions", (String)null, (String[])null);
        }
        catch (IllegalStateException ex) {
            E.d(z.mW, ex, "recent suggestions db delete exception", new Object[0]);
        }
    }
    
    public final void e(final ArrayList<String> abk) {
        this.aBK = abk;
    }
    
    public final void qD() {
        synchronized (this.aBL) {
            this.aBI.close();
            this.mClosed = true;
        }
    }
}
