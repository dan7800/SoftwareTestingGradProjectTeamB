package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.accounts.*;
import android.net.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class RegisterCorpusInfo implements SafeParcelable
{
    public static final U CREATOR;
    public final Account account;
    final int btV;
    public final String buf;
    public final boolean bvA;
    public final RegisterCorpusIMEInfo bvB;
    public final Uri bvx;
    public final RegisterSectionInfo[] bvy;
    public final GlobalSearchCorpusConfig bvz;
    public final String name;
    public final String version;
    
    static {
        CREATOR = new U();
    }
    
    RegisterCorpusInfo(final int btV, final String name, final String version, final Uri bvx, final RegisterSectionInfo[] bvy, final GlobalSearchCorpusConfig bvz, final boolean bvA, final Account account, final RegisterCorpusIMEInfo bvB, final String buf) {
        this.btV = btV;
        this.name = name;
        this.version = version;
        this.bvx = bvx;
        this.bvy = bvy;
        this.bvz = bvz;
        this.bvA = bvA;
        this.account = account;
        this.bvB = bvB;
        this.buf = buf;
    }
    
    public RegisterCorpusInfo(final String s, final String s2, final Uri uri, final RegisterSectionInfo[] array, final GlobalSearchCorpusConfig globalSearchCorpusConfig, final boolean b, final Account account, final RegisterCorpusIMEInfo registerCorpusIMEInfo, final String s3) {
        this(2, s, s2, uri, array, globalSearchCorpusConfig, b, account, registerCorpusIMEInfo, s3);
    }
    
    public int describeContents() {
        final U creator = RegisterCorpusInfo.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        final boolean b = o instanceof RegisterCorpusInfo;
        boolean b2 = false;
        if (b) {
            final RegisterCorpusInfo registerCorpusInfo = (RegisterCorpusInfo)o;
            final boolean b3 = E.b(this.name, registerCorpusInfo.name);
            b2 = false;
            if (b3) {
                final boolean b4 = E.b(this.bvx, registerCorpusInfo.bvx);
                b2 = false;
                if (b4) {
                    final boolean b5 = E.b(this.bvy, registerCorpusInfo.bvy);
                    b2 = false;
                    if (b5) {
                        b2 = true;
                    }
                }
            }
        }
        return b2;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final U creator = RegisterCorpusInfo.CREATOR;
        U.a(this, parcel, n);
    }
}
