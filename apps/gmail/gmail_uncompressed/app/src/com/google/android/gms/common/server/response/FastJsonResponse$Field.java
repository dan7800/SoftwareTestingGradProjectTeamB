package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.internal.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class FastJsonResponse$Field<I, O> implements SafeParcelable
{
    public static final b CREATOR;
    protected final int bFM;
    protected final boolean bFN;
    protected final int bFO;
    protected final boolean bFP;
    protected final String bFQ;
    protected final int bFR;
    protected final Class<? extends FastJsonResponse> bFS;
    protected final String bFT;
    private FieldMappingDictionary bFU;
    private a<I, O> bFV;
    private final int btV;
    
    static {
        CREATOR = new b();
    }
    
    FastJsonResponse$Field(final int btV, final int bfm, final boolean bfn, final int bfo, final boolean bfp, final String bfq, final int bfr, final String bft, final jp jp) {
        this.btV = btV;
        this.bFM = bfm;
        this.bFN = bfn;
        this.bFO = bfo;
        this.bFP = bfp;
        this.bFQ = bfq;
        this.bFR = bfr;
        if (bft == null) {
            this.bFS = null;
            this.bFT = null;
        }
        else {
            this.bFS = f.class;
            this.bFT = bft;
        }
        if (jp == null) {
            this.bFV = null;
            return;
        }
        this.bFV = (a<I, O>)jp.Rc();
    }
    
    private FastJsonResponse$Field(final int bfm, final boolean bfn, final int bfo, final boolean bfp, final String bfq, final int bfr, final Class<? extends FastJsonResponse> bfs, final a<I, O> bfv) {
        this.btV = 1;
        this.bFM = bfm;
        this.bFN = bfn;
        this.bFO = bfo;
        this.bFP = bfp;
        this.bFQ = bfq;
        this.bFR = bfr;
        this.bFS = bfs;
        if (bfs == null) {
            this.bFT = null;
        }
        else {
            this.bFT = bfs.getCanonicalName();
        }
        this.bFV = bfv;
    }
    
    public static FastJsonResponse$Field a(final String s, final int n, final a<?, ?> a) {
        return new FastJsonResponse$Field(7, false, 0, false, s, n, null, (a<I, O>)a);
    }
    
    public static <T extends FastJsonResponse> FastJsonResponse$Field<T, T> a(final String s, final int n, final Class<T> clazz) {
        return new FastJsonResponse$Field<T, T>(11, false, 11, false, s, n, clazz, null);
    }
    
    public static <T extends FastJsonResponse> FastJsonResponse$Field<ArrayList<T>, ArrayList<T>> b(final String s, final int n, final Class<T> clazz) {
        return new FastJsonResponse$Field<ArrayList<T>, ArrayList<T>>(11, true, 11, true, s, n, clazz, null);
    }
    
    public static FastJsonResponse$Field<ArrayList<String>, ArrayList<String>> fZ(final String s) {
        return new FastJsonResponse$Field<ArrayList<String>, ArrayList<String>>(7, true, 7, true, s, 3, null, null);
    }
    
    public static FastJsonResponse$Field<Integer, Integer> k(final String s, final int n) {
        return new FastJsonResponse$Field<Integer, Integer>(0, false, 0, false, s, n, null, null);
    }
    
    public static FastJsonResponse$Field<Double, Double> l(final String s, final int n) {
        return new FastJsonResponse$Field<Double, Double>(4, false, 4, false, s, n, null, null);
    }
    
    public static FastJsonResponse$Field<Boolean, Boolean> m(final String s, final int n) {
        return new FastJsonResponse$Field<Boolean, Boolean>(6, false, 6, false, s, n, null, null);
    }
    
    public static FastJsonResponse$Field<String, String> n(final String s, final int n) {
        return new FastJsonResponse$Field<String, String>(7, false, 7, false, s, n, null, null);
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final boolean LA() {
        return this.bFP;
    }
    
    public final String LB() {
        return this.bFQ;
    }
    
    public final int LC() {
        return this.bFR;
    }
    
    public final Class<? extends FastJsonResponse> LD() {
        return this.bFS;
    }
    
    final String LE() {
        if (this.bFT == null) {
            return null;
        }
        return this.bFT;
    }
    
    public final boolean LF() {
        return this.bFV != null;
    }
    
    final jp LG() {
        if (this.bFV == null) {
            return null;
        }
        return jp.a(this.bFV);
    }
    
    public final HashMap<String, FastJsonResponse$Field<?, ?>> LH() {
        G.ae(this.bFT);
        G.ae(this.bFU);
        return this.bFU.ga(this.bFT);
    }
    
    public final int Lx() {
        return this.bFM;
    }
    
    public final boolean Ly() {
        return this.bFN;
    }
    
    public final int Lz() {
        return this.bFO;
    }
    
    public final void a(final FieldMappingDictionary bfu) {
        this.bFU = bfu;
    }
    
    public final I convertBack(final O o) {
        return this.bFV.convertBack(o);
    }
    
    public int describeContents() {
        final b creator = FastJsonResponse$Field.CREATOR;
        return 0;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("Field\n");
        sb.append("            versionCode=").append(this.btV).append('\n');
        sb.append("                 typeIn=").append(this.bFM).append('\n');
        sb.append("            typeInArray=").append(this.bFN).append('\n');
        sb.append("                typeOut=").append(this.bFO).append('\n');
        sb.append("           typeOutArray=").append(this.bFP).append('\n');
        sb.append("        outputFieldName=").append(this.bFQ).append('\n');
        sb.append("      safeParcelFieldId=").append(this.bFR).append('\n');
        sb.append("       concreteTypeName=").append(this.LE()).append('\n');
        if (this.bFS != null) {
            sb.append("     concreteType.class=").append(this.bFS.getCanonicalName()).append('\n');
        }
        final StringBuilder append = sb.append("          converterName=");
        String canonicalName;
        if (this.bFV == null) {
            canonicalName = "null";
        }
        else {
            canonicalName = this.bFV.getClass().getCanonicalName();
        }
        append.append(canonicalName).append('\n');
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final b creator = FastJsonResponse$Field.CREATOR;
        b.a(this, parcel, n);
    }
}
