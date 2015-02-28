package com.android.datetimepicker.date;

import android.content.*;
import android.util.*;
import android.support.v4.view.*;
import android.content.res.*;
import android.graphics.*;
import java.util.*;
import java.security.*;
import com.android.datetimepicker.*;
import android.text.format.*;
import android.view.*;
import java.io.*;

public abstract class k extends View
{
    protected static int II;
    protected static int IJ;
    protected static int IK;
    protected static int IL;
    protected static int IM;
    protected static int IN;
    protected static int IO;
    protected static int IP;
    protected static float IQ;
    protected int GN;
    private final Calendar HO;
    protected a IA;
    protected int IR;
    private String IS;
    private String IT;
    protected Paint IU;
    protected Paint IV;
    protected Paint IW;
    protected Paint IX;
    protected Paint IY;
    private final Formatter IZ;
    protected int Ib;
    private final StringBuilder Ja;
    protected int Jb;
    protected int Jc;
    protected int Jd;
    protected int Je;
    protected int Jf;
    protected int Jg;
    protected boolean Jh;
    protected int Ji;
    protected int Jj;
    protected int Jk;
    protected int Jl;
    protected int Jm;
    protected int Jn;
    protected final Calendar Jo;
    private final l Jp;
    protected int Jq;
    protected m Jr;
    private boolean Js;
    protected int Jt;
    protected int Ju;
    protected int Jv;
    protected int Jw;
    protected int Jx;
    private int Jy;
    
    static {
        k.II = 32;
        k.IJ = 10;
        k.IK = 1;
        k.IQ = 0.0f;
    }
    
    public k(final Context context) {
        this(context, (byte)0);
    }
    
    private k(final Context context, final byte b) {
        super(context, (AttributeSet)null);
        this.IR = 0;
        this.Jb = -1;
        this.Jc = -1;
        this.Jd = -1;
        this.Jg = k.II;
        this.Jh = false;
        this.Ji = -1;
        this.Jj = -1;
        this.Ib = 1;
        this.Jk = 7;
        this.Jl = this.Jk;
        this.Jm = -1;
        this.Jn = -1;
        this.Jq = 6;
        this.Jy = 0;
        final Resources resources = context.getResources();
        this.Jo = Calendar.getInstance();
        this.HO = Calendar.getInstance();
        this.IS = resources.getString(h.HE);
        this.IT = resources.getString(h.HH);
        this.Jt = resources.getColor(d.Hk);
        this.Ju = resources.getColor(d.Hh);
        this.Jv = resources.getColor(d.Hj);
        this.Jw = resources.getColor(d.white);
        this.Jx = resources.getColor(d.Hi);
        this.Ja = new StringBuilder(50);
        this.IZ = new Formatter(this.Ja, Locale.getDefault());
        k.IL = resources.getDimensionPixelSize(e.Hp);
        k.IM = resources.getDimensionPixelSize(e.Hr);
        k.IN = resources.getDimensionPixelSize(e.Hq);
        k.IO = resources.getDimensionPixelOffset(e.Hs);
        k.IP = resources.getDimensionPixelSize(e.Ho);
        this.Jg = (resources.getDimensionPixelOffset(e.Hn) - k.IO) / 6;
        ad.a(this, this.Jp = new l(this, this));
        ad.c(this, 1);
        this.Js = true;
        (this.IV = new Paint()).setFakeBoldText(true);
        this.IV.setAntiAlias(true);
        this.IV.setTextSize((float)k.IM);
        this.IV.setTypeface(Typeface.create(this.IT, 1));
        this.IV.setColor(this.Jt);
        this.IV.setTextAlign(Paint$Align.CENTER);
        this.IV.setStyle(Paint$Style.FILL);
        (this.IW = new Paint()).setFakeBoldText(true);
        this.IW.setAntiAlias(true);
        this.IW.setColor(this.Jx);
        this.IW.setTextAlign(Paint$Align.CENTER);
        this.IW.setStyle(Paint$Style.FILL);
        (this.IX = new Paint()).setFakeBoldText(true);
        this.IX.setAntiAlias(true);
        this.IX.setColor(this.Ju);
        this.IX.setTextAlign(Paint$Align.CENTER);
        this.IX.setStyle(Paint$Style.FILL);
        this.IX.setAlpha(60);
        (this.IY = new Paint()).setAntiAlias(true);
        this.IY.setTextSize((float)k.IN);
        this.IY.setColor(this.Jt);
        this.IY.setTypeface(Typeface.create(this.IS, 0));
        this.IY.setStyle(Paint$Style.FILL);
        this.IY.setTextAlign(Paint$Align.CENTER);
        this.IY.setFakeBoldText(true);
        (this.IU = new Paint()).setAntiAlias(true);
        this.IU.setTextSize((float)k.IL);
        this.IU.setStyle(Paint$Style.FILL);
        this.IU.setTextAlign(Paint$Align.CENTER);
        this.IU.setFakeBoldText(false);
    }
    
    private void aI(final int n) {
        if (this.e(this.Jf, this.Je, n)) {
            return;
        }
        if (this.Jr != null) {
            this.Jr.b(new j(this.Jf, this.Je, n));
        }
        this.Jp.h(n, 1);
    }
    
    protected static int gr() {
        return k.IO;
    }
    
    public abstract void a(final Canvas p0, final int p1, final int p2, final int p3, final int p4, final int p5);
    
    public final void a(final a ia) {
        this.IA = ia;
    }
    
    public final void a(final m jr) {
        this.Jr = jr;
    }
    
    public final void a(final HashMap<String, Integer> tag) {
        if (!tag.containsKey("month") && !tag.containsKey("year")) {
            throw new InvalidParameterException("You must specify month and year for this view");
        }
        this.setTag((Object)tag);
        if (tag.containsKey("height")) {
            this.Jg = tag.get("height");
            if (this.Jg < k.IJ) {
                this.Jg = k.IJ;
            }
        }
        if (tag.containsKey("selected_day")) {
            this.Ji = tag.get("selected_day");
        }
        this.Je = tag.get("month");
        this.Jf = tag.get("year");
        final Time time = new Time(Time.getCurrentTimezone());
        time.setToNow();
        this.Jh = false;
        this.Jj = -1;
        this.HO.set(2, this.Je);
        this.HO.set(1, this.Jf);
        this.HO.set(5, 1);
        this.Jy = this.HO.get(7);
        if (tag.containsKey("week_start")) {
            this.Ib = tag.get("week_start");
        }
        else {
            this.Ib = this.HO.getFirstDayOfWeek();
        }
        this.Jl = i.y(this.Je, this.Jf);
        for (int i = 0; i < this.Jl; ++i) {
            final int jj = i + 1;
            int n;
            if (this.Jf == time.year && this.Je == time.month && jj == time.monthDay) {
                n = 1;
            }
            else {
                n = 0;
            }
            if (n != 0) {
                this.Jh = true;
                this.Jj = jj;
            }
        }
        final int gs = this.gs();
        final int n2 = (gs + this.Jl) / this.Jk;
        final int n3 = (gs + this.Jl) % this.Jk;
        int n4 = 0;
        if (n3 > 0) {
            n4 = 1;
        }
        this.Jq = n2 + n4;
        this.Jp.bW();
    }
    
    public final boolean d(final j j) {
        if (j.year != this.Jf || j.month != this.Je || j.IH > this.Jl) {
            return false;
        }
        this.Jp.aJ(j.IH);
        return true;
    }
    
    public boolean dispatchHoverEvent(final MotionEvent motionEvent) {
        return this.Jp.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }
    
    protected final boolean e(final int n, final int n2, final int n3) {
        while (true) {
            Label_0095: {
                if (this.IA == null) {
                    break Label_0095;
                }
                final Calendar gi = this.IA.gi();
                if (gi == null) {
                    break Label_0095;
                }
                int n4;
                if (n < gi.get(1)) {
                    n4 = 1;
                }
                else {
                    if (n > gi.get(1)) {
                        break Label_0095;
                    }
                    if (n2 < gi.get(2)) {
                        n4 = 1;
                    }
                    else {
                        if (n2 > gi.get(2) || n3 >= gi.get(5)) {
                            break Label_0095;
                        }
                        n4 = 1;
                    }
                }
                if (n4 == 0) {
                    while (true) {
                        Label_0196: {
                            if (this.IA == null) {
                                break Label_0196;
                            }
                            final Calendar gj = this.IA.gj();
                            if (gj == null) {
                                break Label_0196;
                            }
                            int n5;
                            if (n > gj.get(1)) {
                                n5 = 1;
                            }
                            else {
                                if (n < gj.get(1)) {
                                    break Label_0196;
                                }
                                if (n2 > gj.get(2)) {
                                    n5 = 1;
                                }
                                else {
                                    if (n2 < gj.get(2) || n3 <= gj.get(5)) {
                                        break Label_0196;
                                    }
                                    n5 = 1;
                                }
                            }
                            if (n5 == 0) {
                                return false;
                            }
                            return true;
                        }
                        int n5 = 0;
                        continue;
                    }
                }
                return true;
            }
            int n4 = 0;
            continue;
        }
    }
    
    public final int f(final float n, final float n2) {
        final int ir = this.IR;
        int n3;
        if (n < ir || n > this.GN - this.IR) {
            n3 = -1;
        }
        else {
            n3 = 1 + ((int)((n - ir) * this.Jk / (this.GN - ir - this.IR)) - this.gs()) + (int)(n2 - k.IO) / this.Jg * this.Jk;
        }
        if (n3 <= 0 || n3 > this.Jl) {
            n3 = -1;
        }
        return n3;
    }
    
    public final void gq() {
        this.Jq = 6;
        this.requestLayout();
    }
    
    protected final int gs() {
        int jy;
        if (this.Jy < this.Ib) {
            jy = this.Jy + this.Jk;
        }
        else {
            jy = this.Jy;
        }
        return jy - this.Ib;
    }
    
    public final j gt() {
        final int bx = this.Jp.bX();
        if (bx >= 0) {
            return new j(this.Jf, this.Je, bx);
        }
        return null;
    }
    
    public final void gu() {
        this.Jp.gv();
    }
    
    protected void onDraw(final Canvas canvas) {
        final int n = (this.GN + 2 * this.IR) / 2;
        final int n2 = (k.IO - k.IN) / 2 + k.IM / 3;
        this.Ja.setLength(0);
        final long timeInMillis = this.HO.getTimeInMillis();
        canvas.drawText(DateUtils.formatDateRange(this.getContext(), this.IZ, timeInMillis, timeInMillis, 52, Time.getCurrentTimezone()).toString(), (float)n, (float)n2, this.IV);
        final int n3 = k.IO - k.IN / 2;
        final int n4 = (this.GN - 2 * this.IR) / (2 * this.Jk);
        for (int i = 0; i < this.Jk; ++i) {
            final int n5 = (i + this.Ib) % this.Jk;
            final int n6 = n4 * (1 + i * 2) + this.IR;
            this.Jo.set(7, n5);
            canvas.drawText(this.Jo.getDisplayName(7, 1, Locale.getDefault()).toUpperCase(Locale.getDefault()), (float)n6, (float)n3, this.IY);
        }
        int n7 = (this.Jg + k.IL) / 2 - k.IK + k.IO;
        final float n8 = (this.GN - 2 * this.IR) / (2.0f * this.Jk);
        final int gs = this.gs();
        int j = 1;
        int n9 = gs;
        while (j <= this.Jl) {
            final int n10 = (int)(n8 * (1 + n9 * 2) + this.IR);
            final int jg = this.Jg;
            final int il = k.IL;
            final int ik = k.IK;
            final int jg2 = this.Jg;
            this.a(canvas, this.Jf, this.Je, j, n10, n7);
            int n11 = n9 + 1;
            if (n11 == this.Jk) {
                n7 += this.Jg;
                n11 = 0;
            }
            ++j;
            n9 = n11;
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        this.setMeasuredDimension(View$MeasureSpec.getSize(n), this.Jg * this.Jq + k.IO);
    }
    
    protected void onSizeChanged(final int gn, final int n, final int n2, final int n3) {
        this.GN = gn;
        this.Jp.bW();
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 1: {
                final int f = this.f(motionEvent.getX(), motionEvent.getY());
                if (f >= 0) {
                    this.aI(f);
                    break;
                }
                break;
            }
        }
        return true;
    }
    
    public void setAccessibilityDelegate(final View$AccessibilityDelegate accessibilityDelegate) {
        if (!this.Js) {
            super.setAccessibilityDelegate(accessibilityDelegate);
        }
    }
}
