package com.google.android.gms.common.images;

import android.net.*;
import com.google.android.gms.common.internal.*;
import java.util.*;

final class f
{
    public final Uri uri;
    
    public f(final Uri uri) {
        this.uri = uri;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return o instanceof f && (this == o || E.b(((f)o).uri, this.uri));
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.uri });
    }
}
