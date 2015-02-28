package com.google.android.gm.welcome;

import com.google.common.base.*;
import android.os.*;
import com.android.mail.utils.*;
import java.util.*;
import com.google.common.collect.*;
import java.lang.reflect.*;

public class WelcomeTourState implements Parcelable
{
    public static final Parcelable$ClassLoaderCreator<WelcomeTourState> CREATOR;
    private final j<WelcomeTourState$AccountState> bsA;
    private final boolean bsB;
    private final List<WelcomeTourState$AccountState> bsC;
    
    static {
        CREATOR = (Parcelable$ClassLoaderCreator)new r();
    }
    
    public WelcomeTourState(final Parcel parcel, final ClassLoader classLoader) {
        boolean bsB = true;
        this.bsA = new s(this);
        if (parcel.readInt() != (bsB ? 1 : 0)) {
            bsB = false;
        }
        this.bsB = bsB;
        final Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
        if (parcelableArray instanceof WelcomeTourState$AccountState[] || parcelableArray == null) {
            this.bsC = ImmutableList.f((WelcomeTourState$AccountState[])parcelableArray);
            return;
        }
        this.bsC = (List<WelcomeTourState$AccountState>)ImmutableList.f(Arrays.copyOf((WelcomeTourState$AccountState[])parcelableArray, parcelableArray.length, (Class<? extends Object[]>)WelcomeTourState$AccountState[].class));
    }
    
    public WelcomeTourState(final boolean bsB, final WelcomeTourState$AccountState[] array) {
        this.bsA = new s(this);
        final Object[] array2 = { null };
        String s;
        if (bsB) {
            s = "new";
        }
        else {
            s = "upgrading";
        }
        array2[0] = s;
        E.c("WelcomeTour", "Welcome Tour mode will be shown for %s user", array2);
        this.bsB = bsB;
        this.bsC = ImmutableList.f(array);
    }
    
    public final boolean IX() {
        return this.bsB;
    }
    
    public final List<WelcomeTourState$AccountState> IY() {
        return this.bsC;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o instanceof WelcomeTourState) {
            final WelcomeTourState welcomeTourState = (WelcomeTourState)o;
            if (this.bsC.equals(welcomeTourState.bsC) && this.bsB == welcomeTourState.bsB) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bsC, this.bsB });
    }
    
    public final long size() {
        return this.bsC.size();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        int n2;
        if (this.bsB) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
        final List<WelcomeTourState$AccountState> bsC = this.bsC;
        Object c;
        if (bsC instanceof Collection) {
            c = bsC;
        }
        else {
            c = Lists.c(bsC.iterator());
        }
        parcel.writeParcelableArray((Parcelable[])((Collection)c).toArray((Object[])Array.newInstance(WelcomeTourState$AccountState.class, ((Collection)c).size())), 0);
    }
}
