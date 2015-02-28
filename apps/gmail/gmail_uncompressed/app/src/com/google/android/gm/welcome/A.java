package com.google.android.gm.welcome;

import com.google.android.gms.people.accountswitcherview.*;
import com.google.android.gms.people.model.*;
import com.android.mail.b.*;
import com.android.mail.ui.*;
import android.content.res.*;
import com.google.common.collect.*;
import android.content.*;
import com.android.a.*;
import com.google.android.gm.ui.*;
import com.google.android.gms.common.api.*;
import android.text.*;
import java.util.*;
import com.google.android.gms.people.*;
import android.view.*;
import android.widget.*;
import android.graphics.drawable.*;

final class a extends BaseAdapter implements u<h>, p
{
    private j akh;
    private final n bbm;
    private final i bpZ;
    private final LayoutInflater brO;
    private final Map<String, d> brP;
    private final ArrayList<WelcomeTourState$AccountState> brQ;
    private final e brR;
    private final e brS;
    private View$OnClickListener brT;
    private cj brU;
    private final Resources lR;
    
    public a(final Context context, final n bbm, final ArrayList<WelcomeTourState$AccountState> brQ, final View$OnClickListener brT) {
        this.brO = LayoutInflater.from(context);
        this.bpZ = new i(context, bbm);
        this.lR = context.getResources();
        this.brP = (Map<String, d>)Maps.aan();
        this.brQ = brQ;
        this.brT = brT;
        final int dimensionPixelSize = this.lR.getDimensionPixelSize(2131493234);
        this.brU = new cj(dimensionPixelSize, dimensionPixelSize);
        this.akh = new j(null, null);
        this.brR = new com.android.mail.b.n(this.lR);
        this.brS = new E(this.lR);
        this.bbm = bbm;
    }
    
    private WelcomeTourState$AccountState eh(final int n) {
        if (this.brQ == null) {
            return null;
        }
        return this.brQ.get(n);
    }
    
    public final ArrayList<WelcomeTourState$AccountState> IO() {
        return this.brQ;
    }
    
    public final void ai(final String s, final String s2) {
        if (!this.brP.containsKey(s2)) {
            final d d = this.brP.get(s);
            if (d != null) {
                this.brP.put(s2, d);
            }
        }
    }
    
    public final void ei(final int n) {
        boolean b;
        if ((n & 0x20) == 0x20) {
            b = true;
        }
        else {
            b = false;
        }
        if (this.bbm.isConnected() && b) {
            q.cgI.a(this.bbm, new g().UN()).a(this);
        }
    }
    
    public final int getCount() {
        if (this.brQ == null) {
            return 0;
        }
        return this.brQ.size();
    }
    
    public final long getItemId(final int n) {
        return n;
    }
    
    public final View getView(final int n, View inflate, final ViewGroup viewGroup) {
        if (inflate == null) {
            inflate = this.brO.inflate(2130968752, viewGroup, false);
        }
        final WelcomeTourState$AccountState eh = this.eh(n);
        final String name = eh.mr().name;
        final d d = this.brP.get(name);
        ((TextView)inflate.findViewById(2131558546)).setText((CharSequence)name);
        final TextView textView = (TextView)inflate.findViewById(2131558550);
        String text;
        if (d != null) {
            text = d.getDisplayName();
        }
        else {
            text = eh.getDisplayName();
        }
        if (TextUtils.isEmpty((CharSequence)text) || TextUtils.equals((CharSequence)text, (CharSequence)name)) {
            textView.setVisibility(8);
        }
        else {
            textView.setText((CharSequence)text);
            textView.setVisibility(0);
        }
        final ImageView imageView = (ImageView)inflate.findViewById(2131558545);
        final com.android.mail.b.g imageDrawable = new com.android.mail.b.g(this.lR);
        imageDrawable.a(this.akh);
        final boolean equals = "com.google".equals(eh.mr().type);
        e e;
        if (equals) {
            e = this.brS;
        }
        else {
            e = this.brR;
        }
        imageDrawable.a(e);
        String displayName;
        if (equals) {
            displayName = " ";
        }
        else {
            displayName = eh.getDisplayName();
        }
        imageDrawable.x(displayName, name);
        imageView.setImageDrawable((Drawable)imageDrawable);
        if (d != null) {
            this.bpZ.a(imageView, name, d.Iu());
        }
        final TextView textView2 = (TextView)inflate.findViewById(2131558927);
        if (eh.IZ()) {
            textView2.setVisibility(0);
            textView2.setText(2131297237);
            textView2.setTextColor(this.lR.getColor(2131361905));
            inflate.setTag((Object)null);
            inflate.setOnClickListener((View$OnClickListener)null);
            inflate.setClickable(false);
            return inflate;
        }
        if (eh.Ja()) {
            textView2.setVisibility(0);
            textView2.setText(2131297235);
            textView2.setTextColor(this.lR.getColor(2131361908));
            inflate.setTag((Object)eh.mr().name);
            inflate.setOnClickListener(this.brT);
            return inflate;
        }
        textView2.setVisibility(8);
        inflate.setTag((Object)null);
        inflate.setOnClickListener((View$OnClickListener)null);
        inflate.setClickable(false);
        return inflate;
    }
}
