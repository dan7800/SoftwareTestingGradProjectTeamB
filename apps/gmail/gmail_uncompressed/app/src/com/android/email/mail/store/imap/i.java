package com.android.email.mail.store.imap;

import java.util.*;
import com.android.mail.utils.*;
import java.text.*;
import java.io.*;

public abstract class i extends b
{
    private static final byte[] Rk;
    public static final i Rl;
    private static final SimpleDateFormat Rm;
    private boolean Rn;
    private int Ro;
    private Date Rp;
    
    static {
        Rk = new byte[0];
        Rl = new j();
        Rm = new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss Z", Locale.US);
    }
    
    private boolean jM() {
        if (this.Rn) {
            return true;
        }
        try {
            this.Ro = Integer.parseInt(this.getString());
            return this.Rn = true;
        }
        catch (NumberFormatException ex) {
            return false;
        }
    }
    
    private boolean jO() {
        if (this.Rp != null) {
            return true;
        }
        if (this.isEmpty()) {
            return false;
        }
        try {
            this.Rp = i.Rm.parse(this.getString());
            return true;
        }
        catch (ParseException ex) {
            E.e(com.android.emailcommon.b.mW, this.getString() + " can't be parsed as a date.", new Object[0]);
            return false;
        }
    }
    
    public final boolean K(final String s) {
        return s != null && this.getString().equalsIgnoreCase(s);
    }
    
    public abstract String getString();
    
    public final boolean isEmpty() {
        return this.getString().length() == 0;
    }
    
    public final int jN() {
        if (!this.jM()) {
            return 0;
        }
        return this.Ro;
    }
    
    public final Date jP() {
        if (!this.jO()) {
            return null;
        }
        return this.Rp;
    }
    
    @Override
    public final boolean js() {
        return false;
    }
    
    @Override
    public final boolean jt() {
        return true;
    }
    
    public abstract InputStream jv();
    
    public final boolean startsWith(final String s) {
        if (s != null) {
            final String string = this.getString();
            if (string.length() >= s.length()) {
                return string.substring(0, s.length()).equalsIgnoreCase(s);
            }
        }
        return false;
    }
}
