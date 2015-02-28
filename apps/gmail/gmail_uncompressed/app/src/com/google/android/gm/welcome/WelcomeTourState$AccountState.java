package com.google.android.gm.welcome;

import android.accounts.*;
import android.os.*;
import com.google.common.base.*;
import java.util.*;

public class WelcomeTourState$AccountState implements Parcelable
{
    public static final Parcelable$Creator<WelcomeTourState$AccountState> CREATOR;
    private final Account Tw;
    private final String Xy;
    private String bsE;
    private final int bsF;
    private final int bsG;
    
    static {
        CREATOR = (Parcelable$Creator)new t();
    }
    
    private WelcomeTourState$AccountState(final Parcel parcel) {
        this.bsE = parcel.readString();
        this.Tw = (Account)parcel.readParcelable(Account.class.getClassLoader());
        this.Xy = parcel.readString();
        this.bsF = parcel.readInt();
        this.bsG = parcel.readInt();
    }
    
    public WelcomeTourState$AccountState(final String bsE, final Account tw, final String xy, final int bsF, final int bsG) {
        this.bsE = bsE;
        this.Tw = tw;
        this.Xy = xy;
        this.bsF = bsF;
        this.bsG = bsG;
    }
    
    public final boolean IZ() {
        return this.bsF == 2;
    }
    
    public final boolean Ja() {
        return this.bsF == 1;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final WelcomeTourState$AccountState el(final int n) {
        return new WelcomeTourState$AccountState(this.bsE, this.Tw, this.Xy, n, this.bsG);
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o instanceof WelcomeTourState$AccountState) {
            final WelcomeTourState$AccountState welcomeTourState$AccountState = (WelcomeTourState$AccountState)o;
            if (this.bsE.equals(welcomeTourState$AccountState.bsE) && e.b(this.Tw, welcomeTourState$AccountState.Tw) && e.b(this.Xy, welcomeTourState$AccountState.Xy) && this.bsF == welcomeTourState$AccountState.bsF && this.bsG == welcomeTourState$AccountState.bsG) {
                return true;
            }
        }
        return false;
    }
    
    public final WelcomeTourState$AccountState fy(final String s) {
        return new WelcomeTourState$AccountState(this.bsE, this.Tw, s, this.bsF, this.bsG);
    }
    
    public final String getAccountId() {
        return this.bsE;
    }
    
    public final String getDisplayName() {
        return this.Xy;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bsE, this.Tw, this.Xy, this.bsF, this.bsF, this.bsG });
    }
    
    public final Account mr() {
        return this.Tw;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.bsE);
        parcel.writeParcelable((Parcelable)this.Tw, 0);
        parcel.writeString(this.Xy);
        parcel.writeInt(this.bsF);
        parcel.writeInt(this.bsG);
    }
}
