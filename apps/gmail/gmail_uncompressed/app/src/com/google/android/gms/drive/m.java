package com.google.android.gms.drive;

import com.google.android.gms.common.data.*;
import com.google.android.gms.internal.*;
import com.google.android.gms.drive.metadata.*;

public abstract class m implements e<m>
{
    public final String LX() {
        return this.a(V.bTx);
    }
    
    protected abstract <T> T a(final a<T> p0);
    
    public final String getMimeType() {
        return this.a((a<String>)V.bTN);
    }
    
    public final String getTitle() {
        return this.a((a<String>)V.bTW);
    }
}
