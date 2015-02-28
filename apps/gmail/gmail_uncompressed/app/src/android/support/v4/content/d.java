package android.support.v4.content;

import android.support.v4.content.j$android.support.v4.content.*;
import android.net.*;
import android.content.*;
import java.io.*;
import java.util.*;
import android.database.*;

public class d extends a<Cursor>
{
    final k eL;
    Uri eM;
    String[] eN;
    String eO;
    String[] eP;
    String eQ;
    Cursor eR;
    
    public d(final Context context) {
        super(context);
        this.eL = new android.support.v4.content.k(this);
    }
    
    private void deliverResult(final Cursor er) {
        if (super.eV) {
            if (er != null) {
                er.close();
            }
        }
        else {
            final Cursor er2 = this.eR;
            this.eR = er;
            if (super.cF) {
                super.deliverResult(er);
            }
            if (er2 != null && er2 != er && !er2.isClosed()) {
                er2.close();
            }
        }
    }
    
    @Override
    public final void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
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
        printWriter.println(this.eR);
        printWriter.print(s);
        printWriter.print("mContentChanged=");
        printWriter.println(this.eW);
    }
    
    @Override
    public Cursor loadInBackground() {
        final Cursor query = super.mContext.getContentResolver().query(this.eM, this.eN, this.eO, this.eP, this.eQ);
        if (query != null) {
            query.getCount();
            query.registerContentObserver((ContentObserver)this.eL);
        }
        return query;
    }
    
    @Override
    protected final void onReset() {
        super.onReset();
        this.cancelLoad();
        if (this.eR != null && !this.eR.isClosed()) {
            this.eR.close();
        }
        this.eR = null;
    }
    
    @Override
    protected final void onStartLoading() {
        if (this.eR != null) {
            this.deliverResult(this.eR);
        }
        if (this.takeContentChanged() || this.eR == null) {
            this.forceLoad();
        }
    }
    
    @Override
    protected final void onStopLoading() {
        this.cancelLoad();
    }
    
    public final void setProjection(final String[] en) {
        this.eN = en;
    }
    
    public final void setUri(final Uri em) {
        this.eM = em;
    }
}
