package android.support.v13.app;

import android.widget.*;
import java.util.*;
import android.content.*;
import android.app.*;
import android.os.*;

public final class FragmentTabHost extends TabHost implements TabHost$OnTabChangeListener
{
    private final ArrayList<g> b;
    private FragmentManager c;
    private int d;
    private TabHost$OnTabChangeListener e;
    private g f;
    private boolean g;
    private Context mContext;
    
    private FragmentTransaction a(final String s, FragmentTransaction beginTransaction) {
        g f = null;
        g g;
        for (int i = 0; i < this.b.size(); ++i, f = g) {
            g = this.b.get(i);
            if (!g.tag.equals(s)) {
                g = f;
            }
        }
        if (f == null) {
            throw new IllegalStateException("No tab known for tag " + s);
        }
        if (this.f != f) {
            if (beginTransaction == null) {
                beginTransaction = this.c.beginTransaction();
            }
            if (this.f != null && this.f.k != null) {
                beginTransaction.detach(this.f.k);
            }
            if (f != null) {
                if (f.k == null) {
                    f.k = Fragment.instantiate(this.mContext, f.i.getName(), f.j);
                    beginTransaction.add(this.d, f.k, f.tag);
                }
                else {
                    beginTransaction.attach(f.k);
                }
            }
            this.f = f;
        }
        return beginTransaction;
    }
    
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        final String currentTabTag = this.getCurrentTabTag();
        FragmentTransaction beginTransaction = null;
        for (int i = 0; i < this.b.size(); ++i) {
            final g f = this.b.get(i);
            f.k = this.c.findFragmentByTag(f.tag);
            if (f.k != null && !f.k.isDetached()) {
                if (f.tag.equals(currentTabTag)) {
                    this.f = f;
                }
                else {
                    if (beginTransaction == null) {
                        beginTransaction = this.c.beginTransaction();
                    }
                    beginTransaction.detach(f.k);
                }
            }
        }
        this.g = true;
        final FragmentTransaction a = this.a(currentTabTag, beginTransaction);
        if (a != null) {
            a.commit();
            this.c.executePendingTransactions();
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
            final FragmentTransaction a = this.a(s, null);
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
