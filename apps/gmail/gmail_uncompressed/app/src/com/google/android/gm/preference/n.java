package com.google.android.gm.preference;

import android.preference.*;
import android.widget.*;
import android.content.*;
import android.util.*;
import com.android.mail.utils.*;
import android.content.res.*;
import android.view.*;
import android.app.*;
import android.os.*;

final class n implements NumberPicker$OnValueChangeListener
{
    final /* synthetic */ IntegerPickerPreference bbT;
    
    n(final IntegerPickerPreference bbT) {
        this.bbT = bbT;
    }
    
    public final void onValueChange(final NumberPicker numberPicker, final int n, final int n2) {
        this.bbT.DJ();
    }
}
