package com.android.email.mail.store;

final class f
{
    public int QR;
    public String QS;
    public boolean QT;
    public boolean QU;
    final /* synthetic */ e QV;
    
    public f(final e qv) {
        this.QV = qv;
        this.QU = true;
    }
    
    public final boolean F(final String s) {
        this.QU = false;
        if (s == null || s.length() == 0) {
            return false;
        }
        final char char1 = s.charAt(0);
        if (char1 == '+') {
            final String[] split = s.split(" +");
            if (split.length < 3) {
                return false;
            }
            try {
                this.QR = Integer.parseInt(split[1]);
                this.QS = split[2];
                return this.QT = true;
            }
            catch (NumberFormatException ex) {
                return false;
            }
        }
        if (char1 == '-') {
            return this.QU = true;
        }
        return false;
    }
    
    public final boolean G(final String s) {
        this.QU = false;
        if (s == null || s.length() == 0) {
            return false;
        }
        if (s.charAt(0) == '.') {
            return this.QT = true;
        }
        final String[] split = s.split(" +");
        if (split.length >= 2) {
            try {
                this.QR = Integer.parseInt(split[0]);
                this.QS = split[1];
                this.QT = false;
                return true;
            }
            catch (NumberFormatException ex) {
                return false;
            }
        }
        return false;
    }
}
