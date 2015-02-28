package com.android.datetimepicker.date;

import android.content.*;
import android.view.*;
import android.graphics.drawable.*;
import android.content.res.*;
import java.util.*;
import com.android.datetimepicker.*;
import android.view.accessibility.*;
import android.widget.*;

final class s extends ArrayAdapter<String>
{
    final /* synthetic */ q JK;
    
    public s(final q jk, final Context context, final int n, final List<String> list) {
        this.JK = jk;
        super(context, n, (List)list);
    }
    
    public final View getView(final int n, final View view, final ViewGroup viewGroup) {
        final TextViewWithCircularIndicator textViewWithCircularIndicator = (TextViewWithCircularIndicator)super.getView(n, view, viewGroup);
        textViewWithCircularIndicator.requestLayout();
        final boolean b = this.JK.IA.gf().year == a(textViewWithCircularIndicator);
        textViewWithCircularIndicator.P(b);
        if (b) {
            this.JK.JI = textViewWithCircularIndicator;
        }
        return (View)textViewWithCircularIndicator;
    }
}
