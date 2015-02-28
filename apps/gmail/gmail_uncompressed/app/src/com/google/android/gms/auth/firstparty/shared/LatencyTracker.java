package com.google.android.gms.auth.firstparty.shared;

import com.google.android.gms.common.internal.safeparcel.*;
import android.util.*;
import java.util.*;
import java.util.concurrent.*;
import android.text.*;
import android.os.*;

public class LatencyTracker implements SafeParcelable
{
    public static final g CREATOR;
    final long bAe;
    public final LatencyTracker bAf;
    final int bxf;
    final String mName;
    
    static {
        CREATOR = new g();
    }
    
    LatencyTracker(final int bxf, final String mName, final long bAe, final LatencyTracker bAf) {
        this.bxf = bxf;
        this.mName = mName;
        this.bAe = bAe;
        this.bAf = bAf;
        this.aj(mName, "constructed");
    }
    
    private void aj(final String s, final String s2) {
        if (Log.isLoggable("GLSLogging", 2)) {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            final LinkedList<String> list = new LinkedList<String>();
            while (this != null) {
                final long n = elapsedRealtime - this.bAe;
                final long seconds = TimeUnit.MILLISECONDS.toSeconds(n);
                list.addFirst(String.format("[%s, %,d.%03ds]", this.mName, seconds, n - TimeUnit.SECONDS.toMillis(seconds)));
                this = this.bAf;
            }
            Log.println(2, "GLSLogging", s + " " + TextUtils.join((CharSequence)" > ", (Iterable)list) + " > " + s2);
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        this.aj(this.mName, "writing to parcel");
        g.a(this, parcel, n);
    }
}
