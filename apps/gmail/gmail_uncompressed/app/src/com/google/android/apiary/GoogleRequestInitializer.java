package com.google.android.apiary;

import android.content.*;
import java.io.*;
import com.google.android.gms.auth.*;
import android.util.*;
import com.google.android.common.http.*;
import android.os.*;
import com.google.api.client.http.*;

public final class GoogleRequestInitializer implements B, n, v
{
    private String Tz;
    private final String aVH;
    private String aVI;
    private final String aVJ;
    private int aVK;
    private int aVL;
    private String aVM;
    private final Context mContext;
    private final String mLogTag;
    
    public GoogleRequestInitializer(final Context context, final String s, final String s2) {
        this(context, s, s2, (byte)0);
    }
    
    private GoogleRequestInitializer(final Context mContext, final String avh, final String mLogTag, final byte b) {
        this.aVI = null;
        this.aVK = 0;
        this.aVL = 0;
        this.mContext = mContext;
        this.aVH = avh;
        this.mLogTag = mLogTag;
        this.aVJ = null;
    }
    
    private String Cm() {
        Label_0037: {
            if (this.aVI != null) {
                break Label_0037;
            }
            try {
                if (this.aVJ != null) {
                    this.aVI = d.e(this.mContext, this.Tz, this.aVH, this.aVJ);
                }
                else {
                    this.aVI = d.w(this.mContext, this.Tz, this.aVH);
                }
                return this.aVI;
            }
            catch (IOException ex) {
                throw new AuthenticationException("Could not get an auth token", ex);
            }
            catch (GoogleAuthException ex2) {
                throw new AuthenticationException("Could not get an auth token", ex2);
            }
        }
    }
    
    @Override
    public final void a(final t t) {
        t.a((n)this).a((B)this).XJ();
        if (this.aVK > 0) {
            t.eZ(this.aVK);
        }
        if (this.aVL > 0) {
            t.fa(this.aVL);
        }
    }
    
    @Override
    public final boolean a(final t t, final w w, final boolean b) {
        if (w.getStatusCode() == 401) {
            Log.i(this.mLogTag, "Got a 401. Invalidating token");
            if (t.XI() > 0) {
                Log.i(this.mLogTag, "Retrying request");
            }
            d.Y(this.mContext, this.aVI);
            this.aVI = null;
            return true;
        }
        return false;
    }
    
    @Override
    public final void b(final t t) {
        final String cm = this.Cm();
        final o xd = t.XD();
        xd.hh("OAuth " + cm);
        final j xz = t.Xz();
        final String xn = xz.Xn();
        final com.google.android.common.http.j do1 = UrlRules.a(this.mContext.getContentResolver()).do(xn);
        final String apply = do1.apply(xn);
        if (apply == null) {
            Log.w(this.mLogTag, "Blocked by " + do1.mName + ": " + xn);
            throw new GoogleRequestInitializer$BlockedRequestException(do1, (byte)0);
        }
        j i;
        if (!apply.equals(xn)) {
            if (Log.isLoggable(this.mLogTag, 2)) {
                Log.v(this.mLogTag, "Rule " + do1.mName + ": " + xn + " -> " + apply);
            }
            final j j = new j(apply);
            t.e(j);
            i = j;
        }
        else {
            i = xz;
        }
        final String s = (String)i.he("ifmatch");
        if (s != null) {
            xd.hl(s);
            i.remove("ifmatch");
        }
        final StringBuilder append = new StringBuilder(Build.FINGERPRINT).append(":");
        if (this.aVM != null) {
            append.append(this.aVM);
        }
        else {
            append.append(this.mLogTag);
        }
        final String s2 = (String)i.he("userAgentPackage");
        if (s2 != null) {
            append.append(":").append(s2);
            i.remove("userAgentPackage");
        }
        xd.hm(append.toString());
    }
    
    public final void w(final String tz) {
        this.Tz = tz;
        this.aVI = null;
    }
}
