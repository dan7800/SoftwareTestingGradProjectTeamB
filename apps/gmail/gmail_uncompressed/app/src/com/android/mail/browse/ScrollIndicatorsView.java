package com.android.mail.browse;

import android.view.*;
import android.content.*;
import android.util.*;

public class ScrollIndicatorsView extends View implements aN
{
    private aM atG;
    
    public ScrollIndicatorsView(final Context context) {
        super(context);
    }
    
    public ScrollIndicatorsView(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public final void a(final aM atG) {
        (this.atG = atG).a(this);
    }
    
    public final void bP(final int n) {
        this.awakenScrollBars();
    }
    
    protected int computeHorizontalScrollExtent() {
        return this.atG.computeHorizontalScrollExtent();
    }
    
    protected int computeHorizontalScrollOffset() {
        return this.atG.computeHorizontalScrollOffset();
    }
    
    protected int computeHorizontalScrollRange() {
        return this.atG.computeHorizontalScrollRange();
    }
    
    protected int computeVerticalScrollExtent() {
        return this.atG.computeVerticalScrollExtent();
    }
    
    protected int computeVerticalScrollOffset() {
        return this.atG.computeVerticalScrollOffset();
    }
    
    protected int computeVerticalScrollRange() {
        return this.atG.computeVerticalScrollRange();
    }
}
