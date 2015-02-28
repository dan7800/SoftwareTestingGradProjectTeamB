package com.android.email.view;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.text.*;
import android.content.res.*;
import android.view.*;
import android.os.*;

public class CertificateSelector extends RelativeLayout implements View$OnClickListener
{
    private Button VG;
    private TextView VH;
    private a VI;
    private String mValue;
    
    public CertificateSelector(final Context context) {
        super(context);
    }
    
    public CertificateSelector(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public CertificateSelector(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public final void T(final String mValue) {
        final Resources resources = this.getResources();
        this.mValue = mValue;
        final TextView vh = this.VH;
        String string;
        if (TextUtils.isEmpty((CharSequence)mValue)) {
            string = resources.getString(2131296848);
        }
        else {
            string = mValue;
        }
        vh.setText((CharSequence)string);
        final Button vg = this.VG;
        int n;
        if (TextUtils.isEmpty((CharSequence)mValue)) {
            n = 2131296845;
        }
        else {
            n = 2131296847;
        }
        vg.setText((CharSequence)resources.getString(n));
    }
    
    public final void a(final a vi) {
        this.VI = vi;
    }
    
    public final String kL() {
        return this.mValue;
    }
    
    public void onClick(final View view) {
        if (view == this.VG && this.VI != null) {
            int n;
            if (this.mValue != null) {
                n = 1;
            }
            else {
                n = 0;
            }
            if (n == 0) {
                this.VI.hU();
                return;
            }
            this.T(null);
        }
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.VH = com.android.email.activity.a.m((View)this, 2131558670);
        (this.VG = com.android.email.activity.a.m((View)this, 2131558669)).setOnClickListener((View$OnClickListener)this);
        this.T(null);
    }
    
    protected void onRestoreInstanceState(final Parcelable parcelable) {
        final CertificateSelector$SavedState certificateSelector$SavedState = (CertificateSelector$SavedState)parcelable;
        super.onRestoreInstanceState(certificateSelector$SavedState.getSuperState());
        this.T(certificateSelector$SavedState.mValue);
    }
    
    protected Parcelable onSaveInstanceState() {
        return (Parcelable)new CertificateSelector$SavedState(super.onSaveInstanceState(), this.mValue);
    }
}
