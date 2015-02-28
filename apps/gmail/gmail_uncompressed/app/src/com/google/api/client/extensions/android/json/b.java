package com.google.api.client.extensions.android.json;

import android.annotation.*;
import android.util.*;
import java.util.*;
import com.google.api.client.util.*;
import com.google.api.client.json.*;
import java.math.*;
import java.io.*;

@TargetApi(11)
final class b extends h
{
    private final a cvq;
    private final JsonReader cvr;
    private List<String> cvs;
    private JsonToken cvt;
    private String cvu;
    
    b(final a cvq, final JsonReader cvr) {
        this.cvs = new ArrayList<String>();
        this.cvq = cvq;
        (this.cvr = cvr).setLenient(true);
    }
    
    private void WP() {
        H.cp(this.cvt == JsonToken.cyl || this.cvt == JsonToken.cym);
    }
    
    @Override
    public final String WF() {
        if (this.cvs.isEmpty()) {
            return null;
        }
        return this.cvs.get(-1 + this.cvs.size());
    }
    
    @Override
    public final JsonToken WG() {
        return this.cvt;
    }
    
    @Override
    public final d WH() {
        return this.cvq;
    }
    
    @Override
    public final byte WI() {
        this.WP();
        return Byte.valueOf(this.cvu);
    }
    
    @Override
    public final short WJ() {
        this.WP();
        return Short.valueOf(this.cvu);
    }
    
    @Override
    public final float WK() {
        this.WP();
        return Float.valueOf(this.cvu);
    }
    
    @Override
    public final BigInteger WL() {
        this.WP();
        return new BigInteger(this.cvu);
    }
    
    @Override
    public final BigDecimal WM() {
        this.WP();
        return new BigDecimal(this.cvu);
    }
    
    @Override
    public final double WN() {
        this.WP();
        return Double.valueOf(this.cvu);
    }
    
    @Override
    public final long WO() {
        this.WP();
        return Long.valueOf(this.cvu);
    }
    
    @Override
    public final JsonToken WQ() {
        Label_0148: {
            if (this.cvt != null) {
                switch (c.cvv[this.cvt.ordinal()]) {
                    case 1: {
                        break Label_0148;
                    }
                    case 2: {
                        break Label_0148;
                    }
                }
            }
            android.util.JsonToken jsonToken;
            JsonToken cvt;
            Label_0052_Outer:Label_0122_Outer:
            while (true) {
                while (true) {
                    Label_0429: {
                        Label_0383: {
                            Label_0362: {
                                Label_0339: {
                                    Label_0297: {
                                        Label_0253: {
                                            Label_0237: {
                                                Label_0193: {
                                                Label_0177:
                                                    while (true) {
                                                        try {
                                                            jsonToken = this.cvr.peek();
                                                            switch (c.cvw[jsonToken.ordinal()]) {
                                                                default: {
                                                                    this.cvu = null;
                                                                    this.cvt = null;
                                                                    return this.cvt;
                                                                }
                                                                case 1: {
                                                                    break Label_0177;
                                                                }
                                                                case 2: {
                                                                    break Label_0193;
                                                                }
                                                                case 3: {
                                                                    break Label_0237;
                                                                }
                                                                case 4: {
                                                                    break Label_0253;
                                                                }
                                                                case 5: {
                                                                    break Label_0297;
                                                                }
                                                                case 6: {
                                                                    break Label_0339;
                                                                }
                                                                case 7: {
                                                                    break Label_0362;
                                                                }
                                                                case 8: {
                                                                    break Label_0383;
                                                                }
                                                                case 9: {
                                                                    break Label_0429;
                                                                }
                                                            }
                                                            this.cvr.beginObject();
                                                            this.cvs.add(null);
                                                            continue Label_0052_Outer;
                                                            this.cvr.beginArray();
                                                            this.cvs.add(null);
                                                            continue Label_0052_Outer;
                                                        }
                                                        catch (EOFException ex) {
                                                            jsonToken = android.util.JsonToken.END_DOCUMENT;
                                                            continue Label_0122_Outer;
                                                        }
                                                        break;
                                                    }
                                                    this.cvu = "[";
                                                    this.cvt = JsonToken.cyf;
                                                    continue;
                                                }
                                                this.cvu = "]";
                                                this.cvt = JsonToken.cyg;
                                                this.cvs.remove(-1 + this.cvs.size());
                                                this.cvr.endArray();
                                                continue;
                                            }
                                            this.cvu = "{";
                                            this.cvt = JsonToken.cyh;
                                            continue;
                                        }
                                        this.cvu = "}";
                                        this.cvt = JsonToken.cyi;
                                        this.cvs.remove(-1 + this.cvs.size());
                                        this.cvr.endObject();
                                        continue;
                                    }
                                    if (this.cvr.nextBoolean()) {
                                        this.cvu = "true";
                                        this.cvt = JsonToken.cyn;
                                        continue;
                                    }
                                    this.cvu = "false";
                                    this.cvt = JsonToken.cyo;
                                    continue;
                                }
                                this.cvu = "null";
                                this.cvt = JsonToken.cyp;
                                this.cvr.nextNull();
                                continue;
                            }
                            this.cvu = this.cvr.nextString();
                            this.cvt = JsonToken.cyk;
                            continue;
                        }
                        this.cvu = this.cvr.nextString();
                        if (this.cvu.indexOf(46) == -1) {
                            cvt = JsonToken.cyl;
                        }
                        else {
                            cvt = JsonToken.cym;
                        }
                        this.cvt = cvt;
                        continue;
                    }
                    this.cvu = this.cvr.nextName();
                    this.cvt = JsonToken.cyj;
                    this.cvs.set(-1 + this.cvs.size(), this.cvu);
                    continue;
                }
            }
        }
    }
    
    @Override
    public final h WR() {
        if (this.cvt != null) {
            switch (c.cvv[this.cvt.ordinal()]) {
                case 1: {
                    this.cvr.skipValue();
                    this.cvu = "]";
                    this.cvt = JsonToken.cyg;
                    return this;
                }
                case 2: {
                    this.cvr.skipValue();
                    this.cvu = "}";
                    this.cvt = JsonToken.cyi;
                    return this;
                }
            }
        }
        return this;
    }
    
    @Override
    public final void close() {
        this.cvr.close();
    }
    
    @Override
    public final int getIntValue() {
        this.WP();
        return Integer.valueOf(this.cvu);
    }
    
    @Override
    public final String getText() {
        return this.cvu;
    }
}
