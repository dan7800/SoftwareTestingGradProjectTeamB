package com.android.email.activity.setup;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.view.*;
import com.android.emailcommon.provider.*;
import com.android.email.activity.*;
import android.text.*;
import android.os.*;
import com.android.emailcommon.*;

public class AuthenticationView extends LinearLayout implements View$OnClickListener
{
    private boolean NQ;
    private TextView OT;
    private View OU;
    private View OV;
    private TextView OW;
    private EditText OX;
    private TextView OY;
    private View OZ;
    private View Pa;
    private View Pb;
    private boolean Pc;
    private String Pd;
    private boolean Pe;
    private ax Pf;
    
    public AuthenticationView(final Context context) {
        this(context, null);
    }
    
    public AuthenticationView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public AuthenticationView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        LayoutInflater.from(context).inflate(2130968635, (ViewGroup)this, true);
    }
    
    private void hP() {
        final boolean iv = this.iv();
        if (iv != this.Pe) {
            this.Pf.ih();
            this.Pe = iv;
        }
    }
    
    private void ix() {
        if (this.NQ) {
            if (this.OT != null) {
                this.OT.setVisibility(0);
                this.OT.setText(2131296803);
            }
            if (this.Pc) {
                this.OV.setVisibility(0);
                this.OU.setVisibility(8);
                this.Pb.setVisibility(8);
                if (this.OW != null) {
                    this.OW.setVisibility(0);
                }
            }
            else {
                if (!TextUtils.isEmpty((CharSequence)this.getPassword())) {
                    this.OV.setVisibility(8);
                    this.OU.setVisibility(0);
                    this.Pb.setVisibility(8);
                    if (TextUtils.isEmpty((CharSequence)this.OX.getText())) {
                        this.OX.requestFocus();
                    }
                    this.OZ.setVisibility(0);
                    return;
                }
                this.OV.setVisibility(8);
                this.OU.setVisibility(8);
                this.Pb.setVisibility(0);
            }
        }
        else {
            if (this.OT != null) {
                this.OT.setVisibility(0);
                this.OT.setText(2131296823);
            }
            this.OV.setVisibility(8);
            this.OU.setVisibility(0);
            this.Pb.setVisibility(8);
            this.OZ.setVisibility(8);
            if (TextUtils.isEmpty((CharSequence)this.OX.getText())) {
                this.OX.requestFocus();
            }
            if (this.OW != null) {
                this.OW.setVisibility(8);
            }
        }
    }
    
    public final void a(final ax pf) {
        this.Pf = pf;
    }
    
    public final void a(final boolean nq, final HostAuth hostAuth) {
        this.NQ = nq;
        if (this.NQ) {
            final Credential af = hostAuth.af(this.getContext());
            if (af != null) {
                this.Pc = true;
                this.Pd = af.NS;
            }
            else {
                this.Pc = false;
            }
        }
        else {
            this.Pc = false;
        }
        this.OX.setText((CharSequence)hostAuth.Qd);
        if (this.NQ && this.Pc) {
            this.OY.setText((CharSequence)this.getContext().getString(2131296802, new Object[] { N.d(this.getContext(), this.Pd).label }));
        }
        this.ix();
        this.hP();
    }
    
    public final String getPassword() {
        return this.OX.getText().toString();
    }
    
    public final boolean iv() {
        if (this.NQ & this.Pc) {
            if (this.Pd == null) {
                return false;
            }
        }
        else if (TextUtils.isEmpty((CharSequence)this.OX.getText())) {
            return false;
        }
        return true;
    }
    
    public final String iw() {
        return this.Pd;
    }
    
    public void onClick(final View view) {
        if (view == this.OZ) {
            this.OX.setText((CharSequence)null);
            this.ix();
            this.hP();
        }
        else {
            if (view == this.Pa) {
                this.Pc = false;
                this.Pd = null;
                this.ix();
                this.hP();
                return;
            }
            if (view == this.Pb) {
                this.Pf.ii();
            }
        }
    }
    
    public void onFinishInflate() {
        super.onFinishInflate();
        this.OU = a.m((View)this, 2131558644);
        this.OV = a.m((View)this, 2131558648);
        this.OX = a.m((View)this, 2131558646);
        this.OY = a.m((View)this, 2131558649);
        this.OZ = a.m((View)this, 2131558647);
        this.Pa = a.m((View)this, 2131558650);
        this.Pb = a.m((View)this, 2131558643);
        this.OW = (TextView)this.findViewById(2131558645);
        this.OT = (TextView)this.findViewById(2131558642);
        this.OZ.setOnClickListener((View$OnClickListener)this);
        this.Pa.setOnClickListener((View$OnClickListener)this);
        this.Pb.setOnClickListener((View$OnClickListener)this);
        this.OX.addTextChangedListener((TextWatcher)new ay(this, (byte)0));
    }
    
    public void onRestoreInstanceState(final Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            final Bundle bundle = (Bundle)parcelable;
            super.onRestoreInstanceState(bundle.getParcelable("super_state"));
            this.NQ = bundle.getBoolean("save_offer_oauth");
            this.Pc = bundle.getBoolean("save_use_oauth");
            this.Pd = bundle.getString("save_oauth_provider");
            this.OX.setText((CharSequence)bundle.getString("save_password"));
            if (!TextUtils.isEmpty((CharSequence)this.Pd)) {
                final VendorPolicyLoader$OAuthProvider d = N.d(this.getContext(), this.Pd);
                if (d != null) {
                    this.OY.setText((CharSequence)this.getContext().getString(2131296802, new Object[] { d.label }));
                }
            }
            this.ix();
        }
    }
    
    public Parcelable onSaveInstanceState() {
        final Bundle bundle = new Bundle();
        bundle.putParcelable("super_state", super.onSaveInstanceState());
        bundle.putBoolean("save_offer_oauth", this.NQ);
        bundle.putBoolean("save_use_oauth", this.Pc);
        bundle.putString("save_password", this.getPassword());
        bundle.putString("save_oauth_provider", this.Pd);
        return (Parcelable)bundle;
    }
}
