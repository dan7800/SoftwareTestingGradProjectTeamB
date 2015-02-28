package com.google.android.gm.ui;

import com.google.android.gms.people.accountswitcherview.*;
import android.widget.*;
import android.view.*;

final class r implements v
{
    @Override
    public final u aK(final View view) {
        final q q = new q((byte)0);
        q.chV = (TextView)view.findViewById(2131558550);
        q.chW = (ImageView)view.findViewById(2131558545);
        q.chU = (TextView)view.findViewById(2131558546);
        q.bqm = (ImageView)view.findViewById(2131558551);
        final ViewGroup viewGroup = (ViewGroup)view;
        final TextView bqn = (TextView)LayoutInflater.from(view.getContext()).inflate(2130968624, viewGroup, false);
        viewGroup.addView((View)bqn);
        q.bqn = bqn;
        return q;
    }
}
