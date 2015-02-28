package com.google.android.gm.vacation;

import android.widget.*;
import android.app.*;
import com.android.datetimepicker.date.*;
import com.android.mail.utils.*;
import java.util.*;

final class b implements DatePickerDialog$OnDateSetListener
{
    final /* synthetic */ a brn;
    
    private b(final a brn) {
        this.brn = brn;
    }
    
    public final void onDateSet(final DatePicker datePicker, final int n, final int n2, final int n3) {
        this.brn.brl.i(n, n2, n3);
    }
}
