package com.android.email.activity.setup;

import com.android.email.view.*;
import com.android.email.service.*;
import com.android.emailcommon.provider.*;
import android.text.*;
import java.io.*;
import com.android.mail.utils.*;
import android.content.*;
import com.android.emailcommon.b.*;
import java.util.*;
import android.os.*;
import android.app.*;
import com.android.emailcommon.*;
import android.view.*;
import android.widget.*;
import android.text.method.*;

public final class ad extends x implements ax, a
{
    private TextWatcher NI;
    private CertificateSelector NM;
    private View NN;
    private o Np;
    private EditText Om;
    private AuthenticationView On;
    private TextView Oo;
    private TextView Op;
    private EditText Oq;
    private EditText Or;
    private Spinner Os;
    private TextView Ot;
    private Spinner Ou;
    private View Ov;
    private EditText Ow;
    private int Ox;
    private boolean Oy;
    private String Oz;
    
    public static void a(final Context context, final SetupDataFragment setupDataFragment) {
        final Account ib = setupDataFragment.iB();
        ib.a(context, ib.lB());
        final Credential zn = ib.XL.Zn;
        if (zn != null) {
            if (zn.lF()) {
                zn.a(context, zn.lB());
            }
            else {
                zn.ac(context);
                ib.XL.Zm = zn.Ln;
            }
        }
        ib.XL.a(context, ib.XL.lB());
        com.android.email.provider.a.D(context);
    }
    
    public static ad ac(final boolean b) {
        final ad ad = new ad();
        ad.setArguments(x.W(b));
        return ad;
    }
    
    private int ad(final boolean b) {
        if (b) {
            return this.Np.UF;
        }
        return this.Np.port;
    }
    
    public static void b(final Context context, final SetupDataFragment setupDataFragment) {
        final Account ib = setupDataFragment.iB();
        final HostAuth z = ib.Z(context);
        final HostAuth y = ib.Y(context);
        final String wa = z.WA;
        final int index = wa.indexOf(46);
        int n = 0;
        String string = null;
        Label_0123: {
            if (index != -1) {
                final String lowerCase = wa.substring(0, index).toLowerCase();
                final boolean b = s.b(context.getResources().getStringArray(2131689496), lowerCase);
                final boolean equals = "mail".equals(lowerCase);
                if (b) {
                    n = index + 1;
                }
                else {
                    n = 0;
                    if (equals) {
                        string = wa;
                        break Label_0123;
                    }
                }
            }
            string = "smtp" + '.' + wa.substring(n);
        }
        y.t(z.Zj, z.Qd);
        y.a(y.Zh, string, y.Zi, y.dM);
    }
    
    private void hP() {
        if (!this.Oy) {
            return;
        }
        this.X(!TextUtils.isEmpty((CharSequence)this.Om.getText()) && this.On.iv() && s.d((TextView)this.Oq) && s.c((TextView)this.Or));
        this.Oz = this.Om.getText().toString().trim();
    }
    
    private boolean if() {
        return (0x1 & (int)((bd)this.Os.getSelectedItem()).value) != 0x0;
    }
    
    private void ig() {
        final boolean if1 = this.if();
        this.Or.setText((CharSequence)Integer.toString(this.ad(if1)));
        if (!this.Np.UI) {
            return;
        }
        Label_0086: {
            if (!if1) {
                break Label_0086;
            }
            int n = 0;
            while (true) {
                this.NM.setVisibility(n);
                while (true) {
                    try {
                        final String t = com.android.emailcommon.a.T(this.Mq);
                        com.android.email.activity.a.m(this.getView(), 2131558575).setText((CharSequence)t);
                        this.NN.setVisibility(n);
                        return;
                        n = 8;
                    }
                    catch (IOException ex) {
                        final String t = "";
                        continue;
                    }
                    break;
                }
            }
        }
    }
    
    @Override
    public final void hA() {
        this.Ox = this.Mk.iB().lA();
        super.hA();
    }
    
    @Override
    public final Loader<Boolean> hB() {
        return (Loader<Boolean>)new ag(this.Mq, this.Mk, this.MR, (byte)0);
    }
    
    @Override
    public final int hC() {
        final Account ib = this.Mk.iB();
        if (this.Ou.getVisibility() == 0) {
            ib.bj((int)((bd)this.Ou.getSelectedItem()).value);
        }
        final HostAuth z = ib.Z(this.Mq);
        z.t(this.Om.getText().toString().trim(), this.On.getPassword());
        if (!TextUtils.isEmpty((CharSequence)this.On.iw())) {
            z.ag((Context)this.getActivity()).NS = this.On.iw();
        }
        String trim;
        int int1;
        String trim2;
        String string;
        int ad;
        Label_0211_Outer:Label_0217_Outer:
        while (true) {
            trim = this.Oq.getText().toString().trim();
            while (true) {
                Label_0307: {
                    while (true) {
                        while (true) {
                            try {
                                int1 = Integer.parseInt(this.Or.getText().toString().trim());
                                z.a(this.MV, trim, int1, (int)((bd)this.Os.getSelectedItem()).value);
                                if (!this.Np.UN) {
                                    break Label_0307;
                                }
                                trim2 = this.Ow.getText().toString().trim();
                                if (TextUtils.isEmpty((CharSequence)trim2)) {
                                    string = null;
                                    z.GZ = string;
                                    z.Zk = this.NM.kL();
                                    return 1;
                                }
                            }
                            catch (NumberFormatException ex) {
                                ad = this.ad(this.if());
                                E.c(E.TAG, "Non-integer server port; using '" + ad + "'", new Object[0]);
                                int1 = ad;
                                continue Label_0211_Outer;
                            }
                            break;
                        }
                        string = "/" + trim2;
                        continue Label_0217_Outer;
                    }
                }
                z.GZ = null;
                continue;
            }
        }
    }
    
    @Override
    public final void hU() {
        final Intent intent = new Intent(this.getString(2131296989));
        intent.setData(b.abe);
        intent.putExtra("CertificateRequestor.host", this.Oq.getText().toString().trim());
        while (true) {
            try {
                intent.putExtra("CertificateRequestor.port", Integer.parseInt(this.Or.getText().toString().trim()));
                this.startActivityForResult(intent, 0);
            }
            catch (NumberFormatException ex) {
                E.c(E.TAG, "Couldn't parse port %s", this.Or.getText());
                continue;
            }
            break;
        }
    }
    
    @Override
    public final boolean hz() {
        int n;
        if (this.Ou != null && this.Ou.getVisibility() == 0) {
            if (this.Ox != (int)((bd)this.Ou.getSelectedItem()).value) {
                n = 1;
            }
            else {
                n = 0;
            }
        }
        else {
            n = 0;
        }
        if (n == 0) {
            final boolean hz = super.hz();
            final boolean b = false;
            if (!hz) {
                return b;
            }
        }
        return true;
    }
    
    @Override
    public final void ih() {
        this.hP();
    }
    
    @Override
    public final void ii() {
        this.startActivityForResult(AccountCredentials.a((Context)this.getActivity(), this.Om.getText().toString(), this.Mk.iB().Z(this.Mq).Zh), 1);
    }
    
    @Override
    public final void onActivityCreated(final Bundle bundle) {
        int oy = 1;
        super.onActivityCreated(bundle);
        this.NM.a(this);
        final Activity activity = this.getActivity();
        this.Mk = ((bc)activity).hN();
        final HostAuth z = this.Mk.iB().Z(this.Mq);
        if (!this.Mk.iC()) {
            z.Zj = this.Mk.hQ();
            U.a((Context)activity, z, this.Mk.hT());
            z.a(z.Zh, this.Mk.hQ().split("@")[oy], -1, 0);
            this.Mk.iD();
        }
        this.Np = this.Mk.z((Context)activity);
        if (this.Np.UL) {
            final bd[] array = { new bd(0, ((Context)activity).getString(2131296834)), null };
            array[oy] = new bd(2, ((Context)activity).getString(2131296835));
            final ArrayAdapter adapter = new ArrayAdapter((Context)activity, 17367048, (Object[])array);
            adapter.setDropDownViewResource(17367049);
            this.Ou.setAdapter((SpinnerAdapter)adapter);
        }
        final ArrayList<bd> list = new ArrayList<bd>();
        list.add(new bd(0, ((Context)activity).getString(2131296828)));
        list.add(new bd(oy, ((Context)activity).getString(2131296830)));
        list.add(new bd(9, ((Context)activity).getString(2131296829)));
        if (this.Np.UH) {
            list.add(new bd(2, ((Context)activity).getString(2131296832)));
            list.add(new bd(10, ((Context)activity).getString(2131296831)));
        }
        final ArrayAdapter adapter2 = new ArrayAdapter((Context)activity, 17367048, (List)list);
        adapter2.setDropDownViewResource(17367049);
        this.Os.setAdapter((SpinnerAdapter)adapter2);
        final Account ib = this.Mk.iB();
        if (ib == null || ib.XL == null) {
            final String tag = E.TAG;
            final Object[] array2 = { ib == null && oy, null };
            array2[oy] = ((ib == null || ib.XL == null) && oy);
            E.f(tag, "null account or host auth. account null: %b host auth null: %b", array2);
        }
        else {
            this.MV = ib.XL.Zh;
            this.Op.setText(2131296825);
            this.Oq.setContentDescription(this.getResources().getText(2131296825));
            if (!this.Np.UN) {
                this.Ov.setVisibility(8);
            }
            if (!this.Np.UL) {
                this.Ot.setVisibility(8);
                this.Ou.setVisibility(8);
                this.Or.setImeOptions(5);
            }
        }
        if (!this.Oy) {
            final Account ib2 = this.Mk.iB();
            final HostAuth z2 = ib2.Z(this.Mq);
            this.Np = this.Mk.z((Context)this.getActivity());
            final List<VendorPolicyLoader$OAuthProvider> y = N.y((Context)this.getActivity());
            this.On.a(this.Np.UJ && y.size() > 0 && oy, z2);
            final String zj = z2.Zj;
            if (zj != null) {
                this.Om.setText((CharSequence)zj);
            }
            if (this.Np.UN) {
                final String gz = z2.GZ;
                if (gz != null && gz.length() > 0) {
                    this.Ow.setText((CharSequence)gz.substring(oy));
                }
            }
            this.Ox = ib2.lA();
            bd.a(this.Ou, this.Ox);
            int dm = z2.dM;
            if (this.Np.UG) {
                dm |= 0x1;
            }
            bd.a(this.Os, dm & 0xB);
            final String wa = z2.WA;
            if (wa != null) {
                this.Oq.setText((CharSequence)wa);
            }
            final int zi = z2.Zi;
            if (zi != -1) {
                this.Or.setText((CharSequence)Integer.toString(zi));
            }
            else {
                this.ig();
            }
            if (!TextUtils.isEmpty((CharSequence)z2.Zk)) {
                this.NM.T(z2.Zk);
            }
            final Parcel obtain = Parcel.obtain();
            obtain.writeParcelable((Parcelable)z2, z2.describeContents());
            obtain.setDataPosition(0);
            this.MT = (HostAuth)obtain.readParcelable(HostAuth.class.getClassLoader());
            obtain.recycle();
            this.Oy = (oy != 0);
            this.hP();
        }
        final List<VendorPolicyLoader$OAuthProvider> y2 = N.y((Context)this.getActivity());
        if (!this.Np.UJ || y2.size() <= 0) {
            oy = 0;
        }
        if (this.Oo != null) {
            if (oy == 0) {
                this.Oo.setText(2131296800);
                return;
            }
            this.Oo.setText(2131296803);
        }
    }
    
    public final void onActivityResult(final int n, final int n2, final Intent intent) {
        if (n == 0 && n2 == -1) {
            final String stringExtra = intent.getStringExtra("CertificateRequestor.alias");
            if (stringExtra != null) {
                this.NM.T(stringExtra);
            }
        }
        else if (n == 1 && n2 == -1) {
            final HostAuth z = this.Mk.iB().Z((Context)this.getActivity());
            U.a(this.Mq, z, intent.getExtras());
            this.On.a(this.Np.UJ, z);
        }
    }
    
    @Override
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.Oz = bundle.getString("AccountSetupIncomingFragment.credential");
            this.Oy = bundle.getBoolean("AccountSetupIncomingFragment.loaded", false);
        }
    }
    
    public final View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        View view;
        if (this.MR) {
            view = layoutInflater.inflate(2130968609, viewGroup, false);
        }
        else {
            view = this.a(layoutInflater, viewGroup, 2130968615, 2131296821);
        }
        this.Om = (EditText)com.android.email.activity.a.m(view, 2131558576);
        this.Op = (TextView)com.android.email.activity.a.m(view, 2131558578);
        this.Oq = (EditText)com.android.email.activity.a.m(view, 2131558579);
        this.Or = (EditText)com.android.email.activity.a.m(view, 2131558580);
        this.Os = (Spinner)com.android.email.activity.a.m(view, 2131558581);
        this.Ot = (TextView)com.android.email.activity.a.m(view, 2131558582);
        this.Ou = (Spinner)com.android.email.activity.a.m(view, 2131558583);
        this.Ov = com.android.email.activity.a.m(view, 2131558584);
        this.Ow = (EditText)com.android.email.activity.a.m(view, 2131558585);
        this.On = (AuthenticationView)com.android.email.activity.a.m(view, 2131558577);
        this.NM = (CertificateSelector)com.android.email.activity.a.m(view, 2131558573);
        this.NN = com.android.email.activity.a.m(view, 2131558574);
        this.Oo = (TextView)view.findViewById(2131558586);
        this.Os.setOnItemSelectedListener((AdapterView$OnItemSelectedListener)new ae(this));
        this.NI = (TextWatcher)new af(this);
        this.Om.addTextChangedListener(this.NI);
        this.Oq.addTextChangedListener(this.NI);
        this.Or.addTextChangedListener(this.NI);
        this.Or.setKeyListener((KeyListener)DigitsKeyListener.getInstance("0123456789"));
        this.an(view);
        this.On.a(this);
        return view;
    }
    
    public final void onDestroyView() {
        if (this.Om != null) {
            this.Om.removeTextChangedListener(this.NI);
        }
        this.Om = null;
        this.Op = null;
        if (this.Oq != null) {
            this.Oq.removeTextChangedListener(this.NI);
        }
        this.Oq = null;
        if (this.Or != null) {
            this.Or.removeTextChangedListener(this.NI);
        }
        this.Or = null;
        if (this.Os != null) {
            this.Os.setOnItemSelectedListener((AdapterView$OnItemSelectedListener)null);
        }
        this.Os = null;
        this.Ot = null;
        this.Ou = null;
        this.Ov = null;
        this.Ow = null;
        this.NN = null;
        this.NM = null;
        super.onDestroyView();
    }
    
    @Override
    public final void onResume() {
        super.onResume();
        this.hP();
    }
    
    @Override
    public final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("AccountSetupIncomingFragment.credential", this.Oz);
        bundle.putBoolean("AccountSetupIncomingFragment.loaded", this.Oy);
    }
}
