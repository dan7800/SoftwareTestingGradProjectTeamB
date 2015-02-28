package com.google.android.gms.appdatasearch;

import android.net.*;
import android.accounts.*;
import java.util.*;

public final class g
{
    private String bud;
    private Uri bvC;
    private final List<RegisterSectionInfo> bvD;
    private GlobalSearchCorpusConfig bvE;
    private boolean bvF;
    private Account bvG;
    private RegisterCorpusIMEInfo bvH;
    private String bvI;
    private final String mName;
    
    public g(final String mName) {
        this.mName = mName;
        this.bvD = new ArrayList<RegisterSectionInfo>();
    }
    
    public final g Jm() {
        this.bvF = true;
        return this;
    }
    
    public final RegisterCorpusInfo Jn() {
        return new RegisterCorpusInfo(this.mName, this.bud, this.bvC, this.bvD.toArray(new RegisterSectionInfo[this.bvD.size()]), this.bvE, this.bvF, this.bvG, this.bvH, this.bvI);
    }
    
    public final g a(final RegisterCorpusIMEInfo bvH) {
        this.bvH = bvH;
        return this;
    }
    
    public final g a(final RegisterSectionInfo... array) {
        for (int length = array.length, i = 0; i < length; ++i) {
            this.bvD.add(array[i]);
        }
        return this;
    }
    
    public final g c(final Account bvG) {
        this.bvG = bvG;
        return this;
    }
    
    public final g fC(final String bud) {
        this.bud = bud;
        return this;
    }
    
    public final g fD(final String s) {
        Uri parse;
        if (s == null) {
            parse = null;
        }
        else {
            parse = Uri.parse(s);
        }
        this.bvC = parse;
        return this;
    }
    
    public final g fE(final String bvI) {
        this.bvI = bvI;
        return this;
    }
}
