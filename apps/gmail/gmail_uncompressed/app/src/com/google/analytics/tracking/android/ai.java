package com.google.analytics.tracking.android;

import java.util.*;

final class ai
{
    private Map<String, String> aVE;
    private Map<String, String> aVF;
    
    private ai() {
        this.aVE = new HashMap<String, String>();
        this.aVF = new HashMap<String, String>();
    }
    
    public final void Ck() {
        synchronized (this) {
            this.aVE.clear();
        }
    }
    
    public final Map<String, String> Cl() {
        synchronized (this) {
            final HashMap<Object, Object> hashMap = (HashMap<Object, Object>)new HashMap<String, String>(this.aVF);
            hashMap.putAll(this.aVE);
            return (Map<String, String>)hashMap;
        }
    }
    
    public final void E(final String s, final String s2) {
        synchronized (this) {
            this.aVE.put(s, s2);
        }
    }
    
    public final void a(final Map<String, String> map, final Boolean b) {
        synchronized (this) {
            if (b) {
                this.aVE.putAll(map);
            }
            else {
                this.aVF.putAll(map);
            }
        }
    }
    
    public final void set(final String s, final String s2) {
        synchronized (this) {
            this.aVF.put(s, s2);
        }
    }
}
