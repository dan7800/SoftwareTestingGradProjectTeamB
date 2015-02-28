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

final class c implements Runnable
{
    final /* synthetic */ RadialPickerLayout KE;
    
    c(final RadialPickerLayout ke) {
        this.KE = ke;
    }
    
    @Override
    public final void run() {
        this.KE.Kp.aM(this.KE.Kx);
        this.KE.Kp.invalidate();
    }
}
