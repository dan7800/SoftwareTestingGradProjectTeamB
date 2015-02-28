package android.support.v4.content;

import android.content.*;
import java.io.*;
import android.support.v4.f.*;

public class j<D>
{
    boolean cF;
    int cH;
    l<D> eT;
    boolean eU;
    boolean eV;
    boolean eW;
    boolean eX;
    Context mContext;
    
    public j(final Context context) {
        this.cF = false;
        this.eU = false;
        this.eV = true;
        this.eW = false;
        this.eX = false;
        this.mContext = context.getApplicationContext();
    }
    
    public final void a(final int ch, final l<D> et) {
        if (this.eT != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.eT = et;
        this.cH = ch;
    }
    
    public final void a(final l<D> l) {
        if (this.eT == null) {
            throw new IllegalStateException("No listener register");
        }
        if (this.eT != l) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.eT = null;
    }
    
    public final void abandon() {
        this.eU = true;
    }
    
    public void deliverResult(final D n) {
        if (this.eT != null) {
            this.eT.b(this, n);
        }
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.print(s);
        printWriter.print("mId=");
        printWriter.print(this.cH);
        printWriter.print(" mListener=");
        printWriter.println(this.eT);
        if (this.cF || this.eW || this.eX) {
            printWriter.print(s);
            printWriter.print("mStarted=");
            printWriter.print(this.cF);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.eW);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.eX);
        }
        if (this.eU || this.eV) {
            printWriter.print(s);
            printWriter.print("mAbandoned=");
            printWriter.print(this.eU);
            printWriter.print(" mReset=");
            printWriter.println(this.eV);
        }
    }
    
    public final void forceLoad() {
        this.onForceLoad();
    }
    
    public final Context getContext() {
        return this.mContext;
    }
    
    public final int getId() {
        return this.cH;
    }
    
    public final boolean isAbandoned() {
        return this.eU;
    }
    
    public final boolean isReset() {
        return this.eV;
    }
    
    public final boolean isStarted() {
        return this.cF;
    }
    
    public final void onContentChanged() {
        if (this.cF) {
            this.onForceLoad();
            return;
        }
        this.eW = true;
    }
    
    protected void onForceLoad() {
    }
    
    protected void onReset() {
    }
    
    protected void onStartLoading() {
    }
    
    protected void onStopLoading() {
    }
    
    public final void reset() {
        this.onReset();
        this.eV = true;
        this.cF = false;
        this.eU = false;
        this.eW = false;
        this.eX = false;
    }
    
    public final void startLoading() {
        this.cF = true;
        this.eV = false;
        this.eU = false;
        this.onStartLoading();
    }
    
    public final void stopLoading() {
        this.cF = false;
        this.onStopLoading();
    }
    
    public final boolean takeContentChanged() {
        final boolean ew = this.eW;
        this.eW = false;
        this.eX |= ew;
        return ew;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder(64);
        d.a(this, sb);
        sb.append(" id=");
        sb.append(this.cH);
        sb.append("}");
        return sb.toString();
    }
}
