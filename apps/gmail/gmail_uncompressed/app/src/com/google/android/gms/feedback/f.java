package com.google.android.gms.feedback;

import android.os.*;
import android.graphics.*;
import android.app.*;

public final class f
{
    private Bundle bKa;
    private String bKf;
    private Bitmap bKj;
    private String bKk;
    private String bKl;
    private String description;
    
    public f() {
        this.bKa = new Bundle();
    }
    
    public final e Mn() {
        return e.d(e.c(e.a(e.b(e.a(e.a(new e((byte)0), this.bKj), this.bKk), this.description), this.bKa), this.bKl), this.bKf);
    }
    
    public final f g(final Bitmap bKj) {
        this.bKj = bKj;
        return this;
    }
    
    public final f y(final Bundle bundle) {
        if (bundle != null) {
            this.bKa.putAll(bundle);
        }
        return this;
    }
}
