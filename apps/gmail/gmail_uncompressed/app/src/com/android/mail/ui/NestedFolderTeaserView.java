package com.android.mail.ui;

import com.android.mail.c.*;
import android.net.*;
import android.support.v4.f.*;
import android.widget.*;
import com.android.mail.providers.*;
import android.app.*;
import android.view.*;
import android.content.*;
import android.util.*;
import android.content.res.*;
import com.android.mail.utils.*;
import android.text.*;
import com.android.emailcommon.mail.*;
import android.support.v4.e.*;
import android.os.*;
import com.android.mail.browse.*;
import com.google.common.base.*;
import java.util.*;
import java.io.*;
import com.google.common.collect.*;

public class NestedFolderTeaserView extends LinearLayout implements aL
{
    private static int aMu;
    private Account Nc;
    private final int aDu;
    private final LoaderManager$LoaderCallbacks<b<Folder>> aIQ;
    private Uri aJo;
    private boolean aMj;
    private bV aMk;
    private final o<cI> aMl;
    private ImmutableSortedSet<cI> aMm;
    private ViewGroup aMn;
    private View aMo;
    private ImageView aMp;
    private TextView aMq;
    private TextView aMr;
    private boolean aMs;
    private boolean aMt;
    private final View$OnClickListener aMv;
    private final LoaderManager$LoaderCallbacks<b<Conversation>> aMw;
    private ae anZ;
    private LoaderManager aqI;
    private final LayoutInflater wC;
    
    static {
        NestedFolderTeaserView.aMu = -1;
    }
    
    public NestedFolderTeaserView(final Context context) {
        this(context, null);
    }
    
    public NestedFolderTeaserView(final Context context, final AttributeSet set) {
        this(context, set, -1);
    }
    
    public NestedFolderTeaserView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.aMj = false;
        this.aqI = null;
        this.anZ = null;
        this.aMl = new o<cI>();
        this.aMs = true;
        this.aMv = (View$OnClickListener)new cF(this);
        this.aIQ = (LoaderManager$LoaderCallbacks<b<Folder>>)new cG(this);
        this.aMw = (LoaderManager$LoaderCallbacks<b<Conversation>>)new cH(this);
        final Resources resources = context.getResources();
        if (NestedFolderTeaserView.aMu < 0) {
            NestedFolderTeaserView.aMu = resources.getInteger(2131427385);
        }
        this.aDu = resources.getInteger(2131427365);
        this.wC = LayoutInflater.from(context);
    }
    
    public final void a(final LoaderManager aqI, final Bundle bundle) {
        if (this.aqI != null) {
            throw new IllegalStateException("This view has already been bound to a LoaderManager.");
        }
        this.aqI = aqI;
    }
    
    public final void a(final Account nc, final bV aMk) {
        this.Nc = nc;
        this.aMk = aMk;
    }
    
    public final void a(final Folder folder, final u u) {
        this.aMj = false;
        if (folder != null) {
            final Uri aAd = folder.aAd;
            if (aAd != null && this.Nc.cy(8388608)) {
                if (this.aJo == null || !this.aJo.equals((Object)folder.aAd)) {
                    this.aJo = aAd;
                    this.aqI.destroyLoader(101000);
                    this.aqI.initLoader(101000, (Bundle)null, (LoaderManager$LoaderCallbacks)this.aIQ);
                }
                this.aMj = true;
            }
        }
    }
    
    public final void bm(final boolean b) {
    }
    
    public final int getPosition() {
        return 0;
    }
    
    public final void j(final ae anZ) {
        this.anZ = anZ;
    }
    
    public final void m(final Bundle bundle) {
    }
    
    protected void onFinishInflate() {
        this.aMn = (ViewGroup)this.findViewById(2131558867);
        (this.aMo = this.findViewById(2131558868)).setOnClickListener(this.aMv);
        this.aMp = (ImageView)this.aMo.findViewById(2131558869);
        this.aMq = (TextView)this.aMo.findViewById(2131558870);
        this.aMr = (TextView)this.aMo.findViewById(2131558871);
    }
    
    public final void qD() {
    }
    
    public final void wk() {
    }
    
    public final void wl() {
    }
    
    public final void xK() {
    }
    
    public final boolean yE() {
        return this.aMj;
    }
    
    public final void yK() {
        if (this.aMt) {
            this.aMn.removeAllViews();
            if (this.aMm.size() <= NestedFolderTeaserView.aMu || !this.aMs) {
                final Iterator iterator = this.aMm.iterator();
                while (iterator.hasNext()) {
                    this.aMn.addView(iterator.next().zQ());
                }
            }
            final int size = this.aMl.size();
            final int childCount = this.aMn.getChildCount();
            if (childCount == 0) {
                this.aMo.setVisibility(0);
                this.aMp.setImageResource(2130837651);
                this.aMq.setText((CharSequence)String.format(this.getContext().getString(2131296668), size));
                this.aMr.setVisibility(0);
                int i = 0;
                int n = 0;
                while (i < this.aMl.size()) {
                    n += this.aMl.valueAt(i).vT().aAf;
                    ++i;
                }
                this.aMr.setText((CharSequence)Integer.toString(n));
            }
            else if (childCount > NestedFolderTeaserView.aMu) {
                this.aMo.setVisibility(0);
                this.aMp.setImageResource(2130837643);
                this.aMq.setText(2131296669);
                this.aMr.setVisibility(8);
            }
            else {
                this.aMo.setVisibility(8);
            }
            this.aMt = false;
        }
    }
    
    public final boolean yL() {
        return false;
    }
    
    public final boolean yM() {
        return false;
    }
}
