package com.google.android.common.http;

public abstract class h extends g
{
    private String aWq;
    private String aWr;
    private String ayL;
    private String name;
    
    public h(final String name, final String ayL, final String aWq, final String aWr) {
        if (name == null) {
            throw new IllegalArgumentException("Name must not be null");
        }
        this.name = name;
        this.ayL = ayL;
        this.aWq = aWq;
        this.aWr = aWr;
    }
    
    @Override
    public final String Cp() {
        return this.aWq;
    }
    
    @Override
    public final String Cq() {
        return this.aWr;
    }
    
    @Override
    public final String getContentType() {
        return this.ayL;
    }
    
    @Override
    public final String getName() {
        return this.name;
    }
}
