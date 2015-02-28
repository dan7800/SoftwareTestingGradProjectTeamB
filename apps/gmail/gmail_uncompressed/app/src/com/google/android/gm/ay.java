package com.google.android.gm;

import com.google.common.collect.*;
import java.util.concurrent.*;
import com.android.mail.providers.*;
import com.google.android.gm.provider.uiprovider.*;
import android.database.*;
import com.google.android.gsf.*;
import com.google.android.gms.googlehelp.*;
import android.widget.*;
import android.graphics.*;
import com.google.android.gms.feedback.*;
import com.google.android.gms.common.api.*;
import com.google.android.gm.persistence.*;
import android.support.v4.app.*;
import android.text.*;
import android.text.style.*;
import com.android.mail.utils.*;
import android.app.*;
import android.accounts.*;
import android.content.pm.*;
import android.webkit.*;
import android.content.*;
import com.google.android.gm.provider.*;
import android.os.*;
import java.util.*;
import com.google.android.gm.preference.*;
import android.net.*;

public final class ay
{
    private static String aQK;
    private static aB aZc;
    private static final ComponentName aZd;
    private static final ComponentName aZe;
    private static final ComponentName aZf;
    private static final ComponentName aZg;
    private static final Set<Integer> aZh;
    private static final Map<String, Account> aZi;
    private static Map<String, ArrayList<Integer>> aZj;
    public static final String mW;
    
    static {
        mW = D.AU();
        aZd = new ComponentName("com.google.android.gm", "com.google.android.gm.CreateShortcutActivityGmail");
        aZe = new ComponentName("com.google.android.gm", "com.google.android.gm.CreateShortcutActivityGoogleMail");
        aZf = new ComponentName("com.google.android.gm", "com.google.android.gm.ConversationListActivityGoogleMail");
        aZg = new ComponentName("com.google.android.gm", "com.google.android.gm.ComposeActivityGmail");
        aZh = ImmutableSet.aG(262);
        ay.aQK = null;
        aZi = Maps.aan();
        ay.aZj = new ConcurrentHashMap<String, ArrayList<Integer>>();
    }
    
    public static String G(final String s, final String s2) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            return s;
        }
        if (!TextUtils.isEmpty((CharSequence)s2)) {
            return "label:" + s2;
        }
        return "";
    }
    
    public static Folder a(final Context context, final String s, String s2, final boolean b) {
        MailEngine mailEngine = MailEngine.eO(s);
        Label_0080: {
            if (mailEngine == null) {
                break Label_0080;
            }
            while (true) {
                final j j = new j(mailEngine.B(Gmail.bai).F(Collections.singletonList(s2)).bU(b).Fl(), mailEngine, s, Gmail.bai, null);
                try {
                    if (((Cursor)j).moveToFirst()) {
                        return new Folder((Cursor)j);
                    }
                    if (!b) {
                        final String mw = ay.mW;
                        final Object[] array = { null };
                        if (!E.isLoggable(ay.mW, 3)) {
                            s2 = "";
                        }
                        array[0] = s2;
                        E.f(mw, "Unable to create folder ", array);
                    }
                    return null;
                    mailEngine = MailEngine.W(context, s);
                }
                finally {
                    ((Cursor)j).close();
                }
            }
        }
    }
    
    public static void a(final Activity activity, final Account account, final String s) {
        final Uri build = Uri.parse(c.a(activity.getContentResolver(), "gmail_context_sensitive_help_url", "http://support.google.com/mail")).buildUpon().appendPath("topic").appendPath(activity.getString(2131297018)).build();
        final Locale default1 = Locale.getDefault();
        final Uri build2 = build.buildUpon().appendQueryParameter("hl", default1.getLanguage() + "_" + default1.getCountry().toLowerCase()).build();
        final GoogleHelp a = GoogleHelp.gi(s).L(build2).h(GoogleHelp.j(activity)).z(g((Context)activity, account)).a(2131558417, activity.getString(2131296702), h((Context)activity, build2)).a(2131558418, activity.getString(2131297062), h((Context)activity, Uri.parse(c.a(activity.getContentResolver(), "gmail_privacy_policy_url", "https://www.google.com/policies/privacy/")))).a(2131558419, activity.getString(2131297061), new Intent((Context)activity, (Class)LicenseActivity.class)).a(2131558420, activity.getString(2131297063), h((Context)activity, Uri.parse(c.a(activity.getContentResolver(), "gmail_terms_of_service_url", "https://www.google.com/policies/terms/"))));
        if (account != null) {
            a.d(account.uf());
        }
        new a(activity).e(a.QA());
    }
    
    public static void a(final Context context, final Advertisement advertisement) {
        int n;
        if (advertisement.azc) {
            n = 2131297184;
        }
        else {
            n = 2131297185;
        }
        Toast.makeText(context, n, 0).show();
    }
    
    public static void a(final Context context, final n n, final Bitmap bitmap) {
        if (!n.isConnected()) {
            n.connect();
        }
        final f g = new f().g(bitmap);
        g.y(g(context, (Account)null));
        com.google.android.gms.feedback.a.a(n, g.Mn()).a(new az(n));
    }
    
    public static void a(final Context context, final String s, final String s2, final long n, final int n2) {
        final List<String> b = com.google.android.gm.persistence.b.DD().b(context, true);
        int size;
        if (b != null && b.size() > 0) {
            size = b.size();
        }
        else {
            size = 1;
        }
        final String quantityString = context.getResources().getQuantityString(n2, size);
        final ab ab = new ab(context);
        if (size > 1) {
            final String string = context.getResources().getString(2131297166, new Object[] { s });
            final SpannableString spannableString = new SpannableString((CharSequence)String.format(quantityString, string));
            final int index = spannableString.toString().indexOf(string);
            spannableString.setSpan((Object)new TextAppearanceSpan(context, 2131231210), index, index + string.length(), 0);
            ab.b((CharSequence)spannableString);
            ab.e((CharSequence)spannableString);
        }
        else {
            ab.b(quantityString);
            ab.e((CharSequence)quantityString);
        }
        final int hashCode = Arrays.hashCode(new Object[] { n, s2 });
        final Account x = x(context, s);
        final Folder h = h(context, s, "^^out");
        Intent a;
        if (h == null || s == null) {
            E.f(ay.mW, "Null account or folder.  account: %s folder: %s", x, h);
            a = null;
        }
        else {
            a = ag.a(context, h.azZ.aPj, x);
        }
        final NotificationManager notificationManager = (NotificationManager)context.getSystemService("notification");
        ab.h(17301624);
        ab.a(System.currentTimeMillis());
        ab.c(s2);
        ab.a(PendingIntent.getActivity(context, -1, a, 0));
        ArrayList<Integer> list = ay.aZj.get(s);
        if (list == null) {
            list = new ArrayList<Integer>();
        }
        list.add(hashCode);
        ay.aZj.put(s, list);
        notificationManager.notify(hashCode, ab.build());
    }
    
    public static void a(final Context context, final android.accounts.Account[] array) {
        final ArrayList<String> list = new ArrayList<String>();
        for (int i = 0; i < array.length; ++i) {
            list.add(array[i].name);
        }
        b.DD().a(context, false, list);
    }
    
    private static boolean a(final android.accounts.Account account, final android.accounts.Account[] array) {
        final int length = array.length;
        int n = 0;
        boolean b;
        while (true) {
            b = false;
            if (n >= length) {
                break;
            }
            if (account.equals((Object)array[n])) {
                b = true;
                break;
            }
            ++n;
        }
        return b;
    }
    
    public static boolean a(final Context context, final Account account) {
        boolean b = false;
        if (account != null) {
            final android.accounts.Account[] accountsByType = AccountManager.get(context).getAccountsByType("com.google");
            final String lw = account.lw();
            int n = 0;
            while (true) {
                final int length = accountsByType.length;
                b = false;
                if (n >= length) {
                    break;
                }
                if (lw.equals(accountsByType[n].name)) {
                    b = true;
                    break;
                }
                ++n;
            }
        }
        return b;
    }
    
    private static String aG(final Context context) {
        Label_0027: {
            if (ay.aQK != null) {
                break Label_0027;
            }
            try {
                ay.aQK = String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
                return ay.aQK;
            }
            catch (PackageManager$NameNotFoundException ex) {
                E.f(ay.mW, "Error finding package %s", context.getApplicationInfo().packageName);
                return ay.aQK;
            }
        }
    }
    
    public static com.google.android.gms.f.a aX(final Context context) {
        if (com.google.android.gms.common.f.cf(context) != 0) {
            return null;
        }
        final com.google.android.gms.f.a a = new com.google.android.gms.f.a(context.getApplicationContext(), new aA());
        a.start();
        return a;
    }
    
    public static void aY(final Context context) {
        f(context, Uri.parse(c.a(context.getContentResolver(), "gmail_warm_welcome_learn_more", "https://support.google.com/mail/answer/6078445")));
    }
    
    public static void aZ(final Context context) {
        f(context, Uri.parse(c.a(context.getContentResolver(), "gmail-ad-preference-manager-url", "https://www.google.com/settings/ads/preferences")));
    }
    
    public static int b(final T t) {
        final boolean ex = t.EX();
        int ey = 0;
        if (!ex) {
            if (!t.EW()) {
                return t.EZ();
            }
            ey = t.EY();
        }
        return ey;
    }
    
    public static void ba(final Context context) {
        f(context, y(context, c.a(context.getContentResolver(), "gmail-section-inbox-help-url", "https://support.google.com/mail/?hl=%locale%&p=android_inboxcategories")));
    }
    
    public static void bb(final Context context) {
        f(context, y(context, c.a(context.getContentResolver(), "gmail-manage-accounts-help-url", "https://support.google.com/mail/topic/4390706?hl=%locale%")));
    }
    
    public static void bc(final Context context) {
        f(context, y(context, c.a(context.getContentResolver(), "gmail-always-show-images-help-url", "https://support.google.com/mail/answer/145919?hl=%locale%")));
    }
    
    public static void bd(final Context context) {
        f(context, y(context, c.a(context.getContentResolver(), "gmail-acl-fixer-help-url", "https://support.google.com/mail/?p=androiddrive&hl=%locale%")));
    }
    
    public static void be(final Context context) {
        context.startActivity(new Intent(context, (Class)GmailPreferenceActivity.class));
    }
    
    public static void bf(final Context context) {
        final b dd = b.DD();
        final String bs = dd.bs(context);
        final android.accounts.Account[] accountsByType = AccountManager.get(context).getAccountsByType("com.google");
        if (accountsByType.length > 0 && !bi(context)) {
            final String name = accountsByType[0].name;
            final Intent intent = new Intent();
            intent.setClass(context, (Class)ao.class);
            intent.putExtra("account-name", name);
            context.startService(intent);
        }
        for (int length = accountsByType.length, i = 0; i < length; ++i) {
            if (accountsByType[i].name.equals(bs)) {
                return;
            }
        }
        if (accountsByType.length > 0) {
            dd.z(context, accountsByType[0].name);
        }
    }
    
    public static void bg(final Context context) {
        final boolean bj = bj(context);
        final PackageManager packageManager = context.getPackageManager();
        ComponentName componentName;
        if (bj) {
            componentName = ay.aZe;
        }
        else {
            componentName = ay.aZd;
        }
        ComponentName componentName2;
        if (bj) {
            componentName2 = ay.aZd;
        }
        else {
            componentName2 = ay.aZe;
        }
        packageManager.setComponentEnabledSetting(componentName2, 2, 1);
        packageManager.setComponentEnabledSetting(componentName, 1, 1);
    }
    
    public static void bh(final Context context) {
        context.getPackageManager().setComponentEnabledSetting(ay.aZg, 1, 1);
    }
    
    public static boolean bi(final Context context) {
        final PackageManager packageManager = context.getPackageManager();
        return packageManager.getComponentEnabledSetting(ay.aZe) == 1 || packageManager.getComponentEnabledSetting(ay.aZd) == 1;
    }
    
    public static boolean bj(final Context context) {
        return context.getPackageManager().getComponentEnabledSetting(ay.aZf) == 1;
    }
    
    public static void bk(final Context context) {
        final CookieSyncManager instance = CookieSyncManager.createInstance(context);
        CookieManager.getInstance().removeAllCookie();
        instance.sync();
    }
    
    public static boolean dA(final int n) {
        return n == 82 && "LGE".equalsIgnoreCase(Build.BRAND);
    }
    
    public static void dC(final String s) {
        if (ay.aZc != null) {
            ay.aZc.cancel(false);
        }
        (ay.aZc = new aB(s)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])new Void[0]);
    }
    
    public static String f(final Context context, final String s, final String s2) {
        int n = 1;
        final com.google.android.gm.preference.j j = new com.google.android.gm.preference.j(context, s, s2, b.I(context, s).equals(s2));
        if (!j.to()) {
            return null;
        }
        final boolean tv = j.tv();
        int n2;
        if (!j.tw()) {
            n2 = n;
        }
        else {
            n2 = 0;
        }
        if (TextUtils.isEmpty((CharSequence)j.tu())) {
            n = 0;
        }
        int n3;
        if (n != 0) {
            if (tv && n2 != 0) {
                n3 = 2131297132;
            }
            else if (tv) {
                n3 = 2131297133;
            }
            else if (n2 != 0) {
                n3 = 2131297134;
            }
            else {
                n3 = 2131297135;
            }
        }
        else if (tv && n2 != 0) {
            n3 = 2131297136;
        }
        else if (tv) {
            n3 = 2131297137;
        }
        else if (n2 != 0) {
            n3 = 2131297138;
        }
        else {
            n3 = 2131297139;
        }
        return context.getResources().getString(n3);
    }
    
    private static void f(final Context context, final Uri uri) {
        if (uri == null || TextUtils.isEmpty((CharSequence)uri.toString())) {
            E.g(ay.mW, "invalid url in Utils.openUrl(): %s", uri);
            return;
        }
        final Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.putExtra("com.android.browser.application_id", context.getPackageName());
        intent.addFlags(524288);
        try {
            context.startActivity(intent);
        }
        catch (ActivityNotFoundException ex) {
            E.e(ay.mW, (Throwable)ex, "Cannot open Url in browser", new Object[0]);
        }
    }
    
    public static void f(final Context context, final Account account) {
        final Intent intent = new Intent(context, (Class)GmailPreferenceActivity.class);
        intent.putExtra("extra_account", (Parcelable)account);
        context.startActivity(intent);
    }
    
    public static Intent g(final Context context, final String s, final String s2) {
        return ag.a(context, GmailProvider.u(context, s, s2).azZ.aPj, GmailProvider.g(context, s));
    }
    
    private static Bundle g(final Context context, final Account account) {
        final Bundle bundle = new Bundle();
        final Account[] ax = com.android.mail.utils.a.ax(context);
        final HashSet<String> set = new HashSet<String>();
        for (int length = ax.length, i = 0; i < length; ++i) {
            set.add(com.google.android.gm.c.c.i(context, ax[i]));
        }
        if (set.size() > 0) {
            bundle.putString("all-account-domains", TextUtils.join((CharSequence)"/", (Iterable)set));
        }
        if (account != null) {
            bundle.putString("current-account-domain", com.google.android.gm.c.c.i(context, account));
        }
        return bundle;
    }
    
    public static boolean g(final Context context, final Uri uri) {
        final String a = c.a(context.getContentResolver(), "gmail-ad-youtube-partial-authority", "youtube.com");
        final String a2 = c.a(context.getContentResolver(), "gmail-ad-youtube-path", "/watch");
        final String authority = uri.getAuthority();
        final String path = uri.getPath();
        return authority != null && path != null && authority.endsWith(a) && a2.equals(path);
    }
    
    private static Intent h(final Context context, final Uri uri) {
        if (uri == null || TextUtils.isEmpty((CharSequence)uri.toString())) {
            E.g(ay.mW, "invalid url in Utils.openUrl(): %s", uri);
            return null;
        }
        final Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.putExtra("com.android.browser.application_id", context.getPackageName());
        intent.addFlags(524288);
        return intent;
    }
    
    private static Folder h(final Context context, final String s, final String s2) {
        final Cursor query = context.getContentResolver().query(GmailProvider.O(s, s2), com.android.mail.providers.E.aCv, (String)null, (String[])null, (String)null);
        try {
            final boolean moveToFirst = query.moveToFirst();
            Folder folder = null;
            if (moveToFirst) {
                folder = new Folder(query);
            }
            return folder;
        }
        finally {
            query.close();
        }
    }
    
    public static void h(final Context context, final Account account) {
        final Intent intent = new Intent(context, (Class)GmailPreferenceActivity.class);
        intent.putExtra(":android:show_fragment", InboxSectionsPreferenceFragment.class.getName());
        final Bundle bundle = new Bundle(1);
        bundle.putString("account", account.lw());
        intent.putExtra(":android:show_fragment_args", bundle);
        context.startActivity(intent);
    }
    
    public static Folder i(final Context context, final String s, final String s2) {
        return a(context, s, s2, false);
    }
    
    public static boolean w(final Context context, final String s) {
        return a(new android.accounts.Account(s, "com.google"), AccountManager.get(context).getAccountsByType("com.google"));
    }
    
    public static Account x(final Context context, final String s) {
        synchronized (ay.aZi) {
            Account j = ay.aZi.get(s);
            if (j != null) {
                return j;
            }
            final Cursor query = context.getContentResolver().query(GmailProvider.en(s), com.android.mail.providers.E.aCr, (String)null, (String[])null, (String)null);
            try {
                if (query.moveToFirst()) {
                    Account.ue();
                    j = com.android.mail.providers.c.j(query);
                    ay.aZi.put(s, j);
                }
                return j;
            }
            finally {
                query.close();
            }
        }
    }
    
    private static Uri y(final Context context, String replace) {
        if (replace.contains("%locale%")) {
            final Locale default1 = Locale.getDefault();
            replace = replace.replace("%locale%", default1.getLanguage() + "_" + default1.getCountry().toLowerCase());
        }
        Uri$Builder uri$Builder = Uri.parse(replace).buildUpon();
        final String ag = aG(context);
        if (ag != null) {
            uri$Builder = uri$Builder.appendQueryParameter("version", ag);
        }
        int n;
        if (ay.aZh.contains(context.getResources().getConfiguration().mcc) || bj(context)) {
            n = 1;
        }
        else {
            n = 0;
        }
        String s;
        if (n != 0) {
            s = "1";
        }
        else {
            s = "0";
        }
        return uri$Builder.appendQueryParameter("googleMail", s).build();
    }
}
