package com.google.android.gms.auth.api;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class GoogleAuthApiRequest implements SafeParcelable
{
    public static final a CREATOR;
    String acw;
    String bxE;
    String bxF;
    Bundle bxG;
    List<String> bxH;
    String bxI;
    int bxJ;
    Bundle bxK;
    byte[] bxL;
    long bxM;
    String name;
    String version;
    final int versionCode;
    
    static {
        CREATOR = new a();
    }
    
    GoogleAuthApiRequest(final int versionCode, final String name, final String version, final String bxE, final String bxF, final Bundle bxG, final String acw, final List<String> bxH, final String bxI, final int bxJ, final Bundle bxK, final byte[] bxL, final long bxM) {
        this.versionCode = versionCode;
        this.name = name;
        this.version = version;
        this.bxE = bxE;
        this.bxF = bxF;
        this.bxG = bxG;
        this.acw = acw;
        this.bxH = bxH;
        this.bxI = bxI;
        this.bxJ = bxJ;
        this.bxK = bxK;
        this.bxL = bxL;
        this.bxM = bxM;
    }
    
    private String JS() {
        String string;
        if (this.bxH.size() == 0) {
            string = null;
        }
        else {
            final StringBuffer sb = new StringBuffer();
            for (int i = 0; i < this.bxH.size(); ++i) {
                sb.append(this.bxH.get(i));
                if (i != -1 + this.bxH.size()) {
                    sb.append(" ");
                }
            }
            string = sb.toString();
        }
        if (string == null) {
            return null;
        }
        return this.bxI + string;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        return "{ API: " + this.name + "/" + this.version + ", Scope: " + this.JS() + ", Account: " + this.acw + " }";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
