package com.android.mail.c;

import android.net.*;
import com.android.mail.utils.*;
import android.content.*;
import android.database.*;
import java.io.*;
import java.util.*;

public class c<T> extends AsyncTaskLoader<b<T>>
{
    protected static final String mW;
    final Loader$ForceLoadContentObserver Nx;
    private final a<T> awV;
    b<T> awW;
    private int awX;
    private Uri eM;
    final String[] eN;
    final String eO;
    final String[] eP;
    final String eQ;
    
    static {
        mW = D.AU();
    }
    
    public c(final Context context, final Uri uri, final String[] en, final a<T> awV) {
        super(context);
        this.eO = null;
        this.eP = null;
        this.eQ = null;
        this.awX = 0;
        if (awV == null) {
            throw new NullPointerException("The factory cannot be null");
        }
        this.Nx = new Loader$ForceLoadContentObserver((Loader)this);
        this.setUri(uri);
        this.eN = en;
        this.awV = awV;
    }
    
    private b<T> sY() {
        final Cursor query = this.getContext().getContentResolver().query(this.eM, this.eN, this.eO, this.eP, this.eQ);
        b<T> i;
        if (query == null) {
            i = null;
        }
        else {
            query.getCount();
            query.registerContentObserver((ContentObserver)this.Nx);
            i = this.i(query);
            i.sX();
            try {
                if (this.awX > 0) {
                    Thread.sleep(this.awX);
                    return i;
                }
            }
            catch (InterruptedException ex) {
                return i;
            }
        }
        return i;
    }
    
    public void a(final b<T> awW) {
        if (this.isReset()) {
            if (awW != null) {
                awW.close();
            }
        }
        else {
            final b<T> awW2 = this.awW;
            this.awW = awW;
            if (this.isStarted()) {
                super.deliverResult((Object)awW);
            }
            if (awW2 != null && awW2 != awW && !((Cursor)awW2).isClosed()) {
                ((Cursor)awW2).close();
            }
        }
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        super.dump(s, fileDescriptor, printWriter, array);
        printWriter.print(s);
        printWriter.print("mUri=");
        printWriter.println(this.eM);
        printWriter.print(s);
        printWriter.print("mProjection=");
        printWriter.println(Arrays.toString(this.eN));
        printWriter.print(s);
        printWriter.print("mSelection=");
        printWriter.println(this.eO);
        printWriter.print(s);
        printWriter.print("mSelectionArgs=");
        printWriter.println(Arrays.toString(this.eP));
        printWriter.print(s);
        printWriter.print("mSortOrder=");
        printWriter.println(this.eQ);
        printWriter.print(s);
        printWriter.print("mCursor=");
        printWriter.println(this.awW);
    }
    
    public final Uri getUri() {
        return this.eM;
    }
    
    protected b<T> i(final Cursor cursor) {
        return new b<T>(cursor, this.awV);
    }
    
    protected void onReset() {
        super.onReset();
        this.onStopLoading();
        if (this.awW != null && !this.awW.isClosed()) {
            this.awW.close();
        }
        this.awW = null;
    }
    
    protected void onStartLoading() {
        if (this.awW != null) {
            this.a(this.awW);
        }
        if (this.takeContentChanged() || this.awW == null) {
            this.forceLoad();
        }
    }
    
    protected void onStopLoading() {
        this.cancelLoad();
    }
    
    public final void setUri(final Uri em) {
        if (em == null) {
            throw new NullPointerException("The uri cannot be null");
        }
        this.eM = em;
    }
}
