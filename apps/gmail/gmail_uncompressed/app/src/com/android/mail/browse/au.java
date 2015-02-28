package com.android.mail.browse;

import android.widget.*;
import android.content.*;
import android.util.*;
import java.util.*;
import com.android.emailcommon.mail.*;
import com.android.mail.*;
import com.android.mail.utils.*;

public abstract class aU extends LinearLayout
{
    public aU(final Context context) {
        this(context, null);
    }
    
    public aU(final Context context, final AttributeSet set) {
        this(context, set, -1);
    }
    
    public aU(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public abstract void a(final m p0, final Map<String, Address> p1, final aH p2, final b p3, final aj p4);
    
    public abstract boolean c(final V p0);
    
    public abstract void ov();
    
    public abstract void rJ();
    
    public abstract void refresh();
}
