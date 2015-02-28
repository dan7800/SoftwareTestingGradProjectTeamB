package com.google.analytics.tracking.android;

import android.content.*;
import android.content.pm.*;
import java.util.*;

public final class ag implements q
{
    private final TreeSet<String> aVv;
    
    public ag(final Context context, final Collection<String> collection) {
        this.aVv = new TreeSet<String>();
        this.b(context, collection);
    }
    
    private static Throwable b(Throwable cause) {
        while (cause.getCause() != null) {
            cause = cause.getCause();
        }
        return cause;
    }
    
    private void b(final Context context, final Collection<String> collection) {
        this.aVv.clear();
        final HashSet<String> set = new HashSet<String>();
        if (collection != null) {
            set.addAll((Collection<?>)collection);
        }
        if (context != null) {
            try {
                final String packageName = context.getApplicationContext().getPackageName();
                this.aVv.add(packageName);
                final ActivityInfo[] activities = context.getApplicationContext().getPackageManager().getPackageInfo(packageName, 15).activities;
                if (activities != null) {
                    for (int length = activities.length, i = 0; i < length; ++i) {
                        set.add(activities[i].packageName);
                    }
                }
            }
            catch (PackageManager$NameNotFoundException ex) {
                Q.cX("No package found");
            }
        }
        for (final String s : set) {
            final Iterator<String> iterator2 = this.aVv.iterator();
            int n = 1;
            while (iterator2.hasNext()) {
                final String s2 = iterator2.next();
                if (!s.startsWith(s2)) {
                    if (s2.startsWith(s)) {
                        this.aVv.remove(s2);
                        break;
                    }
                    break;
                }
                else {
                    n = 0;
                }
            }
            if (n != 0) {
                this.aVv.add(s);
            }
        }
    }
    
    @Override
    public final String a(final String s, final Throwable t) {
        final Throwable b = b(t);
        final StackTraceElement[] stackTrace = b(t).getStackTrace();
        StackTraceElement stackTraceElement = null;
        Label_0028: {
            if (stackTrace == null || stackTrace.length == 0) {
                stackTraceElement = null;
            }
            else {
                for (final StackTraceElement stackTraceElement2 : stackTrace) {
                    final String className = stackTraceElement2.getClassName();
                    final Iterator<String> iterator = this.aVv.iterator();
                    while (iterator.hasNext()) {
                        if (className.startsWith(iterator.next())) {
                            stackTraceElement = stackTraceElement2;
                            break Label_0028;
                        }
                    }
                }
                stackTraceElement = stackTrace[0];
            }
        }
        final StringBuilder sb = new StringBuilder();
        sb.append(b.getClass().getSimpleName());
        if (stackTraceElement != null) {
            final String[] split = stackTraceElement.getClassName().split("\\.");
            String s2 = "unknown";
            if (split != null && split.length > 0) {
                s2 = split[-1 + split.length];
            }
            sb.append(String.format(" (@%s:%s:%s)", s2, stackTraceElement.getMethodName(), stackTraceElement.getLineNumber()));
        }
        if (s != null) {
            sb.append(String.format(" {%s}", s));
        }
        return sb.toString();
    }
}
