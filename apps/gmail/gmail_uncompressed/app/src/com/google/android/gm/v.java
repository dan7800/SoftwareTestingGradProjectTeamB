package com.google.android.gm;

import com.google.android.gm.provider.*;

public final class V
{
    public final boolean aKh;
    public final T aYm;
    final /* synthetic */ U aYv;
    
    private V(final U aYv, final T aYm, final boolean aKh) {
        this.aYv = aYv;
        this.aYm = aYm;
        this.aKh = aKh;
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder();
        String s;
        if (this.aKh) {
            s = "Add ";
        }
        else {
            s = "Remove ";
        }
        return sb.append(s).append(this.aYm).toString();
    }
}
