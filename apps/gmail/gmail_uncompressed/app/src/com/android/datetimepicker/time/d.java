package com.android.datetimepicker.time;

import android.widget.*;
import android.content.*;
import com.android.datetimepicker.*;
import android.text.format.*;
import android.util.*;
import android.view.accessibility.*;
import android.view.*;
import android.os.*;
import android.annotation.*;

final class d implements Runnable
{
    final /* synthetic */ RadialPickerLayout KE;
    final /* synthetic */ Boolean[] KF;
    
    d(final RadialPickerLayout ke, final Boolean[] kf) {
        this.KE = ke;
        this.KF = kf;
    }
    
    @Override
    public final void run() {
        this.KE.Ky = true;
        this.KE.Kh = RadialPickerLayout.a(this.KE, this.KE.KA, this.KF[0]);
        this.KE.Ki;
        this.KE.gz();
    }
}
