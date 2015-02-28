package com.google.android.gm.preference;

import android.preference.*;
import android.content.*;
import android.util.*;
import com.android.mail.utils.*;
import android.content.res.*;
import android.view.*;
import android.widget.*;
import android.app.*;
import android.os.*;

public class IntegerPickerPreference extends DialogPreference
{
    private NumberPicker bbP;
    private TextView bbQ;
    private o bbR;
    private int bbS;
    private final Context mContext;
    
    public IntegerPickerPreference(final Context mContext, final AttributeSet set) {
        super(mContext, set);
        this.mContext = mContext;
        this.setDialogLayoutResource(2130968685);
    }
    
    private void DJ() {
        this.bbQ.setText((CharSequence)ag.a(this.mContext, 2131820571, this.bbP.getValue()));
    }
    
    public final void a(final o bbR, final int bbS) {
        this.bbR = bbR;
        this.bbS = bbS;
        final Resources resources = this.mContext.getResources();
        this.setTitle(2131297126);
        this.setSummary((CharSequence)String.format(resources.getQuantityText(2131820570, bbS).toString(), bbS));
    }
    
    protected void onBindDialogView(final View view) {
        super.onBindDialogView(view);
        this.bbQ = (TextView)view.findViewById(2131558797);
        (this.bbP = (NumberPicker)view.findViewById(2131558796)).setMinValue(1);
        this.bbP.setMaxValue(999);
        this.bbP.setValue(this.bbS);
        this.DJ();
        this.bbP.setOnValueChangedListener((NumberPicker$OnValueChangeListener)new n(this));
    }
    
    protected void onDialogClosed(final boolean b) {
        if (b) {
            this.bbP.clearFocus();
            if (this.bbR != null) {
                this.bbR.dB(this.bbP.getValue());
            }
        }
    }
    
    protected void onPrepareDialogBuilder(final AlertDialog$Builder alertDialog$Builder) {
        super.onPrepareDialogBuilder(alertDialog$Builder);
        alertDialog$Builder.setTitle((CharSequence)this.getContext().getString(2131297126)).setCancelable(true);
    }
    
    protected void onRestoreInstanceState(final Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(IntegerPickerPreference$SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
        }
        else {
            final IntegerPickerPreference$SavedState integerPickerPreference$SavedState = (IntegerPickerPreference$SavedState)parcelable;
            super.onRestoreInstanceState(integerPickerPreference$SavedState.getSuperState());
            if (this.bbP != null) {
                this.bbP.setValue(integerPickerPreference$SavedState.value);
            }
        }
    }
    
    protected Parcelable onSaveInstanceState() {
        final IntegerPickerPreference$SavedState integerPickerPreference$SavedState = new IntegerPickerPreference$SavedState(super.onSaveInstanceState());
        if (this.bbP != null) {
            integerPickerPreference$SavedState.value = this.bbP.getValue();
        }
        return (Parcelable)integerPickerPreference$SavedState;
    }
}
