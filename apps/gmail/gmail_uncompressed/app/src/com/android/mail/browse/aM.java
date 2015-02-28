package com.android.mail.browse;

import com.android.emailcommon.mail.*;
import android.net.*;
import java.util.*;
import android.os.*;
import android.widget.*;
import android.content.*;
import com.android.mail.utils.*;
import android.view.*;
import com.android.mail.ui.*;
import android.app.*;
import com.android.mail.*;

public final class am extends Fragment implements cU
{
    private static final String mW;
    protected final Map<String, Address> aqQ;
    private Uri arB;
    private an arC;
    private cT arD;
    private ar arE;
    private final ap arF;
    private final ao arG;
    private boolean arH;
    private final Handler mHandler;
    
    static {
        mW = D.AU();
    }
    
    public am() {
        this.mHandler = new Handler();
        this.arF = new ap(this, (byte)0);
        this.arG = new ao(this, (byte)0);
        this.aqQ = Collections.synchronizedMap(new HashMap<String, Address>());
    }
    
    public static am n(final Uri uri) {
        final am am = new am();
        final Bundle arguments = new Bundle(1);
        arguments.putParcelable("eml_file_uri", (Parcelable)uri);
        am.setArguments(arguments);
        return am;
    }
    
    private void rb() {
        final Activity activity = this.getActivity();
        Toast.makeText((Context)activity, 2131296700, 1).show();
        activity.finish();
    }
    
    public final void a(final ConversationViewHeader conversationViewHeader) {
    }
    
    public final void a(final MessageHeaderView messageHeaderView) {
    }
    
    public final Handler getHandler() {
        return this.mHandler;
    }
    
    public final void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.arH) {
            this.rb();
            return;
        }
        this.arC.setActivity(this.getActivity());
        this.arD.zX();
    }
    
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.arB = (Uri)this.getArguments().getParcelable("eml_file_uri");
        this.arC = new an(this);
        this.arD = new cT(this);
        this.setHasOptionsMenu(true);
    }
    
    public final void onCreateOptionsMenu(final Menu menu, final MenuInflater menuInflater) {
        if (ag.Bg()) {
            menuInflater.inflate(2131755018, menu);
        }
    }
    
    public final View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        return this.arD.a(layoutInflater, viewGroup);
    }
    
    public final boolean onOptionsItemSelected(final MenuItem menuItem) {
        if (menuItem.getItemId() == 2131559058) {
            this.arD.zZ();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
    
    public final L rc() {
        return this.arC;
    }
    
    public final Fragment rd() {
        return this;
    }
    
    public final boolean re() {
        return true;
    }
    
    public final ar rf() {
        if (this.arE == null) {
            this.arE = new ar((Context)this.getActivity());
        }
        return this.arE;
    }
    
    public final m rg() {
        return (aq)this.getActivity();
    }
    
    public final Map<String, Address> rh() {
        return this.aqQ;
    }
    
    public final void ri() {
        final LoaderManager loaderManager = this.getLoaderManager();
        loaderManager.initLoader(0, (Bundle)null, (LoaderManager$LoaderCallbacks)this.arF);
        loaderManager.initLoader(2, (Bundle)null, (LoaderManager$LoaderCallbacks)this.arG);
    }
    
    public final String rj() {
        return "x-thread://message/rfc822/";
    }
    
    public final boolean rk() {
        return true;
    }
    
    public final boolean rl() {
        return false;
    }
}
