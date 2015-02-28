package com.android.email.mail.a;

public final class d
{
    public final String Qi;
    public final String Qj;
    public final int Qn;
    
    public d(final String qi, final String qj, final int qn) {
        this.Qi = qi;
        this.Qj = qj;
        this.Qn = qn;
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder("result access ");
        String s;
        if (this.Qi == null) {
            s = "null";
        }
        else {
            s = "[REDACTED]";
        }
        final StringBuilder append = sb.append(s).append(" refresh ");
        String s2;
        if (this.Qj == null) {
            s2 = "null";
        }
        else {
            s2 = "[REDACTED]";
        }
        return append.append(s2).append(" expiresInSeconds ").append(this.Qn).toString();
    }
}
