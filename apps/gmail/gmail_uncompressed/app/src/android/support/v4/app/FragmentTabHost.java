package android.support.v4.app;

import android.widget.*;
import java.util.*;
import android.content.*;
import android.os.*;

public final class FragmentTabHost extends TabHost implements TabHost$OnTabChangeListener
{
    private final ArrayList<y> b;
    private p ck;
    private y cl;
    private int d;
    private TabHost$OnTabChangeListener e;
    private boolean g;
    private Context mContext;
    
    private z a(final String s, z h) {
        y cl = null;
        y y;
        for (int i = 0; i < this.b.size(); ++i, cl = y) {
            y = this.b.get(i);
            if (!y.tag.equals(s)) {
                y = cl;
            }
        }
        if (cl == null) {
            throw new IllegalStateException("No tab known for tag " + s);
        }
        if (this.cl != cl) {
            if (h == null) {
                h = this.ck.H();
            }
            if (this.cl != null && this.cl.S != null) {
                h.b(this.cl.S);
            }
            if (cl != null) {
                if (cl.S == null) {
                    cl.S = Fragment.a(this.mContext, cl.i.getName(), cl.j);
                    h.a(this.d, cl.S, cl.tag);
                }
                else {
                    h.c(cl.S);
                }
            }
            this.cl = cl;
        }
        return h;
    }
    
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        final String currentTabTag = this.getCurrentTabTag();
        z h = null;
        for (int i = 0; i < this.b.size(); ++i) {
            final y cl = this.b.get(i);
            cl.S = this.ck.b(cl.tag);
            if (cl.S != null && !cl.S.isDetached()) {
                if (cl.tag.equals(currentTabTag)) {
                    this.cl = cl;
                }
                else {
                    if (h == null) {
                        h = this.ck.H();
                    }
                    h.b(cl.S);
                }
            }
        }
        this.g = true;
        final z a = this.a(currentTabTag, h);
        if (a != null) {
            a.commit();
            this.ck.executePendingTransactions();
        }
    }
    
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.g = false;
    }
    
    protected final void onRestoreInstanceState(final Parcelable parcelable) {
        final FragmentTabHost$SavedState fragmentTabHost$SavedState = (FragmentTabHost$SavedState)parcelable;
        super.onRestoreInstanceState(fragmentTabHost$SavedState.getSuperState());
        this.setCurrentTabByTag(fragmentTabHost$SavedState.h);
    }
    
    protected final Parcelable onSaveInstanceState() {
        final FragmentTabHost$SavedState fragmentTabHost$SavedState = new FragmentTabHost$SavedState(super.onSaveInstanceState());
        fragmentTabHost$SavedState.h = this.getCurrentTabTag();
        return (Parcelable)fragmentTabHost$SavedState;
    }
    
    public final void onTabChanged(final String s) {
        if (this.g) {
            final z a = this.a(s, null);
            if (a != null) {
                a.commit();
            }
        }
        if (this.e != null) {
            this.e.onTabChanged(s);
        }
    }
    
    public final void setOnTabChangedListener(final TabHost$OnTabChangeListener e) {
        this.e = e;
    }
    
    @Deprecated
    public final void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }
}
