package com.google.android.gms.f;

import android.content.*;
import android.util.*;
import android.content.pm.*;
import com.google.android.gms.internal.*;

public final class a
{
    private final cM bXl;
    private qu cjR;
    
    private a(final Context context, final int n, final b b) {
        this(context, 6, null, null, b);
    }
    
    private a(final Context context, final int n, final String s, final String s2, final b b) {
        final String packageName = context.getPackageName();
        while (true) {
            try {
                final int versionCode = context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
                this.cjR = new qu(packageName, versionCode, n, null, null, true);
                this.bXl = new cM(context, new cK(b));
            }
            catch (PackageManager$NameNotFoundException ex) {
                Log.wtf("PlayLogger", "This can't happen.");
                final int versionCode = 0;
                continue;
            }
            break;
        }
    }
    
    public a(final Context context, final b b) {
        this(context, 6, b);
    }
    
    public final void g(final String s, final String... array) {
        this.bXl.b(this.cjR, new qq(System.currentTimeMillis(), s, null, array));
    }
    
    public final void start() {
        this.bXl.start();
    }
}
