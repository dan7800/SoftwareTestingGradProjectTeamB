package com.google.android.gms.internal;

import com.google.android.gms.common.data.*;

public class dc extends h
{
    protected final Boolean getAsBoolean(final String s) {
        if (this.fT(s)) {
            return null;
        }
        return super.getBoolean(s);
    }
    
    protected final Double getAsDouble(final String s) {
        if (this.fT(s)) {
            return null;
        }
        return super.getDouble(s);
    }
    
    protected final Integer getAsInteger(final String s) {
        if (this.fT(s)) {
            return null;
        }
        return super.getInteger(s);
    }
    
    protected final Long getAsLong(final String s) {
        if (this.fT(s)) {
            return null;
        }
        return super.getLong(s);
    }
    
    @Deprecated
    @Override
    protected final boolean getBoolean(final String s) {
        return super.getBoolean(s);
    }
    
    @Deprecated
    @Override
    protected final double getDouble(final String s) {
        return super.getDouble(s);
    }
    
    @Deprecated
    @Override
    protected final float getFloat(final String s) {
        return super.getFloat(s);
    }
    
    @Deprecated
    @Override
    protected final int getInteger(final String s) {
        return super.getInteger(s);
    }
    
    @Deprecated
    @Override
    protected final long getLong(final String s) {
        return super.getLong(s);
    }
}
