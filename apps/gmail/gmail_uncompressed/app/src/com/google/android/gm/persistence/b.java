package com.google.android.gm.persistence;

import java.util.regex.*;
import android.text.*;
import android.net.*;
import android.media.*;
import com.google.android.mail.common.base.*;
import android.database.*;
import com.google.android.gm.preference.*;
import com.android.mail.providers.*;
import com.google.android.gsf.*;
import android.os.*;
import android.content.res.*;
import com.google.android.gm.provider.*;
import android.content.*;
import com.android.mail.utils.*;
import com.google.android.gm.*;
import com.google.common.collect.*;
import org.json.*;
import java.util.*;
import android.provider.*;

public final class b
{
    public static final String TAG;
    public static int baR;
    @Deprecated
    public static int baS;
    @Deprecated
    public static int baT;
    @Deprecated
    public static int baU;
    @Deprecated
    public static int baV;
    private static final Set<String> baW;
    private static b baX;
    private static Boolean baY;
    private static String baZ;
    private static Map<String, String> bba;
    private static String bbb;
    static int bbc;
    static int bbd;
    static int bbe;
    static int bbf;
    private static final List<Pattern> bbg;
    private static int bbh;
    final e bbi;
    final d bbj;
    final f bbk;
    
    static {
        TAG = D.AU();
        b.baR = 0;
        b.baS = 1;
        b.baT = 2;
        b.baU = 3;
        b.baV = 4;
        baW = ImmutableSet.a("enable-notifications", "signature", "ringtone", "vibrateWhen", "unobtrusive", "auto-advance-key", "swipe-key", "prefetch-attachments", "conversation-mode2", "action-strip-action-reply-all", "snap-headers", "inbox-type", "show-new-inbox-onboarding", "display_images", "notification_labels", "conversation-list-sender-image", "confirm-delete", "archive", "delete", "send", "confirm-actions-key", "signature-key", "vibrate", "show-save-to-drive-promo", "save-to-drive-promo-timestamp");
        b.baX = null;
        b.baY = null;
        b.bbb = " ";
        b.bbc = 0;
        b.bbd = 1;
        b.bbe = 2;
        b.bbf = 3;
        (bbg = new ArrayList<Pattern>()).add(Pattern.compile("noreply\\-\\w+@plus\\.google\\.com"));
        b.bbg.add(Pattern.compile("[0-9a-fA-F]+@plus\\.google\\.com"));
        b.bbh = -1;
    }
    
    private b() {
        this.bbi = new e(this);
        this.bbj = new d(this);
        this.bbk = new f(this);
    }
    
    public static b DD() {
        if (b.baX == null) {
            b.baX = new b();
        }
        return b.baX;
    }
    
    private static String H(final String s, final String s2) {
        return String.format("%s-%s", s, s2);
    }
    
    public static String I(final Context context, final String s) {
        final b dd = DD();
        final String a = dd.a(context, s, true);
        final boolean e = dd.E(context, s);
        final String q = q(context, a, s);
        if (q != null) {
            return q;
        }
        E.f(b.TAG, "We had an invalid inbox type set (%1$s), reverting to default", a);
        dd.o(context, s, "default");
        if (e) {
            return "^sq_ig_i_personal";
        }
        return "^i";
    }
    
    @Deprecated
    private static Set<String> I(final String s, final String s2) {
        Set<String> set;
        if (s == null || s.equals("")) {
            set = null;
        }
        else {
            final String[] split = TextUtils.split(s, s2);
            set = new HashSet<String>();
            for (int length = split.length, i = 0; i < length; ++i) {
                set.add(split[i]);
            }
        }
        return set;
    }
    
    private static String J(final Context context, final String s) {
        if (s.length() == 0 || RingtoneManager.isDefault(Uri.parse(s))) {
            return s;
        }
        final RingtoneManager ringtoneManager = new RingtoneManager(context);
        ringtoneManager.setType(2);
        final Cursor cursor = ringtoneManager.getCursor();
        try {
            while (cursor.moveToNext()) {
                if (ContentUris.withAppendedId(Uri.parse(cursor.getString(2)), cursor.getLong(0)).toString().equals(s)) {
                    final String string = cursor.getString(1);
                    if (!K.gK(string)) {
                        return string;
                    }
                    continue;
                }
            }
            return null;
        }
        finally {
            cursor.close();
        }
    }
    
    private static String K(final Context context, final String s) {
        if (s.length() == 0 || RingtoneManager.isDefault(Uri.parse(s))) {
            return s;
        }
        final RingtoneManager ringtoneManager = new RingtoneManager(context);
        ringtoneManager.setType(2);
        final Cursor cursor = ringtoneManager.getCursor();
        try {
            while (cursor.moveToNext()) {
                if (s.equals(cursor.getString(1))) {
                    return ContentUris.withAppendedId(Uri.parse(cursor.getString(2)), cursor.getLong(0)).toString();
                }
            }
            return null;
        }
        finally {
            cursor.close();
        }
    }
    
    private long a(final Context context, final String s, final String s2, final long n) {
        if (s != null) {
            return context.getSharedPreferences("Gmail", 0).getLong(j(context, s, s2), n);
        }
        return context.getSharedPreferences("Gmail", 0).getLong(s2, n);
    }
    
    public static String a(final Set<String> set, final int n) {
        if (set == null) {
            E.f(b.TAG, "attributes was null when trying to find key: %1$d", n);
            return null;
        }
        final String string = Integer.toString(n);
        for (final String s : set) {
            if (s == null) {
                E.f(b.TAG, "attributes contained a null value when trying to find key: %1$d. attributes was: $2$s", n, set.toString());
            }
            if (s.startsWith(string)) {
                return s.substring(1);
            }
        }
        return null;
    }
    
    private Set<String> a(final Context context, final String s, final String s2, final Set<String> set) {
        return (Set<String>)context.getSharedPreferences("Gmail", 0).getStringSet(j(context, s, s2), (Set)set);
    }
    
    private static void a(final Context context, final String s, final String s2, final String s3, final Set<String> set) {
        if (s2.equals(s3)) {
            return;
        }
        E.d(b.TAG, "Migrating sync settings from %s to %s /// %s", s2, s3, set);
        final Gmail$Settings p5 = Gmail.P(context, s);
        final HashSet<Object> set2 = new HashSet<Object>();
        set2.addAll(p5.EB());
        final HashSet<Object> set3 = new HashSet<Object>();
        set3.addAll(p5.EA());
        if (set3.contains(s2)) {
            set3.addAll(set);
        }
        else {
            set2.addAll(set);
        }
        p5.y((Collection<String>)set3);
        p5.z((Collection<String>)set2);
        Gmail.a(s, p5, context.getContentResolver());
    }
    
    public static void a(final Context context, final String s, final String s2, final String s3, final Set<String> set, final Set<String> set2) {
        a(context, s, s2, s3, set);
        if (!s2.equals(s3)) {
            E.d(b.TAG, "Migrating notification settings from %s to %s", s2, s3);
            final j j = new j(context, s, s2, true);
            final j i = new j(context, s, s3, true);
            final boolean to = j.to();
            i.aW(to);
            if (to) {
                i.bE(j.tu());
                i.aX(j.tv());
                i.aY(j.tw());
            }
            if ("^sq_ig_i_personal".equals(s2)) {
                a(context, s, Gmail.bdE);
            }
            else {
                j.aW(false);
            }
            final MailEngine eo = MailEngine.eO(s);
            if (eo != null) {
                final com.google.android.gm.provider.D fn = eo.Fn();
                if (fn != null && fn.Ee()) {
                    eo.GA();
                    final int w = eo.W(s2, s3);
                    final Account x = ay.x(context, s);
                    final Folder k = ay.i(context, s, s3);
                    if (k == null) {
                        E.e(b.TAG, "Folder was null in migrateNotificationSettings.", new Object[0]);
                    }
                    else {
                        N.a(context, k.aAf, w, x, k, false);
                    }
                }
            }
        }
        a(context, s, s2, s3, set2, false);
        GmailProvider.R(context, s);
    }
    
    private static void a(final Context context, final String s, final String s2, final String s3, final Set<String> set, final boolean b) {
        if (s2.equals(s3)) {
            return;
        }
        if (!b && MailEngine.eO(s).el(s2)) {
            E.c(b.TAG, "Not disabling sync because %s is still visible", s2);
            return;
        }
        final Gmail$Settings p6 = Gmail.P(context, s);
        final HashSet<Object> set2 = new HashSet<Object>();
        set2.addAll(p6.EB());
        final HashSet<Object> set3 = new HashSet<Object>();
        set3.addAll(p6.EA());
        set3.remove(s2);
        set2.remove(s2);
        if (set != null) {
            set3.removeAll(set);
            set2.removeAll(set);
        }
        p6.y((Collection<String>)set3);
        p6.z((Collection<String>)set2);
        Gmail.a(s, p6, context.getContentResolver());
    }
    
    private static void a(final Context context, final String s, final Collection<String> collection) {
        final Iterator<String> iterator = collection.iterator();
        while (iterator.hasNext()) {
            r(context, s, iterator.next());
        }
    }
    
    private void a(final Context context, final Map<String, Long> map, final String s, final String s2, final String s3) {
        final Long n = map.get(s);
        if (n != null) {
            E.b(b.TAG, "Saving %s-%s timestamp: %d", s2, s3, n);
            this.b(context, s2, s3, n);
        }
    }
    
    @Deprecated
    public static boolean a(final Context context, final Set<String> set) {
        bB(context);
        String s;
        if (set != null) {
            s = a(set, b.baU);
        }
        else {
            s = b.baZ;
        }
        String s2;
        if (s != null) {
            s2 = b.bba.get(s);
        }
        else {
            s2 = null;
        }
        if (s2 != null) {
            return dJ(s2);
        }
        return dJ(s);
    }
    
    @Deprecated
    private Set<String> b(final Context context, final String s, final String s2, Set<String> a) {
        final String string = "notification_labels" + s2;
        try {
            a = this.a(context, s, string, a);
            return a;
        }
        catch (ClassCastException ex) {
            final Set<String> i = I(this.c(context, s, string, null), b.bbb);
            if (i != null) {
                final HashSet<String> set = new HashSet<String>();
                set.add(b.baS + a(i, b.bbc));
                set.add(b.baT + a(i, b.bbd));
                set.add(b.baU + a(i, b.bbe));
                set.add(b.baV + a(i, b.bbf));
                return set;
            }
            return a;
        }
    }
    
    private void b(final Context context, final String s, final String s2, final long n) {
        final SharedPreferences$Editor edit = context.getSharedPreferences("Gmail", 0).edit();
        edit.putLong(j(context, s, s2), n);
        edit.apply();
        dH(s2);
    }
    
    public static String bA(final Context context) {
        return c.getString(context.getContentResolver(), "gmail_profile_address_patterns");
    }
    
    @Deprecated
    private static void bB(final Context context) {
        synchronized (b.class) {
            if (b.baY == null || b.bba == null) {
                final Vibrator vibrator = (Vibrator)context.getSystemService("vibrator");
                b.baY = (vibrator != null && vibrator.hasVibrator());
                final Resources resources = context.getResources();
                b.baZ = resources.getString(2131297117);
                final String string = resources.getString(2131297116);
                final String string2 = resources.getString(2131297117);
                final y<String, String> zv = ImmutableMap.Zv();
                zv.p(string, string);
                zv.p(string2, string2);
                zv.p(resources.getString(2131297130), string);
                zv.p(resources.getString(2131297131), string2);
                b.bba = zv.Zo();
            }
        }
    }
    
    @Deprecated
    private String bE(final Context context) {
        final Resources resources = context.getResources();
        String s = this.bF(context);
        if (s == null) {
            s = resources.getString(2131296616);
        }
        return s;
    }
    
    @Deprecated
    private String bF(final Context context) {
        String s = this.c(context, null, "auto-advance-key", null);
        if (s == null) {
            s = this.bbj.bU(context);
        }
        if (s == null) {
            s = this.c(context, null, "auto-advance", null);
        }
        return s;
    }
    
    @Deprecated
    private Set<String> bJ(final Context context) {
        final Resources resources = context.getResources();
        String s = this.c(context, null, "confirm-actions-key", null);
        if (s == null) {
            s = this.bbi.bU(context);
        }
        if (s == null) {
            s = this.c(context, null, "confirm-actions", null);
        }
        if (s == null) {
            s = resources.getString(2131297113);
        }
        return Sets.p(TextUtils.split(s, ","));
    }
    
    public static aU bP(final Context context) {
        return new g(context);
    }
    
    public static SharedPreferences br(final Context context) {
        return context.getSharedPreferences("Gmail", 0);
    }
    
    public static List<Pattern> bz(final Context context) {
        final String a = c.a(context.getContentResolver(), "gmail_social_network_sender_patterns", null);
        if (a != null) {
            final int hashCode = a.hashCode();
            if (hashCode != b.bbh) {
                b.bbh = hashCode;
                final String[] split = TextUtils.split(a, ";");
                b.bbg.clear();
                for (int length = split.length, i = 0; i < length; ++i) {
                    b.bbg.add(Pattern.compile(split[i]));
                }
            }
        }
        return b.bbg;
    }
    
    private String c(final Context context, final String s, final String s2, final String s3) {
        if (s != null) {
            return context.getSharedPreferences("Gmail", 0).getString(j(context, s, s2), s3);
        }
        return context.getSharedPreferences("Gmail", 0).getString(s2, s3);
    }
    
    private void c(final Context context, final String s, final String s2, final boolean b) {
        this.d(context, s, "inbox-type", s2);
        if (b) {
            MailEngine.eO(s).Fs();
        }
    }
    
    private void d(final Context context, final String s, final String s2, final String s3) {
        final SharedPreferences$Editor edit = context.getSharedPreferences("Gmail", 0).edit();
        edit.putString(j(context, s, s2), s3);
        edit.apply();
        dH(s2);
    }
    
    private static void dH(final String s) {
        if (dI(s)) {
            GmailBackupAgent.dataChanged("Shared preferences");
        }
    }
    
    private static boolean dI(String substring) {
        if (substring == null) {
            return false;
        }
        final int index = substring.indexOf(94);
        if (index >= 0) {
            substring = substring.substring(0, index);
        }
        return b.baW.contains(substring);
    }
    
    @Deprecated
    private static boolean dJ(final String s) {
        return s != null && !b.baZ.equals(s);
    }
    
    public static String getSharedPreferencesName() {
        return "Gmail";
    }
    
    private static String j(final Context context, String s, String h) {
        if (s != null) {
            final String dr = i.aT(context).dr(s);
            if (dr != null) {
                s = dr;
            }
            h = H(s, h);
        }
        return h;
    }
    
    private boolean l(final Context context, final String s, String j) {
        if (s != null) {
            j = j(context, s, j);
        }
        return context.getSharedPreferences("Gmail", 0).contains(j);
    }
    
    public static void n(final Context context, final String s, final String s2) {
        a(context, s, s2, null, null, true);
        new j(context, s, s2, false).aW(false);
    }
    
    public static String q(final Context context, final String s, final String s2) {
        if ("priority".equals(s)) {
            return "^iim";
        }
        if (!"default".equals(s)) {
            return null;
        }
        if (DD().E(context, s2)) {
            return "^sq_ig_i_personal";
        }
        return "^i";
    }
    
    private static void r(final Context context, final String s, final String s2) {
        final j j = new j(context, s, s2, false);
        if (j.to()) {
            j.aW(false);
        }
        final Account x = ay.x(context, s);
        final Folder a = ay.a(context, s, s2, true);
        if (x != null && a != null) {
            N.a(context, x, a, false);
        }
    }
    
    public final String A(final Context context, final String s) {
        return this.c(context, null, H(s, "account-alias"), null);
    }
    
    public final String B(final Context context, final String s) {
        String s2 = this.c(context, s, "signature", null);
        if (s2 == null) {
            s2 = this.c(context, null, "signature-key", null);
        }
        if (s2 == null) {
            s2 = "";
        }
        return s2;
    }
    
    @Deprecated
    public final boolean C(final Context context, final String s) {
        return this.l(context, s, "enable-notifications");
    }
    
    @Deprecated
    public final boolean D(final Context context, final String s) {
        return this.b(context, s, "enable-notifications", true);
    }
    
    public final boolean E(final Context context, final String s) {
        return this.b(context, s, "server-sectioned-inbox", false);
    }
    
    public final void F(final Context context, final String s) {
        if (!this.l(context, s, "show-new-inbox-onboarding")) {
            this.a(context, s, "show-new-inbox-onboarding", Boolean.valueOf(true));
        }
    }
    
    public final void G(final Context context, final String s) {
        if (this.l(context, s, "show-new-inbox-onboarding") && this.b(context, s, "show-new-inbox-onboarding", true)) {
            this.a(context, s, "show-new-inbox-onboarding", Boolean.valueOf(false));
        }
    }
    
    public final boolean H(final Context context, final String s) {
        return this.b(context, s, "prefetch-attachments", !ag.aF(context));
    }
    
    public final boolean L(final Context context, final String s) {
        return this.l(context, s, "no_longer_rename_eligible");
    }
    
    public final void M(final Context context, final String s) {
        this.a(context, s, "no_longer_rename_eligible", Boolean.valueOf(true));
    }
    
    public final String a(final Context context, final String s, final boolean b) {
        String c;
        if (this.l(context, s, "inbox-type")) {
            c = this.c(context, s, "inbox-type", "default");
        }
        else {
            String s2;
            if (this.l(context, s, "priority-inbox-key")) {
                s2 = "priority-inbox-key";
            }
            else {
                s2 = "priority-inbox";
            }
            if (this.b(context, s, s2, false)) {
                c = "priority";
            }
            else {
                c = "default";
            }
            if (this.l(context, s, s2)) {
                this.c(context, s, c, b);
                return c;
            }
        }
        return c;
    }
    
    public final void a(final Context context, final String s, final String s2, final Boolean b) {
        final SharedPreferences$Editor edit = context.getSharedPreferences("Gmail", 0).edit();
        edit.putBoolean(j(context, s, s2), (boolean)b);
        edit.apply();
        dH(s2);
    }
    
    public final void a(final Context context, final String s, final Map<String, Long> map) {
        this.a(context, map, "^sq_ig_i_social", s, "teaser-timestamp-dismissed-social");
        this.a(context, map, "^sq_ig_i_promo", s, "teaser-timestamp-dismissed-promo");
        this.a(context, map, "^sq_ig_i_notification", s, "teaser-timestamp-dismissed-notification");
        this.a(context, map, "^sq_ig_i_group", s, "teaser-timestamp-dismissed-group");
    }
    
    public final void a(final Context context, final String s, final boolean b, final Set<String> set, final com.google.android.gm.provider.ag ag) {
        final String i = I(context, s);
        final boolean b2 = this.b(context, s, "server-sectioned-inbox", false);
        this.a(context, s, "server-sectioned-inbox", Boolean.valueOf(b));
        if (b == b2) {
            return;
        }
        final String j = I(context, s);
        MailEngine.eO(s).Fs();
        ImmutableSet<String> ag2;
        if (set.isEmpty()) {
            ag2 = ImmutableSet.aG("^sq_ig_i_personal");
        }
        else {
            ag2 = (ImmutableSet<String>)set;
        }
        if ("default".equals(this.a(context, s, true))) {
            if (b) {
                a(context, s, i, j, ag2, ImmutableSet.aG("^i"));
                ag.FK();
            }
            else {
                a(context, s, i, j, ImmutableSet.aG(j), ag2);
                ag.FK();
            }
        }
        else {
            String s2;
            String s3;
            ImmutableSet<String> ag4;
            if (b) {
                s2 = "^i";
                s3 = "^sq_ig_i_personal";
                final ImmutableSet<String> ag3 = ImmutableSet.aG("^i");
                ag4 = ag2;
                ag2 = ag3;
            }
            else {
                s2 = "^sq_ig_i_personal";
                s3 = "^i";
                ag4 = ImmutableSet.aG("^i");
            }
            a(context, s, s2, s3, ag4);
            a(context, s, s2, s3, ag2, false);
        }
        if (b) {
            r(context, s, "^i");
            return;
        }
        a(context, s, Gmail.bdE);
    }
    
    public final void a(final Context context, final List<SharedPreference> list, final String s) {
        for (final SharedPreference sharedPreference : list) {
            final Object value = sharedPreference.getValue();
            final String key = sharedPreference.getKey();
            if (dI(key)) {
                final String dc = sharedPreference.Dc();
                if (value instanceof Boolean) {
                    this.a(context, dc, key, (Boolean)value);
                    E.b(b.TAG, "Restore: %s", sharedPreference);
                }
                else if (value instanceof String) {
                    String k = (String)value;
                    if ("ringtone".equals(key)) {
                        k = K(context, k);
                        if (k == null) {
                            E.e(b.TAG, "Can't restore ringtone (not found)", new Object[0]);
                            continue;
                        }
                    }
                    this.d(context, dc, key, k);
                    E.b(s, "Restore: %s", sharedPreference);
                }
                else if (value instanceof Set) {
                    final Set<String> set = (Set<String>)value;
                    if (key.startsWith("notification_labels")) {
                        final String a = a(set, b.baT);
                        String s2 = K(context, a);
                        if (s2 == null) {
                            s2 = RingtoneManager.getDefaultUri(2).toString();
                        }
                        set.remove(b.baT + a);
                        set.add(b.baT + s2);
                    }
                    final SharedPreferences$Editor edit = context.getSharedPreferences("Gmail", 0).edit();
                    edit.putStringSet(j(context, dc, key), (Set)set);
                    edit.apply();
                    dH(key);
                }
                else {
                    E.f(s, "Unknown preference data type: %s", ((Set<String>)value).getClass());
                }
            }
        }
        context.getSharedPreferences("Gmail", 0).edit().commit();
    }
    
    public final void a(final Context context, final boolean b, final Iterable<String> iterable) {
        this.d(context, null, "cache-google-accounts-synced", TextUtils.join((CharSequence)" ", (Iterable)iterable));
    }
    
    public final List<String> b(final Context context, final boolean b) {
        String s;
        if (b) {
            s = "cache-google-accounts";
        }
        else {
            s = "cache-google-accounts-synced";
        }
        return ImmutableList.f(TextUtils.split(this.c(context, null, s, ""), " "));
    }
    
    public final void b(final Context context, final String s, final Map<String, Long> map) {
        this.a(context, map, "^sq_ig_i_social", s, "teaser-timestamp-displayed-social");
        this.a(context, map, "^sq_ig_i_promo", s, "teaser-timestamp-displayed-promo");
        this.a(context, map, "^sq_ig_i_notification", s, "teaser-timestamp-displayed-notification");
        this.a(context, map, "^sq_ig_i_group", s, "teaser-timestamp-displayed-group");
    }
    
    public final void b(final Context context, final String s, final boolean b) {
        this.a(context, s, "prefetch-attachments", Boolean.valueOf(b));
    }
    
    public final boolean b(final Context context, final String s, final String s2, final boolean b) {
        return context.getSharedPreferences("Gmail", 0).getBoolean(j(context, s, s2), b);
    }
    
    @Deprecated
    public final String bC(final Context context) {
        return this.c(context, null, "snap-headers", context.getResources().getString(2131297014));
    }
    
    @Deprecated
    public final boolean bD(final Context context) {
        return this.b(context, null, "conversation-mode2", true);
    }
    
    @Deprecated
    public final String bG(final Context context) {
        return context.getSharedPreferences("Gmail", 0).getString("swipe-key", "archive");
    }
    
    @Deprecated
    public final boolean bH(final Context context) {
        return "older".equals(this.bE(context));
    }
    
    @Deprecated
    public final boolean bI(final Context context) {
        return "newer".equals(this.bE(context));
    }
    
    @Deprecated
    public final boolean bK(final Context context) {
        return this.bJ(context).contains("archive");
    }
    
    @Deprecated
    public final boolean bL(final Context context) {
        return this.bJ(context).contains("delete");
    }
    
    @Deprecated
    public final boolean bM(final Context context) {
        return this.bJ(context).contains("send");
    }
    
    public final void bN(final Context context) {
        if (this.l(context, null, "show-sync-window-upgrade")) {
            return;
        }
        this.a(context, null, "show-sync-window-upgrade", Boolean.valueOf(true));
    }
    
    public final List<SharedPreference> bO(final Context context) {
        final ArrayList<SharedPreference> list = new ArrayList<SharedPreference>();
        final SharedPreferences sharedPreferences = context.getSharedPreferences("Gmail", 0);
        for (final Map.Entry<String, V> entry : sharedPreferences.getAll().entrySet()) {
            final String s = entry.getKey();
            String substring;
            String substring2;
            if (s.indexOf(64) >= 0) {
                final int index = s.indexOf(45, s.lastIndexOf(46));
                substring = s.substring(0, index);
                substring2 = s.substring(index + 1);
            }
            else {
                substring2 = s;
                substring = null;
            }
            if (dI(substring2)) {
                final V value = entry.getValue();
                Object j;
                if ("ringtone".equals(substring2)) {
                    j = J(context, (String)entry.getValue());
                    if (j == null) {
                        continue;
                    }
                }
                else if (substring2.startsWith("notification_labels")) {
                    final Set stringSet = sharedPreferences.getStringSet(s, (Set)null);
                    if (stringSet == null) {
                        continue;
                    }
                    final HashSet<String> set = new HashSet<String>();
                    final String string = Integer.toString(b.baT);
                    for (final String s2 : stringSet) {
                        if (s2.startsWith(string)) {
                            String s3 = J(context, s2.substring(1));
                            if (s3 == null) {
                                s3 = RingtoneManager.getDefaultUri(2).toString();
                            }
                            set.add(b.baT + s3);
                        }
                        else {
                            set.add(s2);
                        }
                    }
                    j = set;
                }
                else {
                    j = value;
                }
                list.add(new SharedPreference(substring2, substring, j));
            }
        }
        return list;
    }
    
    public final long bQ(final Context context) {
        long n = -1L;
        final long a = this.a(context, null, "last_sync_time", n);
        if (a != n) {
            n = System.currentTimeMillis() - a;
        }
        return n;
    }
    
    public final void bR(final Context context) {
        this.b(context, null, "last_sync_time", System.currentTimeMillis());
    }
    
    public final int bS(final Context context) {
        return context.getSharedPreferences("Gmail", 0).getInt("welcome_tour_version", -2);
    }
    
    public final boolean bT(final Context context) {
        return this.b(context, null, "force_show_welcome_tour", false);
    }
    
    public final String bs(final Context context) {
        return this.c(context, null, "active-account", null);
    }
    
    @Deprecated
    public final boolean bt(final Context context) {
        boolean boolean1 = true;
        final SharedPreferences sharedPreferences = context.getSharedPreferences("Gmail", 0);
        if (!sharedPreferences.contains("conversation-list-sender-image")) {
            if (!sharedPreferences.contains("hide-checkboxes")) {
                if (!sharedPreferences.contains("allow-batch")) {
                    return sharedPreferences.getBoolean("conversation-list-sender-image", boolean1);
                }
                boolean1 = sharedPreferences.getBoolean("allow-batch", boolean1);
            }
            else if (sharedPreferences.getBoolean("hide-checkboxes", false)) {
                return false;
            }
            return boolean1;
        }
        return sharedPreferences.getBoolean("conversation-list-sender-image", boolean1);
    }
    
    @Deprecated
    public final boolean bu(final Context context) {
        return this.l(context, null, "action-strip-action-reply-all");
    }
    
    @Deprecated
    public final boolean bv(final Context context) {
        if (this.l(context, null, "action-strip-action-reply-all")) {
            return this.b(context, null, "action-strip-action-reply-all", false);
        }
        Boolean value = this.bbk.bU(context);
        if (value == null) {
            value = context.getResources().getBoolean(2131623950);
        }
        return value;
    }
    
    @Deprecated
    public final boolean bw(final Context context) {
        return this.bF(context) != null;
    }
    
    @Deprecated
    public final Set<String> bx(final Context context) {
        final HashSet<String> set = new HashSet<String>();
        final String c = this.c(context, null, "display_images", "");
        if (c != null && c.length() > 0) {
            try {
                final JSONArray jsonArray = new JSONArray(c);
                for (int length = jsonArray.length(), i = 0; i < length; ++i) {
                    set.add((String)jsonArray.get(i));
                }
            }
            catch (JSONException ex) {
                this.d(context, null, "display_images", "");
            }
        }
        return set;
    }
    
    @Deprecated
    public final Set<String> by(final Context context) {
        return this.a(context, null, "display_sender_images_patterns_set", Collections.emptySet());
    }
    
    public final void c(final Context context, final boolean b) {
        this.a(context, null, "force_show_welcome_tour", Boolean.valueOf(b));
    }
    
    public final void k(final Context context, final String s, final String s2) {
        this.d(context, null, H(s, "account-alias"), s2);
    }
    
    public final void m(final Context context, final String s, final String s2) {
        this.d(context, s, "signature", s2);
    }
    
    public final void o(final Context context, final int n) {
        final int bs = this.bS(context);
        if (n > bs) {
            E.d("WelcomeTour", "Updated shared pref for welcome_tour_version_shown: %d -> %d", bs, n);
            final SharedPreferences$Editor edit = context.getSharedPreferences("Gmail", 0).edit();
            edit.putInt(j(context, null, "welcome_tour_version"), n);
            edit.apply();
            dH("welcome_tour_version");
        }
    }
    
    public final void o(final Context context, final String s, final String s2) {
        this.c(context, s, s2, true);
    }
    
    @Deprecated
    public final Set<String> p(final Context context, final String s, final String s2) {
        final boolean equals = I(context, s).equals(s2);
        Set<String> set = null;
        if (equals) {
            final HashSet<String> set2 = new HashSet<String>();
            set2.add(b.baS + Boolean.toString(true));
            final StringBuilder append = new StringBuilder().append(b.baT);
            final String c = this.c(context, s, "ringtone", null);
            String s3;
            if (c == null) {
                s3 = this.c(context, null, "ringtone", null);
            }
            else {
                s3 = c;
            }
            if (s3 == null) {
                s3 = Settings$System.DEFAULT_NOTIFICATION_URI.toString();
            }
            set2.add(append.append(s3).toString());
            final StringBuilder append2 = new StringBuilder().append(b.baU);
            String s4;
            if (this.b(context, s, "vibrate", false)) {
                s4 = context.getResources().getString(2131297116);
            }
            else {
                s4 = context.getResources().getString(2131297117);
            }
            set2.add(append2.append(this.c(context, s, "vibrateWhen", s4)).toString());
            set2.add(b.baV + Boolean.toString(this.b(context, s, "unobtrusive", true)));
            set = set2;
        }
        return this.b(context, s, s2, set);
    }
    
    public final long s(final Context context, final String s, final String s2) {
        long a = 0L;
        if ("^sq_ig_i_social".equals(s2)) {
            a = this.a(context, s, "teaser-timestamp-dismissed-social", a);
        }
        else {
            if ("^sq_ig_i_promo".equals(s2)) {
                return this.a(context, s, "teaser-timestamp-dismissed-promo", a);
            }
            if ("^sq_ig_i_notification".equals(s2)) {
                return this.a(context, s, "teaser-timestamp-dismissed-notification", a);
            }
            if ("^sq_ig_i_group".equals(s2)) {
                return this.a(context, s, "teaser-timestamp-dismissed-group", a);
            }
        }
        return a;
    }
    
    public final long t(final Context context, final String s, final String s2) {
        long a = 0L;
        if ("^sq_ig_i_social".equals(s2)) {
            a = this.a(context, s, "teaser-timestamp-displayed-social", a);
        }
        else {
            if ("^sq_ig_i_promo".equals(s2)) {
                return this.a(context, s, "teaser-timestamp-displayed-promo", a);
            }
            if ("^sq_ig_i_notification".equals(s2)) {
                return this.a(context, s, "teaser-timestamp-displayed-notification", a);
            }
            if ("^sq_ig_i_group".equals(s2)) {
                return this.a(context, s, "teaser-timestamp-displayed-group", a);
            }
        }
        return a;
    }
    
    public final void z(final Context context, final String s) {
        this.d(context, null, "active-account", s);
    }
}
