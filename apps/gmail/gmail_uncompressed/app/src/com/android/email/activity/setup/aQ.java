package com.android.email.activity.setup;

import com.android.email.provider.*;
import com.android.emailcommon.b.*;
import com.android.mail.utils.*;
import com.android.emailcommon.provider.*;
import android.os.*;
import android.app.*;
import android.content.*;
import android.widget.*;
import android.view.*;
import android.text.*;
import android.text.method.*;

public final class aq extends x implements CompoundButton$OnCheckedChangeListener, ax
{
    private CheckBox OP;
    private EditText Om;
    private AuthenticationView On;
    private TextView Oo;
    private EditText Oq;
    private EditText Or;
    private Spinner Os;
    private boolean Oy;
    
    public static void a(final Context context, final SetupDataFragment setupDataFragment) {
        final Account ib = setupDataFragment.iB();
        final Credential zn = ib.XM.Zn;
        if (zn != null) {
            if (zn.lF()) {
                zn.a(context, zn.lB());
            }
            else {
                zn.ac(context);
                ib.XM.Zm = zn.Ln;
            }
        }
        ib.XM.a(context, ib.XM.lB());
        a.D(context);
    }
    
    public static aq ae(final boolean b) {
        final aq aq = new aq();
        aq.setArguments(x.W(b));
        return aq;
    }
    
    private void hP() {
        boolean b = true;
        if (!this.Oy) {
            return;
        }
        final boolean b2 = s.d((TextView)this.Oq) && s.c((TextView)this.Or) && b;
        if (b2 && this.OP.isChecked()) {
            if (TextUtils.isEmpty((CharSequence)this.Om.getText()) || !this.On.iv()) {
                b = false;
            }
        }
        else {
            b = b2;
        }
        this.X(b);
    }
    
    private void ig() {
        this.Or.setText((CharSequence)Integer.toString(this.it()));
    }
    
    private int it() {
        if ((0x1 & (int)((bd)this.Os.getSelectedItem()).value) != 0x0) {
            return 465;
        }
        return 587;
    }
    
    @Override
    public final Loader<Boolean> hB() {
        return (Loader<Boolean>)new au(this.Mq, this.Mk, this.MR, (byte)0);
    }
    
    @Override
    public final int hC() {
        final HostAuth y = this.Mk.iB().Y(this.Mq);
        Label_0126: {
            if (!this.OP.isChecked()) {
                break Label_0126;
            }
            y.t(this.Om.getText().toString().trim(), this.On.getPassword());
            while (true) {
                final String trim = this.Oq.getText().toString().trim();
                while (true) {
                    try {
                        final int int1 = Integer.parseInt(this.Or.getText().toString().trim());
                        y.a(this.MV, trim, int1, (int)((bd)this.Os.getSelectedItem()).value);
                        y.GZ = null;
                        return 2;
                        y.t(null, null);
                    }
                    catch (NumberFormatException ex) {
                        final int it = this.it();
                        E.c(E.TAG, "Non-integer server port; using '" + it + "'", new Object[0]);
                        final int int1 = it;
                        continue;
                    }
                    break;
                }
            }
        }
    }
    
    public final void ih() {
        this.hP();
    }
    
    public final void ii() {
        this.startActivityForResult(AccountCredentials.a((Context)this.getActivity(), this.Om.getText().toString(), this.Mk.iB().Z(this.Mq).Zh), 1);
    }
    
    @Override
    public final void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        final Activity activity = this.getActivity();
        final ArrayAdapter adapter = new ArrayAdapter((Context)activity, 17367048, (Object[])new bd[] { new bd(0, ((Context)activity).getString(2131296828)), new bd(1, ((Context)activity).getString(2131296830)), new bd(9, ((Context)activity).getString(2131296829)), new bd(2, ((Context)activity).getString(2131296832)), new bd(10, ((Context)activity).getString(2131296831)) });
        adapter.setDropDownViewResource(17367049);
        this.Os.setAdapter((SpinnerAdapter)adapter);
        if (!this.Oy) {
            final HostAuth y = this.Mk.iB().Y(this.Mq);
            if (!this.Mk.iE()) {
                y.ay(this.Mk.hQ());
                U.a(this.Mq, y, this.Mk.hT());
                y.a(y.Zh, this.Mk.hQ().split("@")[1], -1, 0);
                this.Mk.iF();
            }
            if ((0x4 & y.dM) != 0x0) {
                final String zj = y.Zj;
                if (zj != null) {
                    this.Om.setText((CharSequence)zj);
                    this.OP.setChecked(true);
                }
                this.On.a(N.y((Context)this.getActivity()).size() > 0, y);
                if (this.Oo != null) {
                    this.Oo.setText(2131296803);
                }
            }
            bd.a(this.Os, 0xB & y.dM);
            final String wa = y.WA;
            if (wa != null) {
                this.Oq.setText((CharSequence)wa);
            }
            final int zi = y.Zi;
            if (zi != -1) {
                this.Or.setText((CharSequence)Integer.toString(zi));
            }
            else {
                this.ig();
            }
            final Parcel obtain = Parcel.obtain();
            obtain.writeParcelable((Parcelable)y, y.describeContents());
            obtain.setDataPosition(0);
            this.MS = (HostAuth)obtain.readParcelable(HostAuth.class.getClassLoader());
            obtain.recycle();
            this.Oy = true;
            this.hP();
        }
    }
    
    public final void onActivityResult(final int n, final int n2, final Intent intent) {
        if (n == 1 && n2 == -1) {
            final HostAuth y = this.Mk.iB().Y((Context)this.getActivity());
            U.a(this.Mq, y, intent.getExtras());
            this.On.a(true, y);
        }
    }
    
    public final void onCheckedChanged(final CompoundButton compoundButton, final boolean b) {
        this.On.a(true, this.Mk.iB().Y(this.Mq));
        int n;
        if (b) {
            n = 0;
        }
        else {
            n = 8;
        }
        com.android.email.activity.a.e(this.getView(), 2131558602, n);
        com.android.email.activity.a.e(this.getView(), 2131558603, n);
        this.hP();
    }
    
    @Override
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.Oy = bundle.getBoolean("AccountSetupOutgoingFragment.loaded", false);
        }
        this.MV = "smtp";
    }
    
    public final View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        View view;
        if (this.MR) {
            view = layoutInflater.inflate(2130968610, viewGroup, false);
        }
        else {
            view = this.a(layoutInflater, viewGroup, 2130968618, 2131296838);
        }
        this.Om = (EditText)com.android.email.activity.a.m(view, 2131558576);
        this.On = (AuthenticationView)com.android.email.activity.a.m(view, 2131558577);
        this.Oq = (EditText)com.android.email.activity.a.m(view, 2131558579);
        this.Or = (EditText)com.android.email.activity.a.m(view, 2131558580);
        this.OP = (CheckBox)com.android.email.activity.a.m(view, 2131558601);
        this.Os = (Spinner)com.android.email.activity.a.m(view, 2131558581);
        this.OP.setOnCheckedChangeListener((CompoundButton$OnCheckedChangeListener)this);
        this.Oo = (TextView)view.findViewById(2131558586);
        this.Os.post((Runnable)new ar(this));
        final at at = new at(this);
        this.Om.addTextChangedListener((TextWatcher)at);
        this.Oq.addTextChangedListener((TextWatcher)at);
        this.Or.addTextChangedListener((TextWatcher)at);
        this.Or.setKeyListener((KeyListener)DigitsKeyListener.getInstance("0123456789"));
        this.an(view);
        this.On.a(this);
        return view;
    }
    
    @Override
    public final void onResume() {
        super.onResume();
        this.hP();
    }
    
    @Override
    public final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("AccountSetupOutgoingFragment.loaded", this.Oy);
    }
}
