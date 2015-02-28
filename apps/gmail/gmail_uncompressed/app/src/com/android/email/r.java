package com.android.email;

import android.content.*;
import java.util.*;

public final class r
{
    private static r LV;
    private final SharedPreferences LW;
    
    private r(final Context context) {
        this.LW = context.getSharedPreferences("AndroidMail.Main", 0);
    }
    
    public static r s(final Context context) {
        synchronized (r.class) {
            if (r.LV == null) {
                r.LV = new r(context);
            }
            return r.LV;
        }
    }
    
    public static String t(final Context context) {
        return s(context).LW.getString("accountUuids", (String)null);
    }
    
    public static void u(final Context context) {
        s(context).LW.edit().remove("accountUuids").apply();
    }
    
    public final void R(final boolean b) {
        this.LW.edit().putBoolean("enableDebugLogging", b).apply();
    }
    
    public final void S(final boolean b) {
        this.LW.edit().putBoolean("enableExchangeLogging", b).apply();
    }
    
    public final void T(final boolean b) {
        this.LW.edit().putBoolean("enableExchangeFileLogging", b).apply();
    }
    
    public final void U(final boolean b) {
        this.LW.edit().putBoolean("enableStrictMode", b).apply();
    }
    
    public final boolean gT() {
        return this.LW.getBoolean("enableDebugLogging", false);
    }
    
    public final boolean gU() {
        return this.LW.getBoolean("enableExchangeLogging", false);
    }
    
    public final boolean gV() {
        return this.LW.getBoolean("enableExchangeFileLogging", false);
    }
    
    public final boolean gW() {
        return this.LW.getBoolean("enableStrictMode", false);
    }
    
    public final String gX() {
        synchronized (this) {
            String s = this.LW.getString("deviceUID", (String)null);
            if (s == null) {
                s = UUID.randomUUID().toString();
                this.LW.edit().putString("deviceUID", s).apply();
            }
            return s;
        }
    }
    
    public final int gY() {
        return this.LW.getInt("oneTimeInitializationProgress", 0);
    }
    
    public final void gZ() {
        this.LW.edit().putInt("oneTimeInitializationProgress", 2).apply();
    }
    
    public final long ha() {
        return this.LW.getLong("lastAccountUsed", -1L);
    }
    
    public final void i(final long n) {
        this.LW.edit().putLong("lastAccountUsed", n).apply();
    }
}
