package android.support.v4.app;

import android.app.*;
import android.graphics.*;
import android.os.*;
import java.util.*;

public final class ao implements ac
{
    private int dM;
    private PendingIntent dN;
    private ArrayList<Notification> dO;
    private Bitmap dP;
    private int dQ;
    private int dR;
    private int dS;
    private int dT;
    private int dU;
    private int dV;
    private ArrayList<W> dz;
    
    public ao() {
        this.dz = new ArrayList<W>();
        this.dM = 1;
        this.dO = new ArrayList<Notification>();
        this.dR = 8388613;
        this.dS = -1;
        this.dT = 0;
        this.dV = 80;
    }
    
    @Override
    public final ab a(final ab ab) {
        final Bundle bundle = new Bundle();
        if (!this.dz.isEmpty()) {
            bundle.putParcelableArrayList("actions", (ArrayList)V.cU.a(this.dz.toArray(new W[this.dz.size()])));
        }
        if (this.dM != 1) {
            bundle.putInt("flags", this.dM);
        }
        if (this.dN != null) {
            bundle.putParcelable("displayIntent", (Parcelable)this.dN);
        }
        if (!this.dO.isEmpty()) {
            bundle.putParcelableArray("pages", (Parcelable[])this.dO.toArray((Parcelable[])new Notification[this.dO.size()]));
        }
        if (this.dP != null) {
            bundle.putParcelable("background", (Parcelable)this.dP);
        }
        if (this.dQ != 0) {
            bundle.putInt("contentIcon", this.dQ);
        }
        if (this.dR != 8388613) {
            bundle.putInt("contentIconGravity", this.dR);
        }
        if (this.dS != -1) {
            bundle.putInt("contentActionIndex", this.dS);
        }
        if (this.dT != 0) {
            bundle.putInt("customSizePreset", this.dT);
        }
        if (this.dU != 0) {
            bundle.putInt("customContentHeight", this.dU);
        }
        if (this.dV != 80) {
            bundle.putInt("gravity", this.dV);
        }
        if (ab.cV == null) {
            ab.cV = new Bundle();
        }
        ab.cV.putBundle("android.wearable.EXTENSIONS", bundle);
        return ab;
    }
    
    public final ao a(final W w) {
        this.dz.add(w);
        return this;
    }
    
    public final ao b(final Bitmap dp) {
        this.dP = dp;
        return this;
    }
}
