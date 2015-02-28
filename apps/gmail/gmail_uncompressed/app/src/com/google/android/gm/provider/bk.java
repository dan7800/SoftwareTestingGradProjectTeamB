package com.google.android.gm.provider;

import java.util.zip.*;

final class bK extends Inflater
{
    final /* synthetic */ byte[] bnv;
    
    bK(final byte[] bnv) {
        this.bnv = bnv;
    }
    
    @Override
    public final boolean needsDictionary() {
        if (super.needsDictionary()) {
            this.setDictionary(this.bnv);
        }
        return false;
    }
}
