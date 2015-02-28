package com.android.mail.b;

import com.android.a.*;
import android.text.*;
import java.io.*;

public final class h implements g
{
    private final String PS;
    public byte[] akI;
    private final String mName;
    
    public h(final String mName, final String ps) {
        this.mName = mName;
        if (TextUtils.isEmpty((CharSequence)ps)) {
            throw new IllegalArgumentException("Email must not be empty.");
        }
        this.PS = ps;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (o == null || this.getClass() != o.getClass()) {
                return false;
            }
            final h h = (h)o;
            if (this.PS != null) {
                if (this.PS.equals(h.PS)) {
                    return true;
                }
            }
            else if (h.PS == null) {
                return true;
            }
            return false;
        }
        return true;
    }
    
    @Override
    public final InputStream fW() {
        return new ByteArrayInputStream(this.akI);
    }
    
    public final String getDisplayName() {
        if (!TextUtils.isEmpty((CharSequence)this.mName)) {
            return this.mName;
        }
        return this.PS;
    }
    
    public final String hQ() {
        return this.PS;
    }
    
    @Override
    public final int hashCode() {
        if (this.PS != null) {
            return this.PS.hashCode();
        }
        return 0;
    }
    
    @Override
    public final String toString() {
        return "[" + super.toString() + " mName=" + this.mName + " mEmail=" + this.PS + "]";
    }
}
