package com.google.android.gms.googlehelp;

import com.google.android.gms.common.internal.safeparcel.*;
import android.accounts.*;
import android.net.*;
import com.google.android.gms.googlehelp.internal.common.*;
import java.util.*;
import android.app.*;
import android.view.*;
import android.content.*;
import java.io.*;
import android.util.*;
import android.graphics.*;
import android.os.*;

public final class GoogleHelp implements SafeParcelable
{
    public static final Parcelable$Creator<GoogleHelp> CREATOR;
    String alt;
    String bQA;
    Account bQB;
    Bundle bQC;
    boolean bQD;
    boolean bQE;
    List<String> bQF;
    String bQG;
    Bundle bQH;
    Bitmap bQI;
    byte[] bQJ;
    int bQK;
    int bQL;
    boolean bQM;
    String bQN;
    String bQO;
    Uri bQP;
    List<OverflowMenuItem> bQQ;
    int bQR;
    List<OfflineSuggestion> bQS;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    GoogleHelp(final int btV, final String bqa, final Account bqb, final Bundle bqc, final boolean bqd, final boolean bqe, final List<String> bqf, final String alt, final String bqg, final Bundle bqh, final Bitmap bqi, final byte[] bqj, final int bqk, final int bql, final boolean bqm, final String bqn, final String bqo, final Uri bqp, final List<OverflowMenuItem> bqq, final int bqr, final List<OfflineSuggestion> bqs) {
        this.btV = btV;
        this.bQA = bqa;
        this.bQB = bqb;
        this.bQC = bqc;
        this.bQD = bqd;
        this.bQE = bqe;
        this.bQF = bqf;
        this.alt = alt;
        this.bQG = bqg;
        this.bQH = bqh;
        this.bQI = bqi;
        this.bQJ = bqj;
        this.bQK = bqk;
        this.bQL = bql;
        this.bQM = bqm;
        this.bQN = bqn;
        this.bQO = bqo;
        this.bQP = bqp;
        this.bQQ = bqq;
        this.bQR = bqr;
        this.bQS = bqs;
    }
    
    public static GoogleHelp gi(final String s) {
        return new GoogleHelp(2, s, null, null, true, true, new ArrayList<String>(), null, null, null, null, null, 0, 0, false, null, null, null, new ArrayList<OverflowMenuItem>(), 0, new ArrayList<OfflineSuggestion>());
    }
    
    public static Bitmap j(final Activity activity) {
        try {
            final View rootView = activity.getWindow().getDecorView().getRootView();
            rootView.setDrawingCacheEnabled(true);
            return rootView.getDrawingCache();
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    public final GoogleHelp L(final Uri bqp) {
        this.bQP = bqp;
        return this;
    }
    
    @Deprecated
    public final Intent QA() {
        return new Intent("com.google.android.gms.googlehelp.HELP").setPackage("com.google.android.gms").putExtra("EXTRA_GOOGLE_HELP", (Parcelable)this);
    }
    
    public final Uri QB() {
        return this.bQP;
    }
    
    public final GoogleHelp a(final int n, final String s, final Intent intent) {
        this.bQQ.add(new OverflowMenuItem(n, s, intent));
        return this;
    }
    
    public final GoogleHelp d(final Account bqb) {
        this.bQB = bqb;
        return this;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final GoogleHelp h(Bitmap scaledBitmap) {
        if (scaledBitmap == null) {
            this.bQI = null;
            this.bQJ = null;
            return this;
        }
        int n = 0;
        Bitmap scaledBitmap2;
        GoogleHelp googleHelp;
        while (true) {
            final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            scaledBitmap.compress(Bitmap$CompressFormat.JPEG, 60, (OutputStream)byteArrayOutputStream);
            final byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (byteArray != null && byteArray.length > 0 && byteArray.length <= 262144) {
                this.bQJ = byteArray;
                this.bQK = scaledBitmap.getWidth();
                this.bQL = scaledBitmap.getHeight();
                scaledBitmap2 = null;
                googleHelp = this;
                break;
            }
            if (byteArray != null && byteArray.length > 262144 && n == 0) {
                final double max = Math.max(1.0, Math.sqrt(scaledBitmap.getWidth() * scaledBitmap.getHeight() / 1048576.0));
                scaledBitmap = Bitmap.createScaledBitmap(scaledBitmap, (int)(scaledBitmap.getWidth() / max), (int)(scaledBitmap.getHeight() / max), true);
                n = 1;
            }
            else {
                Log.e("GOOGLEHELP_GoogleHelp", "The bytes of the compressed jpeg is too large.");
                this.bQJ = null;
                if (scaledBitmap == null) {
                    googleHelp = this;
                    scaledBitmap2 = null;
                    break;
                }
                final Bitmap copy = scaledBitmap.copy(Bitmap$Config.RGB_565, false);
                final double max2 = Math.max(1.0, Math.sqrt(copy.getRowBytes() * copy.getHeight() / 262144.0));
                scaledBitmap2 = Bitmap.createScaledBitmap(copy, (int)(scaledBitmap.getWidth() / max2), (int)(scaledBitmap.getHeight() / max2), true);
                googleHelp = this;
                break;
            }
        }
        googleHelp.bQI = scaledBitmap2;
        return this;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel, n);
    }
    
    public final GoogleHelp z(final Bundle bqh) {
        this.bQH = bqh;
        return this;
    }
}
