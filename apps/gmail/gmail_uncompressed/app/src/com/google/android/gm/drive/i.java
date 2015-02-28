package com.google.android.gm.drive;

import java.util.*;
import android.support.v4.e.*;
import android.text.*;
import android.widget.*;
import android.content.res.*;
import android.os.*;
import com.android.mail.a.*;
import android.content.*;
import com.google.android.gm.*;
import android.app.*;
import android.view.*;

final class i extends ArrayAdapter<String>
{
    i(final Context context, final List list) {
        super(context, 2130968625, list);
    }
    
    public final View getDropDownView(final int n, final View view, final ViewGroup viewGroup) {
        final TextView textView = (TextView)super.getDropDownView(n, view, viewGroup);
        textView.setText(h.dF((String)this.getItem(n)));
        return (View)textView;
    }
    
    public final View getView(final int n, final View view, final ViewGroup viewGroup) {
        final TextView textView = (TextView)super.getView(n, view, viewGroup);
        textView.setText(h.dF((String)this.getItem(n)));
        return (View)textView;
    }
}
