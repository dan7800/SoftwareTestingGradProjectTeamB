package com.google.analytics.tracking.android;

import android.content.*;
import java.util.*;

public final class r implements UncaughtExceptionHandler
{
    private final UncaughtExceptionHandler aSG;
    private q aSH;
    private final ah aSw;
    private final ad aSz;
    
    public r(final ah aSw, final ad aSz, final UncaughtExceptionHandler asg, final Context context) {
        if (aSw == null) {
            throw new NullPointerException("tracker cannot be null");
        }
        if (aSz == null) {
            throw new NullPointerException("serviceManager cannot be null");
        }
        this.aSG = asg;
        this.aSw = aSw;
        this.aSz = aSz;
        this.aSH = new ag(context, new ArrayList<String>());
        final StringBuilder sb = new StringBuilder("ExceptionReporter created, original handler is ");
        String name;
        if (asg == null) {
            name = "null";
        }
        else {
            name = asg.getClass().getName();
        }
        Q.cY(sb.append(name).toString());
    }
    
    @Override
    public final void uncaughtException(final Thread thread, final Throwable t) {
        String a = "UncaughtException";
        if (this.aSH != null) {
            String name;
            if (thread != null) {
                name = thread.getName();
            }
            else {
                name = null;
            }
            a = this.aSH.a(name, t);
        }
        Q.cY("Tracking Exception: " + a);
        this.aSw.cQ(a);
        this.aSz.BB();
        if (this.aSG != null) {
            Q.cY("Passing exception to original handler.");
            this.aSG.uncaughtException(thread, t);
        }
    }
}
