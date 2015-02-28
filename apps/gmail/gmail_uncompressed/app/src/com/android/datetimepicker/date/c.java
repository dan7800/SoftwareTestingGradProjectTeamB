package com.android.datetimepicker.date;

import java.text.*;
import android.widget.*;
import android.text.format.*;
import android.content.*;
import android.animation.*;
import java.util.*;
import android.os.*;
import android.view.*;
import android.util.*;
import com.android.datetimepicker.*;
import android.view.animation.*;
import android.app.*;
import android.content.res.*;

final class c implements View$OnClickListener
{
    final /* synthetic */ b In;
    
    c(final b in) {
        this.In = in;
    }
    
    public final void onClick(final View view) {
        this.In.ge();
        if (this.In.HP != null) {
            final e a = this.In.HP;
            final b in = this.In;
            a.d(this.In.HO.get(1), this.In.HO.get(2), this.In.HO.get(5));
        }
        this.In.dismiss();
    }
}
