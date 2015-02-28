package com.android.email.activity.setup;

import android.view.*;
import android.os.*;
import com.android.email.activity.*;
import com.android.email.service.*;
import android.widget.*;
import android.content.*;
import java.util.*;

public final class av extends ab implements View$OnClickListener
{
    private int OS;
    
    public static av iu() {
        return new av();
    }
    
    @Override
    public final void onClick(final View view) {
        if (view.getId() <= this.OS) {
            ((aw)this.getActivity()).s((String)view.getTag());
            return;
        }
        super.onClick(view);
    }
    
    public final View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        final View a = this.a(layoutInflater, viewGroup, 2130968620, 2131296819);
        final Context applicationContext = layoutInflater.getContext().getApplicationContext();
        final ViewGroup viewGroup2 = com.android.email.activity.a.m(a, 2131558609);
        Object child = viewGroup2.getChildAt(0);
        int id = 1;
        for (final o o : n.P(applicationContext)) {
            Object o2;
            int n;
            if (com.android.email.service.n.j(applicationContext, o.protocol)) {
                if (o.Vc) {
                    continue;
                }
                layoutInflater.inflate(2130968623, viewGroup2);
                o2 = viewGroup2.getChildAt(id);
                if (viewGroup2 instanceof RelativeLayout) {
                    ((RelativeLayout$LayoutParams)((Button)o2).getLayoutParams()).addRule(3, ((View)child).getId());
                }
                ((Button)o2).setId(id);
                ((Button)o2).setTag((Object)o.protocol);
                ((Button)o2).setText((CharSequence)o.name);
                ((Button)o2).setOnClickListener((View$OnClickListener)this);
                n = id + 1;
            }
            else {
                n = id;
                o2 = child;
            }
            id = n;
            child = o2;
        }
        this.OS = id - 1;
        this.ie();
        return a;
    }
}
