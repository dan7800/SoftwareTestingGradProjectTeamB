package com.android.mail.i;

import com.android.mail.providers.*;
import com.android.mail.utils.*;
import java.util.regex.*;
import com.google.common.collect.*;
import java.util.*;
import android.text.*;
import android.content.*;

public final class g extends l
{
    private static g axR;
    private final int axS;
    
    private g(final Context context, final String s) {
        super(context, s);
        this.axS = context.getResources().getInteger(2131427394);
    }
    
    public static g ao(final Context context) {
        synchronized (g.class) {
            if (g.axR == null) {
                g.axR = new g(context, "UnifiedEmail");
            }
            return g.axR;
        }
    }
    
    private Set<String> tG() {
        return (Set<String>)this.getSharedPreferences().getStringSet("display_images", (Set)Collections.emptySet());
    }
    
    public final void R(final long n) {
        this.getEditor().putLong("analytics-send-nb_accounts-epoch", n);
    }
    
    public final void a(final int n, final Account account, final String s) {
        if (account == null) {
            E.f(g.mW, "Cannot configure widget with null account", new Object[0]);
            return;
        }
        this.getEditor().putString("widget-account-" + n, account.uri.toString() + " " + s).apply();
    }
    
    public final void a(final String s, final List<Pattern> list) {
        if (list != null) {
            for (final Pattern pattern : list) {
                if (pattern.matcher(s).matches()) {
                    final Set stringSet = this.getSharedPreferences().getStringSet("display_sender_images_patterns_set", (Set)Collections.emptySet());
                    final String pattern2 = pattern.pattern();
                    if (!stringSet.contains(pattern2)) {
                        final HashSet<String> g = Sets.g((Iterable<? extends String>)stringSet);
                        g.add(pattern2);
                        this.g(g);
                    }
                    return;
                }
            }
        }
        Label_0105: {
            break Label_0105;
        }
        final Set<String> tg = this.tG();
        if (!tg.contains(s)) {
            final HashSet<String> g2 = Sets.g((Iterable<? extends String>)tg);
            g2.add(s);
            this.f(g2);
        }
    }
    
    public final void aZ(final boolean b) {
        this.getEditor().putBoolean("default-reply-all", b).apply();
        this.ua();
    }
    
    @Override
    protected final boolean bB(final String s) {
        return h.axN.contains(s);
    }
    
    public final void bF(final String s) {
        this.getEditor().putString("removal-action", s).apply();
        this.ua();
    }
    
    public final boolean bG(final String s) {
        boolean b = this.tG().contains(s);
        if (!b) {
            final Iterator<String> iterator = (Iterator<String>)this.getSharedPreferences().getStringSet("display_sender_images_patterns_set", (Set)Collections.emptySet()).iterator();
            while (iterator.hasNext()) {
                b = Pattern.compile(iterator.next()).matcher(s).matches();
                if (b) {
                    break;
                }
            }
        }
        return b;
    }
    
    public final String ba(final boolean b) {
        if (!b) {
            return "delete";
        }
        final SharedPreferences sharedPreferences = this.getSharedPreferences();
        if (TextUtils.equals((CharSequence)sharedPreferences.getString("removal-action", (String)null), (CharSequence)"archive-and-delete")) {
            return "archive";
        }
        return sharedPreferences.getString("removal-action", "archive");
    }
    
    public final int bb(final boolean b) {
        final boolean boolean1 = this.getSharedPreferences().getBoolean("conversation-list-swipe", true);
        int n;
        if (!"delete".equals(this.ba(b))) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (!boolean1) {
            return 2;
        }
        if (n != 0) {
            return 0;
        }
        return 1;
    }
    
    public final void bc(final boolean b) {
        this.getEditor().putBoolean("conversation-list-sender-image", b).apply();
        this.ua();
    }
    
    public final void bd(final boolean b) {
        this.getEditor().putBoolean("confirm-delete", b).apply();
        this.ua();
    }
    
    public final void be(final boolean b) {
        this.getEditor().putBoolean("confirm-archive", b).apply();
        this.ua();
    }
    
    public final void bf(final boolean b) {
        this.getEditor().putBoolean("confirm-send", b).apply();
        this.ua();
    }
    
    public final void bg(final boolean b) {
        this.getEditor().putBoolean("conversation-overview-mode", b).apply();
    }
    
    @Override
    protected final void cq(final int n) {
        if (n > 4) {
            throw new IllegalStateException("You appear to have downgraded your app. Please clear app data.");
        }
        if (n == 4) {
            return;
        }
    }
    
    public final boolean cs(final int n) {
        return this.getSharedPreferences().contains("widget-account-" + n);
    }
    
    public final String ct(final int n) {
        return this.getSharedPreferences().getString("widget-account-" + n, (String)null);
    }
    
    public final void cu(final int n) {
        this.getEditor().putInt("auto-advance-mode", n).apply();
        this.ua();
    }
    
    public final void cv(final int n) {
        this.getEditor().putInt("snap-header-mode", n).apply();
    }
    
    public final void cw(final int n) {
        this.getEditor().putInt("migration-state", n).apply();
    }
    
    public final void cx(final int n) {
        this.getEditor().putInt("required-sanitizer-version-number", n).apply();
    }
    
    public final void e(final Set<String> set) {
        this.getEditor().putStringSet("cache-active-notification-set", (Set)set).apply();
    }
    
    public final void f(final Set<String> set) {
        this.getEditor().putStringSet("display_images", (Set)set).apply();
        this.ua();
    }
    
    public final void f(final int[] array) {
        for (int length = array.length, i = 0; i < length; ++i) {
            this.getEditor().remove("widget-account-" + array[i]);
        }
        this.getEditor().apply();
    }
    
    public final void g(final Set<String> set) {
        this.getEditor().putStringSet("display_sender_images_patterns_set", (Set)set).apply();
        this.ua();
    }
    
    public final void h(final Set<String> set) {
        this.getEditor().putStringSet("recent-accounts", (Set)set).apply();
    }
    
    public final void tA() {
        this.getEditor().putBoolean("conversation-list-swipe", false).apply();
        this.ua();
    }
    
    public final Set<String> tB() {
        return (Set<String>)this.getSharedPreferences().getStringSet("cache-active-notification-set", (Set)null);
    }
    
    public final boolean tC() {
        return this.getSharedPreferences().getBoolean("conversation-photo-teaser-shown-three", false);
    }
    
    public final void tD() {
        this.getEditor().putBoolean("conversation-photo-teaser-shown-three", true).apply();
    }
    
    public final boolean tE() {
        final int int1 = this.getSharedPreferences().getInt("long-press-to-select-tip-shown", 0);
        boolean b = false;
        if (int1 > 0) {
            b = true;
        }
        return b;
    }
    
    public final void tF() {
        this.getEditor().putInt("long-press-to-select-tip-shown", 1).apply();
        this.ua();
    }
    
    public final void tH() {
        final SharedPreferences$Editor editor = this.getEditor();
        editor.putStringSet("display_images", Collections.EMPTY_SET);
        editor.putStringSet("display_sender_images_patterns_set", Collections.EMPTY_SET);
        editor.apply();
    }
    
    public final boolean tI() {
        return this.getSharedPreferences().getBoolean("conversation-list-sender-image", true);
    }
    
    public final int tJ() {
        return this.getSharedPreferences().getInt("num-of-dismisses-auto-sync-off", 0);
    }
    
    public final void tK() {
        if (this.getSharedPreferences().getInt("num-of-dismisses-auto-sync-off", 0) != 0) {
            this.getEditor().putInt("num-of-dismisses-auto-sync-off", 0).apply();
        }
    }
    
    public final void tL() {
        this.getEditor().putInt("num-of-dismisses-auto-sync-off", this.getSharedPreferences().getInt("num-of-dismisses-auto-sync-off", 0) + 1).apply();
    }
    
    public final boolean tM() {
        return this.getSharedPreferences().getBoolean("confirm-delete", false);
    }
    
    public final boolean tN() {
        return this.getSharedPreferences().getBoolean("confirm-archive", false);
    }
    
    public final boolean tO() {
        return this.getSharedPreferences().getBoolean("confirm-send", false);
    }
    
    public final int tP() {
        return this.getSharedPreferences().getInt("auto-advance-mode", 3);
    }
    
    public final boolean tQ() {
        return this.getSharedPreferences().getBoolean("conversation-overview-mode", true);
    }
    
    public final boolean tR() {
        return this.getSharedPreferences().contains("conversation-overview-mode");
    }
    
    public final int tS() {
        return this.getSharedPreferences().getInt("snap-header-mode", this.axS);
    }
    
    public final int tT() {
        return this.getSharedPreferences().getInt("migration-state", 0);
    }
    
    public final Set<String> tU() {
        return (Set<String>)this.getSharedPreferences().getStringSet("recent-accounts", (Set)null);
    }
    
    public final int tV() {
        return this.getSharedPreferences().getInt("required-sanitizer-version-number", 1);
    }
    
    public final long tW() {
        return this.getSharedPreferences().getLong("analytics-send-nb_accounts-epoch", 0L);
    }
    
    @Override
    protected final boolean tx() {
        final int int1 = this.getSharedPreferences().getInt("migrated-version", 0);
        boolean b = false;
        if (int1 >= 4) {
            b = true;
        }
        return b;
    }
    
    @Override
    protected final void ty() {
        this.getEditor().putInt("migrated-version", 4).commit();
    }
    
    public final boolean tz() {
        return this.getSharedPreferences().getBoolean("default-reply-all", false);
    }
}
