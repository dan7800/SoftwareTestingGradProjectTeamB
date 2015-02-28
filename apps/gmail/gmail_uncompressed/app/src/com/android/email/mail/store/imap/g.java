package com.android.email.mail.store.imap;

public final class g extends d
{
    private final boolean Rc;
    private final String aK;
    
    g(final String ak, final boolean rc) {
        this.aK = ak;
        this.Rc = rc;
    }
    
    public final boolean c(final int n, final String s) {
        return !this.jw() && this.aZ(n).K(s);
    }
    
    public final boolean jA() {
        return this.a(0, "BAD", false);
    }
    
    public final boolean jB() {
        return this.a(0, "NO", false);
    }
    
    public final i jC() {
        if (!this.jy()) {
            return i.Rl;
        }
        return this.aY(1).aZ(0);
    }
    
    public final i jD() {
        if (!this.jC().K("ALERT")) {
            return i.Rl;
        }
        return this.aZ(2);
    }
    
    public final i jE() {
        int n = 1;
        if (!this.jy()) {
            return i.Rl;
        }
        if (this.aX(n).js()) {
            n = 2;
        }
        return this.aZ(n);
    }
    
    public final i jF() {
        if (!this.jy()) {
            return i.Rl;
        }
        return this.aZ(0);
    }
    
    public final boolean jw() {
        return this.aK != null;
    }
    
    public final boolean jx() {
        return this.Rc;
    }
    
    public final boolean jy() {
        final String string = this.aZ(0).getString();
        if (!"OK".equalsIgnoreCase(string) && !"NO".equalsIgnoreCase(string) && !"BAD".equalsIgnoreCase(string) && !"PREAUTH".equalsIgnoreCase(string)) {
            final boolean equalsIgnoreCase = "BYE".equalsIgnoreCase(string);
            final boolean b = false;
            if (!equalsIgnoreCase) {
                return b;
            }
        }
        return true;
    }
    
    public final boolean jz() {
        return this.a(0, "OK", false);
    }
    
    @Override
    public final String toString() {
        String ak = this.aK;
        if (this.Rc) {
            ak = "+";
        }
        return "#" + ak + "# " + super.toString();
    }
}
