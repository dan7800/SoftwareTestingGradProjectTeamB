package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.*;
import java.math.*;
import com.google.android.gms.common.a.*;
import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public class f extends FastJsonResponse implements SafeParcelable
{
    public static final g CREATOR;
    private final FieldMappingDictionary bFU;
    private final Parcel bGb;
    private final int bGc;
    private int bGd;
    private int bGe;
    private final int btV;
    private final String ci;
    
    static {
        CREATOR = new g();
    }
    
    f(final int btV, final Parcel parcel, final FieldMappingDictionary bfu) {
        this.btV = btV;
        this.bGb = G.ae(parcel);
        this.bGc = 2;
        this.bFU = bfu;
        if (this.bFU == null) {
            this.ci = null;
        }
        else {
            this.ci = this.bFU.LK();
        }
        this.bGd = 2;
    }
    
    private static void a(final StringBuilder sb, final int n, final Object o) {
        switch (n) {
            default: {
                throw new IllegalArgumentException("Unknown type = " + n);
            }
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6: {
                sb.append(o);
            }
            case 7: {
                sb.append("\"").append(e.gb(o.toString())).append("\"");
            }
            case 8: {
                sb.append("\"").append(c.k((byte[])o)).append("\"");
            }
            case 9: {
                sb.append("\"").append(c.l((byte[])o));
                sb.append("\"");
            }
            case 10: {
                com.google.android.gms.common.a.f.a(sb, (HashMap<String, String>)o);
            }
            case 11: {
                throw new IllegalArgumentException("Method does not accept concrete type.");
            }
        }
    }
    
    private void a(final StringBuilder sb, final FastJsonResponse$Field<?, ?> fastJsonResponse$Field, final Parcel parcel, final int n) {
        int i = 0;
        if (fastJsonResponse$Field.LA()) {
            sb.append("[");
            switch (fastJsonResponse$Field.Lz()) {
                default: {
                    throw new IllegalStateException("Unknown field type out.");
                }
                case 0: {
                    for (int[] t = a.t(parcel, n); i < t.length; ++i) {
                        if (i != 0) {
                            sb.append(",");
                        }
                        sb.append(Integer.toString(t[i]));
                    }
                    break;
                }
                case 1: {
                    final int a = com.google.android.gms.common.internal.safeparcel.a.a(parcel, n);
                    final int dataPosition = parcel.dataPosition();
                    BigInteger[] array = null;
                    if (a != 0) {
                        final int int1 = parcel.readInt();
                        array = new BigInteger[int1];
                        while (i < int1) {
                            array[i] = new BigInteger(parcel.createByteArray());
                            ++i;
                        }
                        parcel.setDataPosition(a + dataPosition);
                    }
                    b.a(sb, array);
                    break;
                }
                case 2: {
                    final int a2 = a.a(parcel, n);
                    final int dataPosition2 = parcel.dataPosition();
                    long[] longArray = null;
                    if (a2 != 0) {
                        longArray = parcel.createLongArray();
                        parcel.setDataPosition(a2 + dataPosition2);
                    }
                    b.a(sb, longArray);
                    break;
                }
                case 3: {
                    final int a3 = a.a(parcel, n);
                    final int dataPosition3 = parcel.dataPosition();
                    float[] floatArray = null;
                    if (a3 != 0) {
                        floatArray = parcel.createFloatArray();
                        parcel.setDataPosition(a3 + dataPosition3);
                    }
                    b.a(sb, floatArray);
                    break;
                }
                case 4: {
                    b.a(sb, a.u(parcel, n));
                    break;
                }
                case 5: {
                    b.a(sb, a.v(parcel, n));
                    break;
                }
                case 6: {
                    final int a4 = a.a(parcel, n);
                    final int dataPosition4 = parcel.dataPosition();
                    boolean[] booleanArray = null;
                    if (a4 != 0) {
                        booleanArray = parcel.createBooleanArray();
                        parcel.setDataPosition(a4 + dataPosition4);
                    }
                    b.a(sb, booleanArray);
                    break;
                }
                case 7: {
                    b.a(sb, a.w(parcel, n));
                    break;
                }
                case 8:
                case 9:
                case 10: {
                    throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                }
                case 11: {
                    final Parcel[] a5 = a.A(parcel, n);
                    for (int length = a5.length, j = 0; j < length; ++j) {
                        if (j > 0) {
                            sb.append(",");
                        }
                        a5[j].setDataPosition(0);
                        this.a(sb, fastJsonResponse$Field.LH(), a5[j]);
                    }
                    break;
                }
            }
            sb.append("]");
            return;
        }
        switch (fastJsonResponse$Field.Lz()) {
            default: {
                throw new IllegalStateException("Unknown field type out");
            }
            case 0: {
                sb.append(a.g(parcel, n));
            }
            case 1: {
                sb.append(a.k(parcel, n));
            }
            case 2: {
                sb.append(a.i(parcel, n));
            }
            case 3: {
                sb.append(a.l(parcel, n));
            }
            case 4: {
                sb.append(a.m(parcel, n));
            }
            case 5: {
                sb.append(a.o(parcel, n));
            }
            case 6: {
                sb.append(a.c(parcel, n));
            }
            case 7: {
                sb.append("\"").append(e.gb(a.p(parcel, n))).append("\"");
            }
            case 8: {
                sb.append("\"").append(c.k(a.s(parcel, n))).append("\"");
            }
            case 9: {
                sb.append("\"").append(c.l(a.s(parcel, n)));
                sb.append("\"");
            }
            case 10: {
                final Bundle r = a.r(parcel, n);
                final Set keySet = r.keySet();
                keySet.size();
                sb.append("{");
                final Iterator<String> iterator = keySet.iterator();
                int n2 = 1;
                while (iterator.hasNext()) {
                    final String s = iterator.next();
                    if (n2 == 0) {
                        sb.append(",");
                    }
                    sb.append("\"").append(s).append("\"");
                    sb.append(":");
                    sb.append("\"").append(e.gb(r.getString(s))).append("\"");
                    n2 = 0;
                }
                sb.append("}");
            }
            case 11: {
                final Parcel z = a.z(parcel, n);
                z.setDataPosition(0);
                this.a(sb, fastJsonResponse$Field.LH(), z);
            }
        }
    }
    
    private void a(final StringBuilder sb, final HashMap<String, FastJsonResponse$Field<?, ?>> hashMap, final Parcel parcel) {
        final HashMap<Integer, Map.Entry<K, FastJsonResponse$Field>> hashMap2 = new HashMap<Integer, Map.Entry<K, FastJsonResponse$Field>>();
        for (final Map.Entry<String, FastJsonResponse$Field<?, ?>> entry : hashMap.entrySet()) {
            hashMap2.put(entry.getValue().LC(), (Map.Entry<K, FastJsonResponse$Field>)entry);
        }
        sb.append('{');
        final int ad = a.ad(parcel);
        int n = 0;
        while (parcel.dataPosition() < ad) {
            final int int1 = parcel.readInt();
            final Map.Entry<K, FastJsonResponse$Field> entry2 = hashMap2.get(0xFFFF & int1);
            if (entry2 != null) {
                if (n != 0) {
                    sb.append(",");
                }
                final String s = (String)entry2.getKey();
                final FastJsonResponse$Field<Object, Object> fastJsonResponse$Field = entry2.getValue();
                sb.append("\"").append(s).append("\":");
                if (fastJsonResponse$Field.LF()) {
                    switch (fastJsonResponse$Field.Lz()) {
                        default: {
                            throw new IllegalArgumentException("Unknown field out type = " + fastJsonResponse$Field.Lz());
                        }
                        case 0: {
                            this.b(sb, fastJsonResponse$Field, FastJsonResponse.a(fastJsonResponse$Field, a.g(parcel, int1)));
                            break;
                        }
                        case 1: {
                            this.b(sb, fastJsonResponse$Field, FastJsonResponse.a(fastJsonResponse$Field, a.k(parcel, int1)));
                            break;
                        }
                        case 2: {
                            this.b(sb, fastJsonResponse$Field, FastJsonResponse.a(fastJsonResponse$Field, a.i(parcel, int1)));
                            break;
                        }
                        case 3: {
                            this.b(sb, fastJsonResponse$Field, FastJsonResponse.a(fastJsonResponse$Field, a.l(parcel, int1)));
                            break;
                        }
                        case 4: {
                            this.b(sb, fastJsonResponse$Field, FastJsonResponse.a(fastJsonResponse$Field, a.m(parcel, int1)));
                            break;
                        }
                        case 5: {
                            this.b(sb, fastJsonResponse$Field, FastJsonResponse.a(fastJsonResponse$Field, a.o(parcel, int1)));
                            break;
                        }
                        case 6: {
                            this.b(sb, fastJsonResponse$Field, FastJsonResponse.a(fastJsonResponse$Field, a.c(parcel, int1)));
                            break;
                        }
                        case 7: {
                            this.b(sb, fastJsonResponse$Field, FastJsonResponse.a(fastJsonResponse$Field, a.p(parcel, int1)));
                            break;
                        }
                        case 8:
                        case 9: {
                            this.b(sb, fastJsonResponse$Field, FastJsonResponse.a(fastJsonResponse$Field, a.s(parcel, int1)));
                            break;
                        }
                        case 10: {
                            this.b(sb, fastJsonResponse$Field, FastJsonResponse.a(fastJsonResponse$Field, v(a.r(parcel, int1))));
                            break;
                        }
                        case 11: {
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        }
                    }
                }
                else {
                    this.a(sb, fastJsonResponse$Field, parcel, int1);
                }
                n = 1;
            }
        }
        if (parcel.dataPosition() != ad) {
            throw new a$a("Overread allowed size end=" + ad, parcel);
        }
        sb.append('}');
    }
    
    private void b(final StringBuilder sb, final FastJsonResponse$Field<?, ?> fastJsonResponse$Field, final Object o) {
        if (fastJsonResponse$Field.Ly()) {
            final ArrayList list = (ArrayList)o;
            sb.append("[");
            for (int size = list.size(), i = 0; i < size; ++i) {
                if (i != 0) {
                    sb.append(",");
                }
                a(sb, fastJsonResponse$Field.Lx(), list.get(i));
            }
            sb.append("]");
            return;
        }
        a(sb, fastJsonResponse$Field.Lx(), o);
    }
    
    private static HashMap<String, String> v(final Bundle bundle) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        for (final String s : bundle.keySet()) {
            hashMap.put(s, bundle.getString(s));
        }
        return hashMap;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final Parcel LM() {
        switch (this.bGd) {
            case 0: {
                this.bGe = com.google.android.gms.common.internal.safeparcel.b.ae(this.bGb);
            }
            case 1: {
                com.google.android.gms.common.internal.safeparcel.b.D(this.bGb, this.bGe);
                this.bGd = 2;
                break;
            }
        }
        return this.bGb;
    }
    
    final FieldMappingDictionary LN() {
        switch (this.bGc) {
            default: {
                throw new IllegalStateException("Invalid creation type: " + this.bGc);
            }
            case 0: {
                return null;
            }
            case 1: {
                return this.bFU;
            }
            case 2: {
                return this.bFU;
            }
        }
    }
    
    @Override
    public final HashMap<String, FastJsonResponse$Field<?, ?>> Lu() {
        if (this.bFU == null) {
            return null;
        }
        return this.bFU.ga(this.ci);
    }
    
    @Override
    protected final Object Lv() {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }
    
    @Override
    protected final boolean Lw() {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }
    
    public int describeContents() {
        final g creator = f.CREATOR;
        return 0;
    }
    
    @Override
    public String toString() {
        G.f(this.bFU, "Cannot convert to JSON on client side.");
        final Parcel lm = this.LM();
        lm.setDataPosition(0);
        final StringBuilder sb = new StringBuilder(100);
        this.a(sb, this.bFU.ga(this.ci), lm);
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final g creator = f.CREATOR;
        g.a(this, parcel, n);
    }
}
