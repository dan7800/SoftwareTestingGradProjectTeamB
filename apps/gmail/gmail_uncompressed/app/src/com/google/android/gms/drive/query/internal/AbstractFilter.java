package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.query.*;

public abstract class AbstractFilter implements Filter
{
    @Override
    public String toString() {
        return String.format("Filter[%s]", this.a((f<Object>)new c()));
    }
}
