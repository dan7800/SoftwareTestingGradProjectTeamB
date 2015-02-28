package com.google.api.client.extensions.android.json;

import com.google.api.client.json.*;
import android.annotation.*;
import android.util.*;
import java.math.*;

@TargetApi(11)
final class AndroidJsonGenerator extends e
{
    private final JsonWriter cvp;
    private final a cvq;
    
    AndroidJsonGenerator(final a cvq, final JsonWriter cvp) {
        this.cvq = cvq;
        (this.cvp = cvp).setLenient(true);
    }
    
    @Override
    public final void D(final float n) {
        this.cvp.value((double)n);
    }
    
    @Override
    public final void WA() {
        this.cvp.endObject();
    }
    
    @Override
    public final void WB() {
        this.cvp.nullValue();
    }
    
    @Override
    public final void WC() {
        this.cvp.beginArray();
    }
    
    @Override
    public final void WD() {
        this.cvp.beginObject();
    }
    
    @Override
    public final void WE() {
        this.cvp.setIndent("  ");
    }
    
    @Override
    public final void Wz() {
        this.cvp.endArray();
    }
    
    @Override
    public final void a(final BigDecimal bigDecimal) {
        this.cvp.value((Number)bigDecimal);
    }
    
    @Override
    public final void a(final BigInteger bigInteger) {
        this.cvp.value((Number)bigInteger);
    }
    
    @Override
    public final void bd(final long n) {
        this.cvp.value(n);
    }
    
    @Override
    public final void c(final double n) {
        this.cvp.value(n);
    }
    
    @Override
    public final void eX(final int n) {
        this.cvp.value((long)n);
    }
    
    @Override
    public final void flush() {
        this.cvp.flush();
    }
    
    @Override
    public final void gT(final String s) {
        this.cvp.name(s);
    }
    
    @Override
    public final void writeBoolean(final boolean b) {
        this.cvp.value(b);
    }
    
    @Override
    public final void writeString(final String s) {
        this.cvp.value(s);
    }
}
