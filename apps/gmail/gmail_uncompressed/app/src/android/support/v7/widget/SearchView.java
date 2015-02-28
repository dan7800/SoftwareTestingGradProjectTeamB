package android.support.v7.widget;

import android.support.v7.c.*;
import android.os.*;
import android.text.*;
import android.graphics.drawable.*;
import android.view.inputmethod.*;
import android.support.v7.a.*;
import android.content.*;
import android.widget.*;
import android.view.*;
import android.graphics.*;

public final class SearchView extends LinearLayoutCompat implements c
{
    static final T FC;
    private static final boolean Fi;
    private boolean FA;
    private int FB;
    private Runnable FD;
    private final Runnable FE;
    private Runnable FF;
    private final SearchView$SearchAutoComplete Fj;
    private final View Fk;
    private final View Fl;
    private final ImageView Fm;
    private final ImageView Fn;
    private final ImageView Fo;
    private final ImageView Fp;
    private final ImageView Fq;
    private View$OnClickListener Fr;
    private boolean Fs;
    private boolean Ft;
    private boolean Fv;
    private boolean Fw;
    private int Fx;
    private boolean Fy;
    private CharSequence Fz;
    
    static {
        Fi = (Build$VERSION.SDK_INT >= 8);
        FC = new T();
    }
    
    private void M(final boolean ft) {
        int n = 1;
        int n2 = 8;
        this.Ft = ft;
        int visibility;
        if (ft) {
            visibility = 0;
        }
        else {
            visibility = n2;
        }
        int n3;
        if (!TextUtils.isEmpty((CharSequence)this.Fj.getText())) {
            n3 = n;
        }
        else {
            n3 = 0;
        }
        this.Fm.setVisibility(visibility);
        int visibility2;
        if (this.Fv && this.fM() && this.hasFocus() && (n3 != 0 || !this.Fy)) {
            visibility2 = 0;
        }
        else {
            visibility2 = n2;
        }
        this.Fn.setVisibility(visibility2);
        final View fk = this.Fk;
        int visibility3;
        if (ft) {
            visibility3 = n2;
        }
        else {
            visibility3 = 0;
        }
        fk.setVisibility(visibility3);
        final ImageView fq = this.Fq;
        int visibility4;
        if (this.Fs) {
            visibility4 = n2;
        }
        else {
            visibility4 = 0;
        }
        fq.setVisibility(visibility4);
        int n4;
        if (!TextUtils.isEmpty((CharSequence)this.Fj.getText())) {
            n4 = n;
        }
        else {
            n4 = 0;
        }
        int n5;
        if (n4 != 0 || (this.Fs && !this.FA)) {
            n5 = n;
        }
        else {
            n5 = 0;
        }
        final ImageView fo = this.Fo;
        int visibility5;
        if (n5 != 0) {
            visibility5 = 0;
        }
        else {
            visibility5 = n2;
        }
        fo.setVisibility(visibility5);
        final Drawable drawable = this.Fo.getDrawable();
        int[] state;
        if (n4 != 0) {
            state = SearchView.ENABLED_STATE_SET;
        }
        else {
            state = SearchView.EMPTY_STATE_SET;
        }
        drawable.setState(state);
        if (n3 != 0) {
            n = 0;
        }
        int visibility6;
        if (this.Fy && !this.Ft && n != 0) {
            this.Fn.setVisibility(n2);
            visibility6 = 0;
        }
        else {
            visibility6 = n2;
        }
        this.Fp.setVisibility(visibility6);
        if (this.fM() && (this.Fn.getVisibility() == 0 || this.Fp.getVisibility() == 0)) {
            n2 = 0;
        }
        this.Fl.setVisibility(n2);
    }
    
    private void N(final boolean b) {
        if (b) {
            this.post(this.FD);
        }
        else {
            this.removeCallbacks(this.FD);
            final InputMethodManager inputMethodManager = (InputMethodManager)this.getContext().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(this.getWindowToken(), 0);
            }
        }
    }
    
    private int fL() {
        return this.getContext().getResources().getDimensionPixelSize(e.pH);
    }
    
    private boolean fM() {
        return (this.Fv || this.Fy) && !this.Ft;
    }
    
    private void fN() {
        this.post(this.FE);
    }
    
    static boolean h(final Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }
    
    public final void clearFocus() {
        this.Fw = true;
        this.N(false);
        super.clearFocus();
        this.Fj.clearFocus();
        this.Fw = false;
    }
    
    final void fO() {
        this.M(this.Ft);
        this.fN();
        if (this.Fj.hasFocus()) {
            SearchView.FC.a(this.Fj);
            SearchView.FC.b(this.Fj);
        }
    }
    
    @Override
    public final void onActionViewCollapsed() {
        this.Fj.setText((CharSequence)"");
        this.Fj.setSelection(this.Fj.length());
        this.Fz = "";
        this.clearFocus();
        this.M(true);
        this.Fj.setImeOptions(this.FB);
        this.FA = false;
    }
    
    @Override
    public final void onActionViewExpanded() {
        if (!this.FA) {
            this.FA = true;
            this.FB = this.Fj.getImeOptions();
            this.Fj.setImeOptions(0x2000000 | this.FB);
            this.Fj.setText((CharSequence)"");
            this.M(false);
            this.Fj.requestFocus();
            this.N(true);
            if (this.Fr != null) {
                this.Fr.onClick((View)this);
            }
        }
    }
    
    protected final void onDetachedFromWindow() {
        this.removeCallbacks(this.FE);
        this.post(this.FF);
        super.onDetachedFromWindow();
    }
    
    @Override
    protected final void onMeasure(final int n, final int n2) {
        if (this.Ft) {
            super.onMeasure(n, n2);
            return;
        }
        final int mode = View$MeasureSpec.getMode(n);
        int n3 = View$MeasureSpec.getSize(n);
        switch (mode) {
            case Integer.MIN_VALUE: {
                if (this.Fx > 0) {
                    n3 = Math.min(this.Fx, n3);
                    break;
                }
                n3 = Math.min(this.fL(), n3);
                break;
            }
            case 1073741824: {
                if (this.Fx > 0) {
                    n3 = Math.min(this.Fx, n3);
                    break;
                }
                break;
            }
            case 0: {
                if (this.Fx > 0) {
                    n3 = this.Fx;
                    break;
                }
                n3 = this.fL();
                break;
            }
        }
        super.onMeasure(View$MeasureSpec.makeMeasureSpec(n3, 1073741824), n2);
    }
    
    public final void onWindowFocusChanged(final boolean b) {
        super.onWindowFocusChanged(b);
        this.fN();
    }
    
    public final boolean requestFocus(final int n, final Rect rect) {
        if (this.Fw || !this.isFocusable()) {
            return false;
        }
        if (!this.Ft) {
            final boolean requestFocus = this.Fj.requestFocus(n, rect);
            if (requestFocus) {
                this.M(false);
            }
            return requestFocus;
        }
        return super.requestFocus(n, rect);
    }
}
