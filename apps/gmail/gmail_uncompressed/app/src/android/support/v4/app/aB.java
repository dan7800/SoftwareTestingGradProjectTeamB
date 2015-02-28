package android.support.v4.app;

import android.app.*;
import android.widget.*;
import android.graphics.*;
import android.content.*;
import android.net.*;
import android.os.*;
import java.util.*;

public final class ab
{
    Bundle cV;
    boolean dA;
    String dB;
    int dC;
    int dD;
    Notification dE;
    Notification dF;
    public ArrayList<String> dG;
    CharSequence dg;
    CharSequence dh;
    PendingIntent di;
    PendingIntent dj;
    RemoteViews dk;
    Bitmap dl;
    CharSequence dm;
    int dn;
    int do;
    boolean dp;
    boolean dq;
    an dr;
    CharSequence ds;
    int dt;
    int du;
    boolean dv;
    String dw;
    boolean dx;
    String dy;
    ArrayList<W> dz;
    Context mContext;
    
    public ab(final Context mContext) {
        this.dp = true;
        this.dz = new ArrayList<W>();
        this.dA = false;
        this.dC = 0;
        this.dD = 0;
        this.dF = new Notification();
        this.mContext = mContext;
        this.dF.when = System.currentTimeMillis();
        this.dF.audioStreamType = -1;
        this.do = 0;
        this.dG = new ArrayList<String>();
    }
    
    private void a(final int n, final boolean b) {
        if (b) {
            final Notification df = this.dF;
            df.flags |= n;
            return;
        }
        final Notification df2 = this.dF;
        df2.flags &= ~n;
    }
    
    protected static CharSequence f(final CharSequence charSequence) {
        if (charSequence != null && charSequence.length() > 5120) {
            return charSequence.subSequence(0, 5120);
        }
        return charSequence;
    }
    
    public final ab a(final int n, final CharSequence charSequence, final PendingIntent pendingIntent) {
        this.dz.add(new W(n, charSequence, pendingIntent));
        return this;
    }
    
    public final ab a(final long when) {
        this.dF.when = when;
        return this;
    }
    
    public final ab a(final PendingIntent di) {
        this.di = di;
        return this;
    }
    
    public final ab a(final Bitmap dl) {
        this.dl = dl;
        return this;
    }
    
    public final ab a(final Uri sound) {
        this.dF.sound = sound;
        this.dF.audioStreamType = -1;
        return this;
    }
    
    public final ab a(final ac ac) {
        ac.a(this);
        return this;
    }
    
    public final ab a(final RemoteViews contentView) {
        this.dF.contentView = contentView;
        return this;
    }
    
    public final ab am() {
        this.a(8, true);
        return this;
    }
    
    public final ab an() {
        this.a(16, true);
        return this;
    }
    
    public final ab ao() {
        this.dx = true;
        return this;
    }
    
    public final ab b(final Notification de) {
        this.dE = de;
        return this;
    }
    
    public final ab b(final PendingIntent deleteIntent) {
        this.dF.deleteIntent = deleteIntent;
        return this;
    }
    
    public final ab b(final CharSequence charSequence) {
        this.dg = f(charSequence);
        return this;
    }
    
    public final Notification build() {
        return V.cU.b(this);
    }
    
    public final ab c(final CharSequence charSequence) {
        this.dh = f(charSequence);
        return this;
    }
    
    public final ab c(final boolean b) {
        this.a(2, b);
        return this;
    }
    
    public final ab d(final CharSequence charSequence) {
        this.ds = f(charSequence);
        return this;
    }
    
    public final ab d(final String db) {
        this.dB = db;
        return this;
    }
    
    public final ab e(final CharSequence charSequence) {
        this.dF.tickerText = f(charSequence);
        return this;
    }
    
    public final ab e(final String dw) {
        this.dw = dw;
        return this;
    }
    
    public final ab f(final String dy) {
        this.dy = dy;
        return this;
    }
    
    public final ab h(final int icon) {
        this.dF.icon = icon;
        return this;
    }
    
    public final ab i(final int dn) {
        this.dn = dn;
        return this;
    }
    
    public final ab j(final int defaults) {
        this.dF.defaults = defaults;
        if ((defaults & 0x4) != 0x0) {
            final Notification df = this.dF;
            df.flags |= 0x1;
        }
        return this;
    }
    
    public final ab k(final int dc) {
        this.dC = dc;
        return this;
    }
    
    public final ab l(final int dd) {
        this.dD = dd;
        return this;
    }
}
