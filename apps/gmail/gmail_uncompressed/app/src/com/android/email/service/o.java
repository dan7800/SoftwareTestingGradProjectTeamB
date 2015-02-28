package com.android.email.service;

import android.app.*;

public final class o
{
    Class<? extends Service> UC;
    String UD;
    String UE;
    public int UF;
    public boolean UG;
    public boolean UH;
    public boolean UI;
    public boolean UJ;
    public boolean UK;
    public boolean UL;
    public int UM;
    public boolean UN;
    public boolean UO;
    public boolean UP;
    public int UQ;
    public boolean UR;
    public boolean US;
    public boolean UT;
    public boolean UU;
    public CharSequence[] UV;
    public CharSequence[] UW;
    public int UX;
    public String UY;
    public boolean UZ;
    public boolean Va;
    public boolean Vb;
    public boolean Vc;
    public boolean Vd;
    public String accountType;
    public String name;
    public int port;
    public String protocol;
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder("Protocol: ");
        sb.append(this.protocol);
        sb.append(", ");
        String s;
        if (this.UC != null) {
            s = "Local";
        }
        else {
            s = "Remote";
        }
        sb.append(s);
        sb.append(" , Account Type: ");
        sb.append(this.accountType);
        return sb.toString();
    }
}
