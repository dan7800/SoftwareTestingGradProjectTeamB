package com.google.android.gm.ads;

import com.google.android.gm.provider.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import com.android.mail.browse.*;
import android.view.*;
import android.os.*;
import com.android.mail.ui.*;
import android.app.*;

public final class s extends ConversationViewFragment
{
    private static final String mW;
    private final v aZT;
    private c aZU;
    private final e aZV;
    private final u aZW;
    private Advertisement aZl;
    
    static {
        mW = D.AU();
    }
    
    public s() {
        this.aZT = new v(this, (byte)0);
        this.aZV = new t(this);
        this.aZW = new u(this, (byte)0);
    }
    
    public static s a(final Advertisement advertisement, final Account account) {
        final s s = new s();
        final Bundle arguments = new Bundle(2);
        arguments.putParcelable("advertisement", (Parcelable)advertisement);
        arguments.putParcelable("account", (Parcelable)account);
        s.setArguments(arguments);
        return s;
    }
    
    @Override
    protected final String a(final aC ac, final boolean b) {
        E.c(s.mW, "IN renderMessageBodies, fragment=%s", this);
        this.aHL.oR();
        this.aqX.clear();
        this.aEL = new ConversationViewState(this.aEL);
        this.aHQ.f(this.alx.qY(), this.alx.cg(this.aHW), this.alx.cg(this.cU(this.aqX.a(new b(this.aZl)))));
        final Advertisement aZl = this.aZl;
        this.aZU = new c(this.Nc, aZl);
        this.aHQ.a(aZl, true, true, this.alx.cg(this.cU(this.aqX.a(this.aZU))), this.alx.cg(this.cU(this.aqX.a(new a()))));
        this.cj("rendered message");
        this.alx.getSettings().setBlockNetworkImage(false);
        return this.aHQ.a(0, this.aEG, this.aEG, this.alx.qY(), this.alx.cf(this.aHW), b, this.Nc.ayw.vI(), false, false);
    }
    
    @Override
    protected final void a(final ViewGroup viewGroup, final LayoutInflater layoutInflater) {
        layoutInflater.inflate(2130968630, viewGroup, true);
    }
    
    @Override
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setHasOptionsMenu(true);
    }
    
    @Override
    public final void onCreateOptionsMenu(final Menu menu, final MenuInflater menuInflater) {
        menuInflater.inflate(2131755010, menu);
    }
    
    @Override
    public final boolean onOptionsItemSelected(final MenuItem menuItem) {
        if (menuItem.getItemId() == 2131559022) {
            final Advertisement aZl = this.aZl;
            this.aob.onBackPressed();
            this.aZV.a(aZl);
            AsyncTask.execute((Runnable)this.aZV);
            this.aob.a(new AdToastBarOperation(aZl, this.Nc));
            return true;
        }
        return false;
    }
    
    @Override
    protected final void wQ() {
        super.wQ();
        this.aZl = (Advertisement)this.getArguments().getParcelable("advertisement");
    }
    
    @Override
    protected final void wR() {
        this.aEG = "x-thread://" + this.Nc.lw().hashCode() + "/" + this.aZl.bcd;
    }
    
    @Override
    protected final aX yQ() {
        return new w(this, this.Nc);
    }
    
    @Override
    protected final void yR() {
    }
    
    @Override
    protected final void yW() {
        this.getLoaderManager().initLoader(0, Bundle.EMPTY, (LoaderManager$LoaderCallbacks)this.aZT);
    }
}
