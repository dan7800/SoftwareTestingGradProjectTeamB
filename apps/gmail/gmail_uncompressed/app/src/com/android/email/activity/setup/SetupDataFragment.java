package com.android.email.activity.setup;

import android.app.*;
import android.os.*;
import android.content.*;
import com.android.emailcommon.provider.*;
import java.io.*;
import com.android.email.service.*;

public class SetupDataFragment extends Fragment implements Parcelable
{
    public static final Parcelable$Creator<SetupDataFragment> CREATOR;
    private Account Ml;
    private int PR;
    private String PS;
    private Bundle PT;
    private boolean PU;
    private boolean PV;
    private volatile Policy PW;
    private o PX;
    private String PY;
    private String PZ;
    
    static {
        CREATOR = (Parcelable$Creator)new bb();
    }
    
    public SetupDataFragment() {
        this.PR = 0;
        this.PU = true;
        this.PV = true;
        this.PW = null;
        this.e(new Account());
        this.PS = null;
        this.PT = null;
    }
    
    public SetupDataFragment(final Parcel parcel) {
        this.PR = 0;
        this.PU = true;
        this.PV = true;
        final ClassLoader classLoader = this.getClass().getClassLoader();
        this.PR = parcel.readInt();
        this.e((Account)parcel.readParcelable(classLoader));
        this.PS = parcel.readString();
        this.PT = (Bundle)parcel.readParcelable(classLoader);
        final boolean[] booleanArray = parcel.createBooleanArray();
        this.PU = booleanArray[0];
        this.PV = booleanArray[1];
        this.PW = (Policy)parcel.readParcelable(classLoader);
    }
    
    public final String A(final Context context) {
        if (this.PY != null) {
            return this.PY;
        }
        return this.Ml.Z(context).Zh;
    }
    
    public final String B(final Context context) {
        return this.Ml.Z(context).Zk;
    }
    
    public final void aT(final int pr) {
        this.PR = pr;
    }
    
    public final void c(final Policy pw) {
        synchronized (this) {
            this.PW = pw;
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final void e(final Account ml) {
        (this.Ml = ml).lv();
    }
    
    public final void f(final Context context, final String py) {
        final HostAuth z = this.Ml.Z(context);
        z.a(py, z.WA, z.Zi, z.dM);
        this.PY = py;
        this.PX = null;
    }
    
    public final void h(final Bundle pt) {
        this.PT = pt;
        this.PU = false;
        this.PV = false;
    }
    
    public final String hQ() {
        return this.PS;
    }
    
    public final Bundle hT() {
        return this.PT;
    }
    
    public final int iA() {
        return this.PR;
    }
    
    public final Account iB() {
        return this.Ml;
    }
    
    public final boolean iC() {
        return this.PU;
    }
    
    public final void iD() {
        this.PU = true;
    }
    
    public final boolean iE() {
        return this.PV;
    }
    
    public final void iF() {
        this.PV = true;
    }
    
    public final Policy iG() {
        synchronized (this) {
            return this.PW;
        }
    }
    
    public final String iH() {
        return this.PY;
    }
    
    public final String iI() {
        return this.PZ;
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.PR = bundle.getInt("SetupDataFragment.flowMode");
            this.e((Account)bundle.getParcelable("SetupDataFragment.account"));
            this.PS = bundle.getString("SetupDataFragment.email");
            this.PT = (Bundle)bundle.getParcelable("SetupDataFragment.credential");
            this.PU = bundle.getBoolean("SetupDataFragment.incomingLoaded");
            this.PV = bundle.getBoolean("SetupDataFragment.outgoingLoaded");
            this.PW = (Policy)bundle.getParcelable("SetupDataFragment.policy");
            this.PY = bundle.getString("SetupDataFragment.incomingProtocol");
            this.PZ = bundle.getString("SetupDataFragment.amProtocol");
        }
        this.setRetainInstance(true);
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("SetupDataFragment.flowMode", this.PR);
        bundle.putParcelable("SetupDataFragment.account", (Parcelable)this.Ml);
        bundle.putString("SetupDataFragment.email", this.PS);
        bundle.putParcelable("SetupDataFragment.credential", (Parcelable)this.PT);
        bundle.putBoolean("SetupDataFragment.incomingLoaded", this.PU);
        bundle.putBoolean("SetupDataFragment.outgoingLoaded", this.PV);
        bundle.putParcelable("SetupDataFragment.policy", (Parcelable)this.PW);
        bundle.putString("SetupDataFragment.incomingProtocol", this.PY);
        bundle.putString("SetupDataFragment.amProtocol", this.PZ);
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder("SetupData");
        sb.append(":acct=");
        Serializable value;
        if (this.Ml == null) {
            value = "none";
        }
        else {
            value = this.Ml.Ln;
        }
        sb.append(value);
        if (this.PS != null) {
            sb.append(":user=");
            sb.append(this.PS);
        }
        if (this.PT != null) {
            sb.append(":cred=");
            sb.append(this.PT.toString());
        }
        sb.append(":policy=");
        String s;
        if (this.PW == null) {
            s = "none";
        }
        else {
            s = "exists";
        }
        sb.append(s);
        return sb.toString();
    }
    
    public final void w(final String s) {
        this.PS = s;
        this.Ml.NP = s;
        this.PU = false;
        this.PV = false;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.PR);
        parcel.writeParcelable((Parcelable)this.Ml, 0);
        parcel.writeString(this.PS);
        parcel.writeParcelable((Parcelable)this.PT, 0);
        parcel.writeBooleanArray(new boolean[] { this.PU, this.PV });
        parcel.writeParcelable((Parcelable)this.PW, 0);
    }
    
    public final void x(final String pz) {
        this.PZ = pz;
    }
    
    public final o z(final Context context) {
        if (this.PX == null) {
            this.PX = n.l(context, this.A(context));
        }
        return this.PX;
    }
}
