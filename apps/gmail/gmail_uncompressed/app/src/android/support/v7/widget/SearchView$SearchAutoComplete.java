package android.support.v7.widget;

import android.content.*;
import android.util.*;
import android.support.v7.internal.widget.*;
import android.graphics.*;
import android.view.inputmethod.*;
import android.support.v7.c.*;
import android.widget.*;
import android.os.*;
import android.text.*;
import android.graphics.drawable.*;
import android.support.v7.a.*;
import android.view.*;

public class SearchView$SearchAutoComplete extends AutoCompleteTextView
{
    private final U AO;
    private final int[] FK;
    private int FL;
    private SearchView FM;
    
    public SearchView$SearchAutoComplete(final Context context) {
        this(context, null);
    }
    
    public SearchView$SearchAutoComplete(final Context context, final AttributeSet set) {
        this(context, set, 16842859);
    }
    
    public SearchView$SearchAutoComplete(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.FK = new int[] { 16843126 };
        this.FL = this.getThreshold();
        final Z a = Z.a(context, set, this.FK, n);
        if (a.hasValue(0)) {
            this.setDropDownBackgroundDrawable(a.getDrawable(0));
        }
        a.recycle();
        this.AO = a.eU();
    }
    
    public boolean enoughToFilter() {
        return this.FL <= 0 || super.enoughToFilter();
    }
    
    protected void onFocusChanged(final boolean b, final int n, final Rect rect) {
        super.onFocusChanged(b, n, rect);
        this.FM.fO();
    }
    
    public boolean onKeyPreIme(final int n, final KeyEvent keyEvent) {
        if (n == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                final KeyEvent$DispatcherState keyDispatcherState = this.getKeyDispatcherState();
                if (keyDispatcherState != null) {
                    keyDispatcherState.startTracking(keyEvent, (Object)this);
                }
                return true;
            }
            if (keyEvent.getAction() == 1) {
                final KeyEvent$DispatcherState keyDispatcherState2 = this.getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.handleUpEvent(keyEvent);
                }
                if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                    this.FM.clearFocus();
                    SearchView.a(this.FM);
                    return true;
                }
            }
        }
        return super.onKeyPreIme(n, keyEvent);
    }
    
    public void onWindowFocusChanged(final boolean b) {
        super.onWindowFocusChanged(b);
        if (b && this.FM.hasFocus() && this.getVisibility() == 0) {
            ((InputMethodManager)this.getContext().getSystemService("input_method")).showSoftInput((View)this, 0);
            if (SearchView.h(this.getContext())) {
                SearchView.FC.c(this);
            }
        }
    }
    
    public void performCompletion() {
    }
    
    protected void replaceText(final CharSequence charSequence) {
    }
    
    public void setDropDownBackgroundResource(final int n) {
        this.setDropDownBackgroundDrawable(this.AO.getDrawable(n));
    }
    
    public void setThreshold(final int n) {
        super.setThreshold(n);
        this.FL = n;
    }
}
