package com.android.mail.utils;

import java.util.regex.*;
import com.android.mail.providers.*;
import android.content.res.*;
import android.text.*;
import com.android.mail.ui.*;

public final class aj
{
    private Pattern aQU;
    protected boolean aQV;
    private int aQW;
    private final d aQX;
    
    private aj() {
        this.aQU = null;
        this.aQV = false;
        this.aQW = -1;
        this.aQX = new ak(this);
    }
    
    public static final aj c(final Resources resources) {
        final aj aj = new aj();
        aj.aQV = resources.getBoolean(2131623946);
        if (aj.aQV) {
            aj.cL(resources.getString(2131296632));
        }
        return aj;
    }
    
    private final void cL(final String s) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            final int hashCode = s.hashCode();
            if (hashCode != this.aQW) {
                this.aQW = hashCode;
                this.aQU = Pattern.compile(s);
                this.aQV = true;
            }
        }
    }
    
    public final void c(final O o) {
        this.aQX.a(o);
    }
    
    public final boolean cM(final String s) {
        return this.aQV && this.aQU != null && this.aQU.matcher(s).matches();
    }
}
