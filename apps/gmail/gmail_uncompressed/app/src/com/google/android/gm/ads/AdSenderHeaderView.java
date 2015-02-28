package com.google.android.gm.ads;

import android.widget.*;
import android.view.*;
import android.util.*;
import com.google.android.gm.provider.*;
import android.content.res.*;
import java.util.*;
import com.android.emailcommon.mail.*;
import com.android.mail.*;
import com.android.mail.browse.*;
import com.google.android.gm.*;
import android.os.*;
import com.android.mail.compose.*;
import android.net.*;
import com.android.mail.utils.*;
import android.content.*;

public class AdSenderHeaderView extends aU implements View$OnClickListener
{
    private static final String mW;
    private c aZq;
    private ImageView aZr;
    private TextView aZs;
    private boolean aZt;
    private final e aZu;
    private final e aZv;
    private StarView ark;
    private View ast;
    private TextView asu;
    
    static {
        mW = D.AU();
    }
    
    public AdSenderHeaderView(final Context context) {
        this(context, null);
    }
    
    public AdSenderHeaderView(final Context context, final AttributeSet set) {
        this(context, set, -1);
    }
    
    public AdSenderHeaderView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.aZu = new d(this);
        this.aZv = new com.google.android.gm.ads.e(this);
        this.aZt = false;
    }
    
    private void b(final Advertisement advertisement) {
        this.ark.aD(advertisement.azc);
        final StarView ark = this.ark;
        final Resources resources = this.getResources();
        int n;
        if (advertisement.azc) {
            n = 2131296417;
        }
        else {
            n = 2131296416;
        }
        ark.setContentDescription((CharSequence)resources.getString(n));
    }
    
    @Override
    public final void a(final m m, final Map<String, Address> map, final aH ah, final b b, final aj aj) {
    }
    
    public final void a(final c aZq) {
        if (this.aZq != null && this.aZq == aZq) {
            return;
        }
        this.aZq = aZq;
        final Advertisement dg = this.aZq.Dg();
        this.aZr.setImageBitmap(dg.bcj);
        this.aZr.setContentDescription((CharSequence)dg.bce);
        this.asu.setText((CharSequence)dg.bce);
        this.aZs.setText((CharSequence)dg.bch);
        this.b(dg);
        final View ast = this.ast;
        int visibility;
        if (this.aZt) {
            visibility = 0;
        }
        else {
            visibility = 8;
        }
        ast.setVisibility(visibility);
    }
    
    @Override
    public final boolean c(final V v) {
        return v == this.aZq;
    }
    
    public void onClick(final View view) {
        int azc = 1;
        final int id = view.getId();
        if (id == 2131558624) {
            final Advertisement dg = this.aZq.Dg();
            ay.a(this.getContext(), dg);
            if (dg.azc) {
                azc = 0;
            }
            dg.azc = (azc != 0);
            this.aZu.a(dg);
            AsyncTask.execute((Runnable)this.aZu);
            this.b(dg);
        }
        else {
            if (id == 2131558625) {
                final Advertisement dg2 = this.aZq.Dg();
                this.aZv.a(dg2);
                AsyncTask.execute((Runnable)this.aZv);
                final ContentValues contentValues = new ContentValues(azc);
                contentValues.put("refAdEventId", dg2.bcd);
                g.a(this.getContext(), this.aZq.oN(), g.a(this.getResources(), dg2.bcf, 2), contentValues);
                return;
            }
            if (id == 2131558623) {
                final Advertisement dg3 = this.aZq.Dg();
                if (dg3.bci != null) {
                    final Intent intent = new Intent("android.intent.action.VIEW", dg3.E(Uri.parse(dg3.bci)));
                    intent.putExtra("com.android.browser.application_id", this.getContext().getPackageName());
                    intent.putExtra("create_new_tab", (boolean)(azc != 0));
                    intent.setFlags(524288);
                    try {
                        this.getContext().startActivity(intent);
                    }
                    catch (ActivityNotFoundException ex) {
                        final String mw = AdSenderHeaderView.mW;
                        final Object[] array = new Object[azc];
                        array[0] = dg3.bci;
                        E.f(mw, "Failed to open redirect url: %s", array);
                    }
                }
            }
        }
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.aZr = (ImageView)this.findViewById(2131558621);
        this.asu = (TextView)this.findViewById(2131558622);
        this.aZs = (TextView)this.findViewById(2131558623);
        this.ark = (StarView)this.findViewById(2131558624);
        this.ast = this.findViewById(2131558626);
        this.aZs.setOnClickListener((View$OnClickListener)this);
        this.ark.setOnClickListener((View$OnClickListener)this);
        this.findViewById(2131558625).setOnClickListener((View$OnClickListener)this);
    }
    
    @Override
    public final void ov() {
        this.aZq = null;
    }
    
    @Override
    public final void rJ() {
        this.aZt = true;
    }
    
    @Override
    public final void refresh() {
    }
}
