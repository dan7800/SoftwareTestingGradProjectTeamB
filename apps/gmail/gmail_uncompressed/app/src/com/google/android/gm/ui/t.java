package com.google.android.gm.ui;

import com.google.android.gms.people.model.*;
import com.android.mail.a.*;
import com.android.mail.utils.*;
import android.widget.*;
import android.view.*;
import android.graphics.drawable.*;
import com.google.android.gms.people.accountswitcherview.*;
import android.annotation.*;
import android.content.*;
import android.os.*;
import android.support.v4.widget.*;
import com.google.android.gms.common.api.*;
import com.android.mail.i.*;
import java.util.*;
import com.google.android.gms.people.*;
import com.android.mail.ui.*;
import com.android.mail.providers.*;

final class t extends BaseAdapter
{
    private final List<C> bqh;
    final /* synthetic */ GmailDrawerFragment bql;
    private final x bqo;
    private final v bqp;
    
    private t(final GmailDrawerFragment bql) {
        this.bql = bql;
        this.bqh = new ArrayList<C>(3);
        this.bqo = new x(this, (byte)0);
        this.bqp = new v(this, (byte)0);
    }
    
    public final void a(final C c, final C c2, final C c3) {
        this.bqh.clear();
        if (c == null) {
            this.notifyDataSetChanged();
            return;
        }
        this.bqh.add(c);
        if (c2 != null) {
            this.bqh.add(c2);
        }
        if (c3 != null) {
            this.bqh.add(c3);
        }
        this.notifyDataSetChanged();
    }
    
    public final int getCount() {
        return this.bqh.size();
    }
    
    public final Object getItem(final int n) {
        return this.bqh.get(n);
    }
    
    public final long getItemId(final int n) {
        return this.bqh.get(n).hashCode();
    }
    
    public final View getView(final int n, final View view, final ViewGroup viewGroup) {
        View inflate;
        if (view instanceof ViewGroup) {
            inflate = view;
        }
        else {
            inflate = LayoutInflater.from((Context)this.bql.getActivity()).inflate(2130968707, viewGroup, false);
        }
        final ViewGroup viewGroup2 = (ViewGroup)inflate;
        final C c = this.bqh.get(n);
        this.bql.bqa.a((View)viewGroup2, c, this.bql.bpZ, this.bqo, this.bqp, n == 0, 0);
        viewGroup2.setContentDescription((CharSequence)this.bql.getString(2131297239, new Object[] { c.FP(), c.It() }));
        viewGroup2.setOnClickListener((View$OnClickListener)new u(this, c));
        return (View)viewGroup2;
    }
}
