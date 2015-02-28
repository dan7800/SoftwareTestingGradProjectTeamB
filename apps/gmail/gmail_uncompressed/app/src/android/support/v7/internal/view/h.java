package android.support.v7.internal.view;

import android.view.animation.*;
import android.support.v4.view.*;
import java.util.*;

public final class h
{
    private final ArrayList<aV> lO;
    private Interpolator mInterpolator;
    private long wa;
    private bk wb;
    private boolean wc;
    private final bl wd;
    
    public h() {
        this.wa = -1L;
        this.wd = new i(this);
        this.lO = new ArrayList<aV>();
    }
    
    public final h b(final bk wb) {
        if (!this.wc) {
            this.wb = wb;
        }
        return this;
    }
    
    public final h b(final Interpolator mInterpolator) {
        if (!this.wc) {
            this.mInterpolator = mInterpolator;
        }
        return this;
    }
    
    public final void cancel() {
        if (!this.wc) {
            return;
        }
        final Iterator<aV> iterator = this.lO.iterator();
        while (iterator.hasNext()) {
            iterator.next().cancel();
        }
        this.wc = false;
    }
    
    public final h du() {
        if (!this.wc) {
            this.wa = 250L;
        }
        return this;
    }
    
    public final h e(final aV av) {
        if (!this.wc) {
            this.lO.add(av);
        }
        return this;
    }
    
    public final void start() {
        if (this.wc) {
            return;
        }
        for (final aV av : this.lO) {
            if (this.wa >= 0L) {
                av.b(this.wa);
            }
            if (this.mInterpolator != null) {
                av.a(this.mInterpolator);
            }
            if (this.wb != null) {
                av.a(this.wd);
            }
            av.start();
        }
        this.wc = true;
    }
}
