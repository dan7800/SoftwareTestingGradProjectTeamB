package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class DocumentSection implements SafeParcelable
{
    public static final D CREATOR;
    public static final int bun;
    private static final RegisterSectionInfo buo;
    final int btV;
    final RegisterSectionInfo bup;
    public final int buq;
    public final byte[] bur;
    public final String content;
    
    static {
        bun = Integer.parseInt("-1");
        CREATOR = new D();
        buo = new h("SsbContext").Jo().fF("blob").Jp();
    }
    
    DocumentSection(final int btV, final String content, final RegisterSectionInfo bup, final int buq, final byte[] bur) {
        G.b(buq == DocumentSection.bun || e.em(buq) != null, "Invalid section type " + buq);
        this.btV = btV;
        this.content = content;
        this.bup = bup;
        this.buq = buq;
        this.bur = bur;
        String string;
        if (this.buq != DocumentSection.bun && e.em(this.buq) == null) {
            string = "Invalid section type " + this.buq;
        }
        else if (this.content != null && this.bur != null) {
            string = "Both content and blobContent set";
        }
        else {
            string = null;
        }
        if (string != null) {
            throw new IllegalArgumentException(string);
        }
    }
    
    public int describeContents() {
        final D creator = DocumentSection.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final D creator = DocumentSection.CREATOR;
        D.a(this, parcel, n);
    }
}
