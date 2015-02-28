package com.google.api.client.json;

import com.google.api.client.util.*;
import java.io.*;

public class b extends GenericData implements Cloneable
{
    private d cxZ;
    
    public b WS() {
        return (b)super.WT();
    }
    
    public final String Yc() {
        if (this.cxZ != null) {
            return this.cxZ.an(this);
        }
        return super.toString();
    }
    
    public final void a(final d cxZ) {
        this.cxZ = cxZ;
    }
    
    public b h(final String s, final Object o) {
        return (b)super.i(s, o);
    }
    
    @Override
    public String toString() {
        if (this.cxZ != null) {
            try {
                return this.cxZ.toString(this);
            }
            catch (IOException ex) {
                throw N.c(ex);
            }
        }
        return super.toString();
    }
}
