package com.android.email.provider;

final class e
{
    private final ContentCache RK;
    private int RL;
    private int RM;
    private int RN;
    private int RO;
    private long RP;
    private long RQ;
    private long RR;
    private long RS;
    private int RT;
    private int RU;
    private final String mName;
    
    private static void a(final StringBuilder sb, final String s, final Object o) {
        sb.append(", ");
        sb.append(s);
        sb.append(": ");
        sb.append(o);
    }
    
    @Override
    public final String toString() {
        if (this.RL + this.RM == 0) {
            return "No cache";
        }
        final int n = this.RM + this.RN + this.RL;
        final StringBuilder sb = new StringBuilder();
        sb.append("Cache " + this.mName);
        int n2;
        if (this.RK == null) {
            n2 = this.RT;
        }
        else {
            n2 = this.RK.size();
        }
        a(sb, "Cursors", n2);
        a(sb, "Hits", this.RL);
        a(sb, "Misses", this.RM + this.RN);
        a(sb, "Inval", this.RO);
        int n3;
        if (this.RK == null) {
            n3 = this.RU;
        }
        else {
            n3 = this.RK.RF.size();
        }
        a(sb, "Tokens", n3);
        a(sb, "Hit%", 100 * this.RL / n);
        a(sb, "\nHit time", this.RQ / 1000000.0 / this.RP);
        a(sb, "Miss time", this.RS / 1000000.0 / this.RR);
        return sb.toString();
    }
}
