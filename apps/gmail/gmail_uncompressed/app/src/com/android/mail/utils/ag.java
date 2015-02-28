package com.android.mail.utils;

import com.android.mail.f.*;
import android.text.style.*;
import java.util.*;
import com.android.emailcommon.mail.*;
import android.text.*;
import android.os.*;
import android.database.*;
import android.webkit.*;
import android.annotation.*;
import android.content.pm.*;
import android.content.*;
import android.content.res.*;
import android.net.*;
import com.google.android.mail.common.html.parser.*;
import com.android.mail.ui.*;
import com.android.mail.compose.*;
import org.json.*;
import com.android.mail.providers.*;
import android.app.*;
import java.io.*;
import android.graphics.*;
import android.view.*;

public final class ag
{
    public static final Character aQJ;
    private static String aQK;
    public static final a aQL;
    private static final Object aQM;
    private static ah aQN;
    private static int aQO;
    private static String aQP;
    private static String aQQ;
    private static String aQR;
    private static int aQS;
    private static final String mW;
    
    static {
        aQJ = '\n';
        ag.aQK = null;
        mW = D.AU();
        aQL = new a((byte)0).bA("ConvLoadTimer");
        aQM = new Object();
        ag.aQO = -1;
        ag.aQS = -1;
    }
    
    public static boolean Be() {
        return Build$VERSION.SDK_INT >= 16;
    }
    
    public static boolean Bf() {
        return Build$VERSION.SDK_INT >= 17;
    }
    
    public static boolean Bg() {
        return Build$VERSION.SDK_INT >= 19;
    }
    
    public static boolean Bh() {
        return Build$VERSION.SDK_INT >= 21;
    }
    
    public static void Bi() {
        if (Build$VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }
    
    public static Uri C(final Uri uri) {
        final String scheme = uri.getScheme();
        if (scheme != null) {
            final String lowerCase = scheme.toLowerCase(Locale.US);
            if (!scheme.equals(lowerCase)) {
                return uri.buildUpon().scheme(lowerCase).build();
            }
        }
        return uri;
    }
    
    public static boolean D(final Uri uri) {
        return uri == null || Uri.EMPTY.equals((Object)uri);
    }
    
    public static int a(final View view, final ViewGroup viewGroup) {
        final ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        int n;
        if (layoutParams instanceof ViewGroup$MarginLayoutParams) {
            final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams)layoutParams;
            n = viewGroup$MarginLayoutParams.leftMargin + viewGroup$MarginLayoutParams.rightMargin;
        }
        else {
            n = 0;
        }
        view.measure(ViewGroup.getChildMeasureSpec(View$MeasureSpec.makeMeasureSpec(viewGroup.getWidth(), 1073741824), n + (viewGroup.getPaddingLeft() + viewGroup.getPaddingRight()), -1), View$MeasureSpec.makeMeasureSpec(0, 0));
        return view.getMeasuredHeight();
    }
    
    public static long a(final long n, final long[] array) {
        for (final long n2 : array) {
            if (n < n2) {
                return n2;
            }
        }
        return -1L;
    }
    
    public static Intent a(final Context context, final Uri uri, final Account account) {
        if (uri == null || account == null) {
            E.g(ag.mW, "Utils.createViewFolderIntent(%s,%s): Bad input", uri, account);
            return null;
        }
        final Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(268484608);
        intent.setDataAndType(c(context, uri), account.mimeType);
        intent.putExtra("account", account.ud());
        intent.putExtra("folderUri", (Parcelable)uri);
        return intent;
    }
    
    public static Intent a(final Context context, final Conversation conversation, final Uri uri, final Account account) {
        final Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(268484608);
        intent.setDataAndType(c(context, conversation.uri).buildUpon().appendQueryParameter("folderUri", uri.toString()).build(), account.mimeType);
        intent.putExtra("account", account.ud());
        intent.putExtra("folderUri", (Parcelable)uri);
        intent.putExtra("conversationUri", (Parcelable)conversation);
        return intent;
    }
    
    public static Intent a(final Intent intent, final Uri uri, final String s) {
        return intent.setDataAndType(C(uri), normalizeMimeType(s));
    }
    
    public static Spanned a(final Context context, final String s, final String s2, final int n) {
        final int index = s.indexOf(s2);
        final SpannableString spannableString = new SpannableString((CharSequence)s);
        if (index >= 0) {
            spannableString.setSpan((Object)new TextAppearanceSpan(context, n), index, index + s2.length(), 0);
        }
        return (Spanned)spannableString;
    }
    
    public static Address a(final Map<String, Address> map, final String s) {
        synchronized (map) {
            Address ah = map.get(s);
            if (ah == null) {
                ah = Address.ah(s);
                if (ah != null) {
                    map.put(s, ah);
                }
            }
            return ah;
        }
    }
    
    public static String a(final Context context, final int n, final int n2) {
        return String.format(context.getResources().getQuantityText(n, n2).toString(), n2);
    }
    
    public static String a(final String s, final HtmlParser htmlParser, final v v) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            return "";
        }
        return b(s, htmlParser, v).Wm();
    }
    
    public static void a(final Activity activity, final Account account) {
        if (activity != null && account != null) {
            final Uri ayq = account.ayq;
            if (activity != null && !D(ayq)) {
                final Bundle bundle = new Bundle(2);
                bundle.putBoolean("reporting_problem", true);
                final Bitmap g = g(activity);
                if (g != null) {
                    bundle.putParcelable("screen_shot", (Parcelable)g);
                }
                a((Context)activity, ayq, bundle);
            }
        }
    }
    
    private static void a(final Context context, final Uri uri, final Bundle bundle) {
        if (uri == null || TextUtils.isEmpty((CharSequence)uri.toString())) {
            E.g(ag.mW, "invalid url in Utils.openUrl(): %s", uri);
            return;
        }
        final Intent intent = new Intent("android.intent.action.VIEW", uri);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.putExtra("com.android.browser.application_id", context.getPackageName());
        intent.addFlags(524288);
        context.startActivity(intent);
    }
    
    public static void a(final Cursor cursor, final boolean b, final boolean b2) {
        new ai(cursor, b, b2).execute((Object[])new Void[0]);
    }
    
    public static void a(final Menu menu, final int n, final boolean b) {
        a(menu.findItem(n), b);
    }
    
    public static void a(final MenuItem menuItem, final boolean b) {
        if (menuItem == null) {
            return;
        }
        menuItem.setVisible(b);
        menuItem.setEnabled(b);
    }
    
    public static void a(final WebView webView) {
        final WebSettings settings = webView.getSettings();
        settings.setSavePassword(false);
        settings.setSaveFormData(false);
        settings.setJavaScriptEnabled(false);
        settings.setSupportZoom(false);
    }
    
    public static void a(final WebView webView, final Context context) {
        final WebSettings settings = webView.getSettings();
        settings.setUserAgentString(context.getResources().getString(2131296742, new Object[] { settings.getUserAgentString(), aG(context) }));
    }
    
    private static boolean a(final Cursor cursor, final Bundle bundle, final String s) {
        return "ok".equals(cursor.respond(bundle).getString(s, "failed"));
    }
    
    @TargetApi(19)
    public static boolean aF(final Context context) {
        if (Bg()) {
            final ActivityManager activityManager = (ActivityManager)context.getSystemService("activity");
            return activityManager != null && activityManager.isLowRamDevice();
        }
        return false;
    }
    
    private static String aG(final Context context) {
        Label_0027: {
            if (ag.aQK != null) {
                break Label_0027;
            }
            try {
                ag.aQK = String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
                return ag.aQK;
            }
            catch (PackageManager$NameNotFoundException ex) {
                E.f(ag.mW, "Error finding package %s", context.getApplicationInfo().packageName);
                return ag.aQK;
            }
        }
    }
    
    public static void aG(final View view) {
        if (view != null && view.isHardwareAccelerated() && view.getLayerType() != 2) {
            view.setLayerType(2, (Paint)null);
            view.buildLayer();
        }
    }
    
    private static void aH(final Context context) {
        synchronized (ag.aQM) {
            if (ag.aQP == null) {
                final Resources resources = context.getResources();
                ag.aQO = resources.getInteger(2131427359);
                ag.aQP = resources.getString(2131296563);
                ag.aQQ = resources.getString(2131296565);
                ag.aQR = resources.getString(2131296564);
                ag.aQS = resources.getColor(2131361929);
                if (ag.aQN == null) {
                    ag.aQN = new ah((byte)0);
                    context.getApplicationContext().registerComponentCallbacks((ComponentCallbacks)ag.aQN);
                }
            }
        }
    }
    
    private static int aI(final Context context) {
        synchronized (ag.aQM) {
            aH(context);
            return ag.aQO;
        }
    }
    
    private static String aJ(final Context context) {
        synchronized (ag.aQM) {
            aH(context);
            return ag.aQP;
        }
    }
    
    private static String aK(final Context context) {
        synchronized (ag.aQM) {
            aH(context);
            return ag.aQQ;
        }
    }
    
    private static String aL(final Context context) {
        synchronized (ag.aQM) {
            aH(context);
            return ag.aQR;
        }
    }
    
    public static int aM(final Context context) {
        synchronized (ag.aQM) {
            aH(context);
            return ag.aQS;
        }
    }
    
    public static boolean aN(final Context context) {
        final NetworkInfo activeNetworkInfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
    
    private static HtmlTree b(final String s, final HtmlParser htmlParser, final v v) {
        htmlParser.gN(s).a(v);
        return v.Wv();
    }
    
    public static void b(final Context context, final Account account, final String s) {
        String string;
        if (account.ayp != null) {
            string = account.ayp.toString();
        }
        else {
            string = null;
        }
        if (TextUtils.isEmpty((CharSequence)string)) {
            E.f(ag.mW, "unable to show help for account: %s", account);
            return;
        }
        final Uri ayp = account.ayp;
        CharSequence string2;
        if (ayp == null) {
            string2 = null;
        }
        else {
            string2 = ayp.toString();
        }
        if (TextUtils.isEmpty(string2)) {
            E.f(ag.mW, "unable to show help for help URI: %s", ayp);
            return;
        }
        final Uri a = s.a(context, ayp, s);
        if (context.getResources().getBoolean(2131623948)) {
            a(context, a, (Bundle)null);
            return;
        }
        final Intent intent = new Intent(context, (Class)cd.class);
        intent.putExtra("help.url", (Parcelable)a);
        context.startActivity(intent);
    }
    
    public static boolean b(final Context context, final Uri uri, final Account account) {
        if (TextUtils.equals((CharSequence)"mailto", (CharSequence)C(uri).getScheme())) {
            g.a(context, account, uri);
            return true;
        }
        return false;
    }
    
    public static boolean b(final Resources resources) {
        return resources.getBoolean(2131623943);
    }
    
    public static Uri bO(final String s) {
        if (TextUtils.isEmpty((CharSequence)s) || s == JSONObject.NULL) {
            return Uri.EMPTY;
        }
        return Uri.parse(s);
    }
    
    public static Uri c(final Context context, final Uri uri) {
        return uri.buildUpon().appendQueryParameter("appVersion", aG(context)).build();
    }
    
    public static boolean c(final Cursor cursor, final int n) {
        final Bundle bundle = new Bundle();
        bundle.putInt("uiPositionChange", n);
        return a(cursor, bundle, "uiPositionChange");
    }
    
    public static String cF(final String s) {
        final int length = s.length();
        if (length < 7) {
            return s;
        }
        final int min = Math.min(7, length);
        final int lastIndex = s.lastIndexOf(".");
        String string = "\u2026";
        if (lastIndex >= 0 && length - lastIndex <= 5) {
            string += s.substring(lastIndex + 1);
        }
        int n = min - string.length();
        if (n < 0) {
            n = 0;
        }
        return s.substring(0, n) + string;
    }
    
    public static String cG(final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            return "";
        }
        return b(s, new HtmlParser(), new v()).Wm();
    }
    
    public static HtmlTree cH(final String s) {
        return b(s, new HtmlParser(), new v());
    }
    
    public static String cI(final String s) {
        int lastIndex;
        if (!TextUtils.isEmpty((CharSequence)s)) {
            lastIndex = s.lastIndexOf(46);
        }
        else {
            lastIndex = -1;
        }
        String substring = null;
        if (lastIndex >= 0) {
            final int n = s.length() - lastIndex;
            substring = null;
            if (n <= 5) {
                substring = s.substring(lastIndex);
            }
        }
        return substring;
    }
    
    public static void cJ(final String s) {
        if (Build$VERSION.SDK_INT >= 18) {
            Trace.beginSection(s);
        }
    }
    
    public static String cK(final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            return s;
        }
        return s.toLowerCase(Locale.US);
    }
    
    public static Folder d(final Context context, final Uri uri) {
        final Cursor query = context.getContentResolver().query(uri.buildUpon().appendQueryParameter("allowHiddenFolders", Boolean.toString(true)).build(), com.android.mail.providers.E.aCv, (String)null, (String[])null, (String)null);
        if (query == null) {
            return null;
        }
        try {
            if (query.moveToFirst()) {
                return new Folder(query);
            }
            return null;
        }
        finally {
            query.close();
        }
    }
    
    public static String d(final Fragment fragment) {
        final StringWriter stringWriter = new StringWriter();
        fragment.dump("", new FileDescriptor(), new PrintWriter(stringWriter), new String[0]);
        return stringWriter.toString();
    }
    
    public static int ds(final int n) {
        return 0xFFFFFF & n;
    }
    
    public static void e(final Context context, final Account account) {
        if (account == null) {
            E.f(ag.mW, "Invalid attempt to show setting screen with null account", new Object[0]);
            return;
        }
        final Intent intent = new Intent("android.intent.action.EDIT", account.ayo);
        intent.setPackage(context.getPackageName());
        intent.addFlags(524288);
        context.startActivity(intent);
    }
    
    public static void f(final Context context, final Account account) {
        if (account == null) {
            E.f(ag.mW, "Invalid attempt to show setting screen with null account", new Object[0]);
            return;
        }
        final Intent intent = new Intent("android.intent.action.EDIT", c(context, account.ayo));
        intent.setPackage(context.getPackageName());
        intent.putExtra("extra_account", (Parcelable)account);
        intent.addFlags(524288);
        context.startActivity(intent);
    }
    
    private static Bitmap g(final Activity activity) {
        final Window window = activity.getWindow();
        Label_0126: {
            if (window == null) {
                break Label_0126;
            }
            View decorView = window.getDecorView();
        Label_0023_Outer:
            while (true) {
                Label_0131: {
                    if (decorView == null) {
                        break Label_0131;
                    }
                    View rootView = decorView.getRootView();
                    while (true) {
                        Bitmap scaledBitmap = null;
                        if (rootView == null) {
                            return scaledBitmap;
                        }
                        rootView.setDrawingCacheEnabled(true);
                        final Bitmap drawingCache = rootView.getDrawingCache();
                        scaledBitmap = null;
                        if (drawingCache == null) {
                            return scaledBitmap;
                        }
                        try {
                            final Bitmap copy = drawingCache.copy(Bitmap$Config.RGB_565, false);
                            final double n = copy.getHeight();
                            final double n2 = copy.getWidth();
                            final double min = Math.min(600.0 / n2, 600.0 / n);
                            scaledBitmap = Bitmap.createScaledBitmap(copy, (int)Math.round(n2 * min), (int)Math.round(n * min), true);
                            return scaledBitmap;
                            rootView = null;
                            continue;
                            decorView = null;
                            continue Label_0023_Outer;
                        }
                        catch (OutOfMemoryError outOfMemoryError) {
                            E.e(ag.mW, outOfMemoryError, "OOME when attempting to scale screenshot", new Object[0]);
                            return null;
                        }
                        break;
                    }
                }
                break;
            }
        }
    }
    
    public static Object j(String replace, final boolean b) {
        if (!TextUtils.isEmpty((CharSequence)replace)) {
            if (b) {
                replace = replace.replace("\"\"", "");
            }
            return TextUtils.htmlEncode(replace);
        }
        return "";
    }
    
    public static String l(final Context context, final int n) {
        final int ai = aI(context);
        if (n > ai) {
            return String.format(aJ(context), ai);
        }
        if (n <= 0) {
            return "";
        }
        return String.format("%d", n);
    }
    
    public static String m(final Context context, final int n) {
        final int ai = aI(context);
        if (n > ai) {
            return String.format(aL(context), ai);
        }
        if (n <= 0) {
            return "";
        }
        return String.format(aK(context), n);
    }
    
    public static CharSequence n(final Context context, final int n) {
        final String[] stringArray = context.getResources().getStringArray(2131689475);
        final int n2 = n & 0xF;
        if (n2 >= stringArray.length) {
            return "";
        }
        return stringArray[n2];
    }
    
    public static String normalizeMimeType(final String s) {
        String lowerCase;
        if (s == null) {
            lowerCase = null;
        }
        else {
            lowerCase = s.trim().toLowerCase(Locale.US);
            final int index = lowerCase.indexOf(59);
            if (index != -1) {
                return lowerCase.substring(0, index);
            }
        }
        return lowerCase;
    }
    
    public static int t(final Folder folder) {
        if (folder == null || folder.cy(524288)) {
            return 0;
        }
        if (folder.vc()) {
            return folder.aAg;
        }
        return folder.aAf;
    }
    
    public static Intent x(final Account account) {
        if (account == null) {
            E.g(ag.mW, "Utils.createViewInboxIntent(%s): Bad input", account);
            return null;
        }
        final Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(268484608);
        intent.setDataAndType(account.ayw.aBX, account.mimeType);
        intent.putExtra("account", account.ud());
        return intent;
    }
}
