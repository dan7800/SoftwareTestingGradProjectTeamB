package com.android.mail.i;

import com.android.mail.utils.*;
import android.content.*;
import java.util.*;
import com.android.mail.*;

public abstract class l
{
    protected static final String mW;
    private final SharedPreferences LW;
    private final String axU;
    private final SharedPreferences$Editor axV;
    private final Context mContext;
    
    static {
        mW = D.AU();
    }
    
    protected l(final Context context, final String axU) {
        this.mContext = context.getApplicationContext();
        this.axU = axU;
        this.LW = context.getSharedPreferences(axU, 0);
        this.axV = this.LW.edit();
        final int int1 = this.LW.getInt("prefs-version-number", 0);
        this.cq(int1);
        this.axV.putInt("prefs-version-number", 4);
        if (this.tZ()) {
            this.axV.apply();
        }
        if (!this.tx()) {
            final d tx = i.tX();
            int i;
            if (tx != null) {
                i = (tx.i(context, int1) ? 1 : 0);
            }
            else {
                E.e(E.TAG, "No preference migrator found, not migrating preferences", new Object[0]);
                i = 0;
            }
            if (i != 0) {
                this.ty();
            }
        }
    }
    
    protected Object b(final String s, final Object o) {
        return o;
    }
    
    protected abstract boolean bB(final String p0);
    
    protected Object c(final String s, final Object o) {
        return o;
    }
    
    public final void commit() {
        this.axV.commit();
    }
    
    protected abstract void cq(final int p0);
    
    protected final Context getContext() {
        return this.mContext;
    }
    
    protected final SharedPreferences$Editor getEditor() {
        return this.axV;
    }
    
    protected final SharedPreferences getSharedPreferences() {
        return this.LW;
    }
    
    public final String getSharedPreferencesName() {
        return this.axU;
    }
    
    public final void r(final List<c> list) {
        for (final c c : list) {
            final String key = c.getKey();
            final Object value = c.getValue();
            if (this.bB(key) && value != null) {
                final Object c2 = this.c(key, value);
                if (c2 instanceof Boolean) {
                    this.axV.putBoolean(key, (boolean)c2);
                    E.b(l.mW, "MailPrefs Restore: %s", c);
                }
                else if (c2 instanceof Float) {
                    this.axV.putFloat(key, (float)c2);
                    E.b(l.mW, "MailPrefs Restore: %s", c);
                }
                else if (c2 instanceof Integer) {
                    this.axV.putInt(key, (int)c2);
                    E.b(l.mW, "MailPrefs Restore: %s", c);
                }
                else if (c2 instanceof Long) {
                    this.axV.putLong(key, (long)c2);
                    E.b(l.mW, "MailPrefs Restore: %s", c);
                }
                else if (c2 instanceof String) {
                    this.axV.putString(key, (String)c2);
                    E.b(l.mW, "MailPrefs Restore: %s", c);
                }
                else if (c2 instanceof Set) {
                    this.axV.putStringSet(key, (Set)c2);
                }
                else {
                    E.f(l.mW, "Unknown MailPrefs preference data type: %s", value.getClass());
                }
            }
        }
        this.axV.apply();
    }
    
    public final void registerOnSharedPreferenceChangeListener(final SharedPreferences$OnSharedPreferenceChangeListener sharedPreferences$OnSharedPreferenceChangeListener) {
        this.LW.registerOnSharedPreferenceChangeListener(sharedPreferences$OnSharedPreferenceChangeListener);
    }
    
    public final List<c> tY() {
        final ArrayList<k> list = (ArrayList<k>)new ArrayList<c>();
        for (final Map.Entry<String, V> entry : this.LW.getAll().entrySet()) {
            final String s = entry.getKey();
            if (this.bB(s)) {
                final Object b = this.b(s, entry.getValue());
                if (b == null) {
                    continue;
                }
                list.add(new k(s, b));
            }
        }
        return (List<c>)list;
    }
    
    public final boolean tZ() {
        final Iterator<String> iterator = this.LW.getAll().keySet().iterator();
        while (iterator.hasNext()) {
            if (this.bB(iterator.next())) {
                return true;
            }
        }
        return false;
    }
    
    protected boolean tx() {
        return g.ao(this.mContext).tx();
    }
    
    protected void ty() {
        g.ao(this.mContext).ty();
    }
    
    protected final void ua() {
        f.aj(this.mContext);
    }
    
    public final void unregisterOnSharedPreferenceChangeListener(final SharedPreferences$OnSharedPreferenceChangeListener sharedPreferences$OnSharedPreferenceChangeListener) {
        this.LW.unregisterOnSharedPreferenceChangeListener(sharedPreferences$OnSharedPreferenceChangeListener);
    }
}
