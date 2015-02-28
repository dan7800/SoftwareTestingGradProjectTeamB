package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.drive.metadata.*;
import java.util.*;

public final class a
{
    private final Map<CustomPropertyKey, CustomProperty> bIh;
    
    public a() {
        this.bIh = new HashMap<CustomPropertyKey, CustomProperty>();
    }
    
    public final AppVisibleCustomProperties Mc() {
        return new AppVisibleCustomProperties(this.bIh.values(), (byte)0);
    }
}
