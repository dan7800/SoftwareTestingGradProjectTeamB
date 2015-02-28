package com.android.email.activity.setup;

import android.widget.*;
import android.os.*;
import android.content.*;
import android.app.*;
import com.android.emailcommon.provider.*;
import android.view.*;
import com.android.email.activity.*;
import android.text.method.*;

public final class ah extends ab
{
    private EditText OB;
    private EditText OC;
    private View OD;
    
    public static ah ij() {
        return new ah();
    }
    
    public final String getDescription() {
        return this.OB.getText().toString().trim();
    }
    
    public final String ik() {
        return this.OC.getText().toString().trim();
    }
    
    public final void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        this.getView();
        final SetupDataFragment hn = ((bc)this.getActivity()).hN();
        final int ia = hn.iA();
        final Account ib = hn.iB();
        if (ia != 4 && ia != 3) {
            final String np = ib.NP;
            this.OB.setText((CharSequence)np);
            this.OB.setSelection(np.length());
        }
        if (!hn.z((Context)this.getActivity()).UK) {
            this.OC.setVisibility(8);
            this.OD.setVisibility(8);
        }
        else {
            if (ib.ik() != null) {
                this.OC.setText((CharSequence)ib.ik());
                return;
            }
            if (ia != 4 && ia != 3) {
                this.getLoaderManager().initLoader(0, (Bundle)null, (LoaderManager$LoaderCallbacks)new ai(this, this.getActivity().getApplicationContext()));
            }
        }
    }
    
    @Override
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
    }
    
    public final View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        final View a = this.a(layoutInflater, viewGroup, 2130968616, 2131296816);
        this.OB = (EditText)com.android.email.activity.a.m(a, 2131558587);
        this.OC = (EditText)com.android.email.activity.a.m(a, 2131558589);
        this.OD = com.android.email.activity.a.m(a, 2131558588);
        this.OC.setKeyListener((KeyListener)TextKeyListener.getInstance(false, TextKeyListener$Capitalize.WORDS));
        this.aQ(4);
        return a;
    }
}
