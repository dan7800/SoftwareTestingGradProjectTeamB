package com.google.android.gm.vacation;

import android.app.*;
import com.android.mail.utils.*;
import java.util.*;

public final class a
{
    private final d brl;
    private DialogFragment brm;
    
    public a(final d brl) {
        this.brl = brl;
    }
    
    public final DialogFragment IE() {
        return this.brm;
    }
    
    public final void a(final DialogFragment brm) {
        if (this.brm != null) {
            this.brm.dismiss();
        }
        if (brm instanceof c) {
            ((c)brm).a((DatePickerDialog$OnDateSetListener)new b(this, (byte)0));
        }
        else if (brm instanceof com.android.datetimepicker.date.b) {
            ((com.android.datetimepicker.date.b)brm).a(new e(this, (byte)0));
        }
        this.brm = brm;
    }
    
    public final void g(final int n, final int n2, final int n3) {
        if (this.brm != null) {
            this.brm.dismiss();
        }
        if (ag.Bh()) {
            final c h = c.h(n, n2, n3);
            h.a((DatePickerDialog$OnDateSetListener)new b(this, (byte)0));
            this.brm = h;
            return;
        }
        final com.android.datetimepicker.date.b a = com.android.datetimepicker.date.b.a(new e(this, (byte)0), n, n2, n3);
        a.setFirstDayOfWeek(Calendar.getInstance().getFirstDayOfWeek());
        a.gk();
        this.brm = a;
    }
}
