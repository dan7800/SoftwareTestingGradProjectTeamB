package com.android.email.provider;

import java.util.regex.*;
import android.appwidget.*;
import android.text.*;
import android.accounts.*;
import com.android.email.service.*;
import android.content.pm.*;
import com.android.emailcommon.service.*;
import com.android.emailcommon.mail.*;
import com.android.mail.utils.*;
import com.android.mail.providers.*;
import android.net.*;
import android.database.*;
import com.google.common.collect.*;
import com.android.email.activity.setup.*;
import com.android.email.*;
import com.android.emailcommon.b.*;
import java.io.*;
import com.android.emailcommon.provider.*;
import android.util.*;
import android.database.sqlite.*;
import android.content.res.*;
import android.content.*;
import android.os.*;
import java.util.*;

public class EmailProvider extends ContentProvider implements SharedPreferences$OnSharedPreferenceChangeListener
{
    private static final String[] Ry;
    private static Uri SA;
    private static Uri SB;
    private static Uri SC;
    private static Uri SD;
    private static Uri SE;
    private static Uri SF;
    private static Uri SG;
    private static Uri SH;
    private static final String SI;
    private static final String SJ;
    private static final String SK;
    private static final String SO;
    private static final int[] SP;
    private static final String SQ;
    private static final String SR;
    private static ProjectionMap SS;
    private static ProjectionMap ST;
    private static final String SU;
    private static ProjectionMap SV;
    private static ProjectionMap SW;
    private static ProjectionMap SX;
    private static ProjectionMap SY;
    private static final Pattern SZ;
    public static String Si;
    protected static String Sj;
    private static final String[] Sk;
    private static final SparseArray<String> Sl;
    private static final UriMatcher Sm;
    private static final Object Sn;
    private static final ContentValues So;
    private static final String[] Sr;
    public static Uri Ss;
    public static Uri St;
    private static Uri Su;
    private static Uri Sz;
    private static final String TAG;
    private static final Uri Ta;
    private static final Uri Tb;
    private static final String Tc;
    private static final String[] Td;
    private static final String[] Tg;
    private final ThreadLocal<Set<Uri>> SL;
    private final t SM;
    private t SN;
    private int Sp;
    private final ArrayList<ContentProviderOperation> Sq;
    private SQLiteDatabase Sv;
    private SQLiteDatabase Sw;
    private Handler Sx;
    private final Set<v> Sy;
    @Deprecated
    private Handler Te;
    private SearchParams Tf;
    private int[] Th;
    private final ArrayList<Long> Ti;
    private AppWidgetManager Tj;
    private ComponentName Tk;
    
    static {
        TAG = D.AU();
        EmailProvider.Sj = "uirefresh";
        Sk = new String[] { "_id", "mailboxKey" };
        final SparseArray sl = new SparseArray(11);
        sl.put(0, (Object)"Account");
        sl.put(1, (Object)"Mailbox");
        sl.put(2, (Object)"Message");
        sl.put(3, (Object)"Attachment");
        sl.put(4, (Object)"HostAuth");
        sl.put(5, (Object)"Message_Updates");
        sl.put(6, (Object)"Message_Deletes");
        sl.put(7, (Object)"Policy");
        sl.put(8, (Object)"QuickResponse");
        sl.put(9, (Object)null);
        sl.put(10, (Object)"Body");
        sl.put(11, (Object)"Credential");
        Sl = sl;
        Sm = new UriMatcher(-1);
        Sn = new Object();
        So = new ContentValues();
        Ry = new String[] { "mimeType" };
        Sr = new String[] { "_id", "fileName", "size", "contentUri" };
        SI = ") values (%s, (select syncServerId from Message where _id=%s),(select accountKey from Message where _id=%s)," + n.ZH + ",";
        SJ = "insert into %s (messageKey,messageServerId,accountKey,status,srcFolderKey,dstFolderKey,srcFolderServerId,dstFolderServerId" + EmailProvider.SI + "(select mailboxKey from Message" + " where _id=%s),%d,(select serverId" + " from Mailbox where _id=(select mailboxKey" + " from Message where _id=%s)),(select " + "serverId from Mailbox where _id=%d))";
        SK = "insert into %s (messageKey,messageServerId,accountKey,status,oldFlagRead,newFlagRead,oldFlagFavorite,newFlagFavorite" + EmailProvider.SI + "(select flagRead from Message" + " where _id=%s),%d,(select flagFavorite" + " from Message where _id=%s),%d)";
        SO = Integer.toString(0);
        SP = new int[] { -9326937, -10348263, -15186385, -4223406, -16769159, -5722174, -9739068, -9206951, -6467420 };
        SQ = "@CASE (accountKey - 1) % " + EmailProvider.SP.length + " WHEN 0 THEN " + EmailProvider.SP[0] + " WHEN 1 THEN " + EmailProvider.SP[1] + " WHEN 2 THEN " + EmailProvider.SP[2] + " WHEN 3 THEN " + EmailProvider.SP[3] + " WHEN 4 THEN " + EmailProvider.SP[4] + " WHEN 5 THEN " + EmailProvider.SP[5] + " WHEN 6 THEN " + EmailProvider.SP[6] + " WHEN 7 THEN " + EmailProvider.SP[7] + " WHEN 8 THEN " + EmailProvider.SP[8] + " END";
        SR = "@CASE (_id - 1) % " + EmailProvider.SP.length + " WHEN 0 THEN " + EmailProvider.SP[0] + " WHEN 1 THEN " + EmailProvider.SP[1] + " WHEN 2 THEN " + EmailProvider.SP[2] + " WHEN 3 THEN " + EmailProvider.SP[3] + " WHEN 4 THEN " + EmailProvider.SP[4] + " WHEN 5 THEN " + EmailProvider.SP[5] + " WHEN 6 THEN " + EmailProvider.SP[6] + " WHEN 7 THEN " + EmailProvider.SP[7] + " WHEN 8 THEN " + EmailProvider.SP[8] + " END";
        SU = "CASE type WHEN 0 THEN 2 WHEN 3 THEN 4 WHEN 4 THEN 8 WHEN 5 THEN 16 WHEN 6 THEN 32 WHEN 7 THEN 64 WHEN 9 THEN 128 WHEN 10 THEN 2048 WHEN 8 THEN " + bc(8) + " ELSE 1 END";
        SZ = Pattern.compile("<(?i)img\\s+");
        Ta = Uri.parse("content://ui.email.android.com");
        Tb = Uri.parse("content://ui.email2.android.com");
        Tc = Long.toString(268435456L);
        Td = new String[] { "mailboxKey", "accountKey" };
        Tg = new String[] { "emailAddress" };
    }
    
    public EmailProvider() {
        this.Sp = -1;
        this.Sq = new ArrayList<ContentProviderOperation>();
        this.Sy = new HashSet<v>();
        this.SL = new ThreadLocal<Set<Uri>>();
        this.SM = new m(this);
        this.SN = this.SM;
        this.Th = new int[0];
        this.Ti = new ArrayList<Long>();
    }
    
    private static void D(final SQLiteDatabase sqLiteDatabase) {
        E.c(EmailProvider.TAG, "Fixing parent keys", new Object[0]);
        sqLiteDatabase.execSQL("update Mailbox set parentKey=(select _id from Mailbox as b where Mailbox.parentServerId=b.serverId and Mailbox.parentServerId not null and Mailbox.accountKey=b.accountKey)");
        sqLiteDatabase.execSQL("update Mailbox set parentKey=-1 where parentKey=0 or parentKey is null");
    }
    
    private SQLiteDatabase G(final Context context) {
        while (true) {
            while (true) {
                final SQLiteDatabase sv;
                synchronized (EmailProvider.Sn) {
                    if (this.Sv != null) {
                        return this.Sv;
                    }
                    this.ke();
                    this.Sv = new h(context, "EmailProvider.db").getWritableDatabase();
                    this.Sw = new g(context, "EmailProviderBody.db").getWritableDatabase();
                    if (this.Sw != null) {
                        this.Sv.execSQL("attach \"" + this.Sw.getPath() + "\" as BodyDatabase");
                    }
                    sv = this.Sv;
                    if (b.DEBUG) {
                        E.e(EmailProvider.TAG, "restoreIfNeeded...", new Object[0]);
                    }
                    if (!TextUtils.isEmpty((CharSequence)r.t(context))) {
                        f(context, sv);
                        r.u(context);
                        E.e(EmailProvider.TAG, "Created new EmailProvider backup database", new Object[0]);
                        c(this.Sv, "Message_Updates");
                        c(this.Sv, "Message_Deletes");
                        a(this.Sv, "Mailbox", "accountKey", "_id", "Account");
                        a(this.Sv, "Message", "accountKey", "_id", "Account");
                        a(this.Sv, "Policy", "_id", "policyKey", "Account");
                        D(this.Sv);
                        this.Sv.execSQL("update Mailbox set uiSyncStatus=0");
                        return this.Sv;
                    }
                }
                if (context.getDatabasePath("EmailProviderBackup.db").exists()) {
                    f(context, sv);
                    context.deleteDatabase("EmailProviderBackup.db");
                    E.e(EmailProvider.TAG, "Migrated from backup database to account manager", new Object[0]);
                    continue;
                }
                if (DatabaseUtils.longForQuery(sv, "SELECT EXISTS (SELECT ? FROM Account )", EmailContent.XT) <= 0L) {
                    H(context);
                    continue;
                }
                if (b.DEBUG) {
                    E.e(EmailProvider.TAG, "restoreIfNeeded: Account exists.", new Object[0]);
                    continue;
                }
                continue;
            }
        }
    }
    
    private static int H(final Context context) {
        final Collection<o> p = com.android.email.service.n.P(context);
        final HashSet<String> set = new HashSet<String>(3);
        for (final o o : p) {
            if (!TextUtils.isEmpty((CharSequence)o.accountType)) {
                set.add(o.accountType);
            }
        }
        final ArrayList<Account> list = new ArrayList<Account>();
        final AccountManager value = AccountManager.get(context);
        final Iterator<Object> iterator2 = set.iterator();
        while (iterator2.hasNext()) {
            list.addAll((Collection<?>)Arrays.asList(value.getAccountsByType((String)iterator2.next())));
        }
        final Iterator<Object> iterator3 = list.iterator();
        int n = 0;
        while (iterator3.hasNext()) {
            final Account account = iterator3.next();
            final String userData = value.getUserData(account, "accountJson");
            if (!TextUtils.isEmpty((CharSequence)userData)) {
                final com.android.emailcommon.provider.Account au = com.android.emailcommon.provider.Account.au(userData);
                int n2;
                if (au != null) {
                    N.e(context, au);
                    final Bundle bundle = new Bundle(3);
                    bundle.putBoolean("force", true);
                    bundle.putBoolean("do_not_retry", true);
                    bundle.putBoolean("expedited", true);
                    ContentResolver.requestSync(account, EmailContent.AUTHORITY, bundle);
                    n2 = n + 1;
                }
                else {
                    n2 = n;
                }
                n = n2;
            }
        }
        return n;
    }
    
    public static void I(final Context context) {
        if (context.getResources().getBoolean(2131623955)) {
            com.android.emailcommon.b.g.a(new com.android.email.provider.r(context));
        }
    }
    
    public static boolean J(final Context context) {
        EmailContent.g(context);
        while (true) {
            try {
                final Cursor query = context.getContentResolver().query(com.android.emailcommon.provider.Account.CONTENT_URI, com.android.emailcommon.provider.Account.XT, (String)null, (String[])null, (String)null);
                while (true) {
                    if (query != null) {
                        try {
                            boolean b;
                            if (query.getCount() > 0) {
                                b = true;
                            }
                            else {
                                b = false;
                            }
                            final PackageManager packageManager = context.getPackageManager();
                            final ComponentName componentName = new ComponentName(context, (Class)AttachmentService.class);
                            int n;
                            if (b) {
                                n = 1;
                            }
                            else {
                                n = 2;
                            }
                            packageManager.setComponentEnabledSetting(componentName, n, 1);
                            final Intent intent = new Intent(context, (Class)AttachmentService.class);
                            if (b) {
                                context.startService(intent);
                            }
                            else {
                                context.stopService(intent);
                            }
                            final com.android.email.m r = com.android.email.o.r(context);
                            if (r != null) {
                                r.gG();
                            }
                            if (query != null) {
                                query.close();
                            }
                            return b;
                        }
                        finally {}
                        if (query != null) {
                            query.close();
                        }
                        throw;
                    }
                    continue;
                }
            }
            finally {
                final Cursor query = null;
                continue;
            }
            break;
        }
    }
    
    private Uri[] Q(final String s) {
        int n = 0;
        Uri[] array = new Uri[0];
        final SQLiteDatabase g = this.G(this.getContext());
        if (s.equals(EmailProvider.Tc)) {
            return array;
        }
        final StringBuilder a = a(kh(), new String[] { "_id", "type" });
        a.append(" FROM Mailbox WHERE accountKey").append(" = ").append(s).append(" AND type IN (5").append(", 3, 9").append(")");
        E.c(EmailProvider.TAG, "defaultRecentFolders: Query is %s", a);
        final Cursor rawQuery = g.rawQuery(a.toString(), (String[])null);
        if (rawQuery == null) {
            return array;
        }
        try {
            if (rawQuery.getCount() <= 0 || !rawQuery.moveToFirst()) {
                return array;
            }
            array = new Uri[rawQuery.getCount()];
            do {
                final long long1 = rawQuery.getLong(0);
                array[n] = a("uifolder", long1);
                E.c(EmailProvider.TAG, "Default recent folder: %d, with uri %s", long1, array[n]);
                ++n;
            } while (rawQuery.moveToNext());
            return array;
        }
        finally {
            if (rawQuery != null) {
                rawQuery.close();
            }
        }
    }
    
    private int a(final Context context, final Uri uri, final ContentValues contentValues) {
        if (contentValues.containsKey("seen") && contentValues.getAsInteger("seen") == 1) {
            final String lastPathSegment = uri.getLastPathSegment();
            final SQLiteDatabase g = this.G(context);
            final ContentValues contentValues2 = new ContentValues(1);
            contentValues2.put("flagSeen", 1);
            final int update = g.update("Message", contentValues2, "mailboxKey = ?", new String[] { lastPathSegment });
            if (contentValues.size() == 1) {
                return update;
            }
        }
        final Uri a = a(uri, Mailbox.CONTENT_URI, true);
        if (a == null) {
            return 0;
        }
        final ContentValues contentValues3 = new ContentValues();
        for (final String s : contentValues.keySet()) {
            if (s.equals("lastTouchedTime")) {
                contentValues3.put("lastTouchedTime", contentValues.getAsLong(s));
            }
        }
        return this.update(a, contentValues3, null, null);
    }
    
    private int a(final Context context, final String s, final Uri[] array) {
        int n = 0;
        final long currentTimeMillis = System.currentTimeMillis();
        final ContentResolver contentResolver = context.getContentResolver();
        final ContentValues contentValues = new ContentValues(1);
        for (final Uri uri : array) {
            contentValues.put("lastTouchedTime", currentTimeMillis);
            E.c(EmailProvider.TAG, "updateStamp: %s updated", uri);
            n += contentResolver.update(uri, contentValues, (String)null, (String[])null);
        }
        final Uri build = EmailProvider.SH.buildUpon().appendPath(s).build();
        E.c(EmailProvider.TAG, "updateTimestamp: Notifying on %s", build);
        this.b(build, null);
        return n;
    }
    
    private int a(final Uri uri, final int n, final int n2) {
        final Context context = this.getContext();
        final Cursor query = this.query(a("uiaccount", Long.valueOf(Long.parseLong(uri.getLastPathSegment()))), com.android.mail.providers.E.aCr, null, null, null);
        try {
            if (query.moveToFirst()) {
                com.android.mail.providers.Account.ue();
                final com.android.mail.providers.Account j = c.j(query);
                final Intent intent = new Intent(context, (Class)w.class);
                intent.putExtra("picker_ui_account", (Parcelable)j);
                intent.putExtra("picker_mailbox_type", n);
                intent.putExtra("picker_header_id", n2);
                intent.addFlags(268435456);
                context.startActivity(intent);
                return 1;
            }
            return 0;
        }
        finally {
            query.close();
        }
    }
    
    private int a(final Uri uri, final ContentValues contentValues) {
        final int size = contentValues.size();
        final String s = uri.getPathSegments().get(1);
        final Uri[] array = new Uri[size];
        final Context context = this.getContext();
        final Iterator<String> iterator = contentValues.keySet().iterator();
        while (iterator.hasNext()) {
            array[0] = Uri.parse((String)iterator.next());
        }
        return this.a(context, s, array);
    }
    
    private int a(final Uri uri, final ContentValues contentValues, final boolean b) {
        final Context context = this.getContext();
        final com.android.emailcommon.provider.g b2 = this.b(uri);
        if (b2 == null) {
            return 0;
        }
        final Mailbox v = Mailbox.v(context, b2.YR);
        if (v == null) {
            return 0;
        }
        Uri uri2 = null;
        Label_0084: {
            if (!b) {
                int n;
                if (v.Zr == 3 || v.Zr == 4 || v.Zr == 8) {
                    n = 0;
                }
                else {
                    final o l = com.android.email.service.n.l(context, com.android.emailcommon.provider.Account.m(context, v.Lq));
                    if (l != null && l.UR) {
                        n = 1;
                    }
                    else {
                        n = 0;
                    }
                }
                if (n == 0) {
                    uri2 = com.android.emailcommon.provider.g.CONTENT_URI;
                    break Label_0084;
                }
            }
            uri2 = com.android.emailcommon.provider.g.YD;
        }
        final Uri a = a(uri, uri2, true);
        if (a == null) {
            return 0;
        }
        if (contentValues.containsKey("respond")) {
            final a i = com.android.email.service.n.i(context, v.Lq);
            try {
                i.e(b2.Ln, contentValues.getAsInteger("respond"));
                this.c(uri);
                s.h(context, 2131296977);
                this.r(v.Ln);
                return 1;
            }
            catch (RemoteException ex) {
                E.c(EmailProvider.TAG, "Remote exception while sending meeting response", new Object[0]);
                return 1;
            }
        }
        final String asString = contentValues.getAsString("operation");
        if ("discard_drafts".equals(asString) || "move_failed_to_drafts".equals(asString)) {
            this.c(uri);
            return 1;
        }
        final ContentValues contentValues2 = new ContentValues();
        final ContentValues a2 = this.a(b2, contentValues);
        for (final String s : a2.keySet()) {
            if (s.equals("mailboxKey")) {
                contentValues2.put("mailboxKey", b2.YR);
            }
            else if (s.equals("flagRead")) {
                contentValues2.put("flagRead", b2.Vs);
            }
            else if (s.equals("flagSeen")) {
                contentValues2.put("flagSeen", b2.YM);
            }
            else {
                if (!s.equals("flagFavorite")) {
                    continue;
                }
                contentValues2.put("flagFavorite", b2.Vt);
            }
        }
        if (contentValues2.size() == 0) {
            return -1;
        }
        final Boolean asBoolean = contentValues.getAsBoolean("suppress_undo");
        if (asBoolean == null || !asBoolean) {
            final ContentProviderOperation build = ContentProviderOperation.newUpdate(a(uri, uri2, false)).withValues(contentValues2).build();
            final String queryParameter = uri.getQueryParameter("seq");
            if (queryParameter != null) {
                final int int1 = Integer.parseInt(queryParameter);
                if (int1 > this.Sp) {
                    this.Sq.clear();
                    this.Sp = int1;
                }
                this.Sq.add(build);
            }
        }
        return this.update(a, a2, null, null);
    }
    
    private static int a(final Uri uri, final String s) {
        final int match = EmailProvider.Sm.match(uri);
        if (match < 0) {
            throw new IllegalArgumentException("Unknown uri: " + uri);
        }
        if (com.android.emailcommon.b.LOGD) {
            E.b(EmailProvider.TAG, s + ": uri=" + uri + ", match is " + match, new Object[0]);
        }
        return match;
    }
    
    private static int a(final o o, final int n, final long n2) {
        int n3 = 32;
        if (n != 8) {
            if (n == 3) {
                n3 = 0;
            }
            if (o != null && o.UP) {
                n3 |= 0x200;
            }
            if (n == 1 || n == 6 || n == 7 || n == 0) {
                n3 = (0x4000 | (n3 | 0x8));
            }
            if (n == 6) {
                n3 = 18472;
            }
            if (p(n2)) {
                n3 |= 0x1000;
            }
            if (o == null || !o.Va) {
                n3 &= 0xFFFEBFF7;
            }
            if (n == 4 || n == 5) {
                return n3 | 0x20000;
            }
        }
        return n3;
    }
    
    private static int a(final com.android.mail.i.g g) {
        if (g.tI()) {
            return 1;
        }
        return 2;
    }
    
    public static long a(final long n, final int n2) {
        return (n << 32) + n2;
    }
    
    private ContentValues a(final com.android.emailcommon.provider.g g, final ContentValues contentValues) {
        final ContentValues contentValues2 = new ContentValues();
        for (final String s : contentValues.keySet()) {
            final Object value = contentValues.get(s);
            if (s.equals("starred")) {
                a(contentValues2, "flagFavorite", value);
            }
            else if (s.equals("read")) {
                a(contentValues2, "flagRead", value);
            }
            else if (s.equals("seen")) {
                a(contentValues2, "flagSeen", value);
            }
            else if (s.equals("mailboxKey")) {
                a(contentValues2, "mailboxKey", value);
            }
            else {
                if (s.equals("folders_updated")) {
                    continue;
                }
                if (s.equals("rawFolders")) {
                    final FolderList d = FolderList.d(contentValues.getAsByteArray(s));
                    if (d.aAL.size() != 1) {
                        E.f(EmailProvider.TAG, "Incorrect number of folders for this message: Message is %s", g.Ln);
                    }
                    else {
                        a(contentValues2, "mailboxKey", Long.parseLong(((Folder)d.aAL.get(0)).azZ.aPj.getLastPathSegment()));
                    }
                }
                else if (s.equals("alwaysShowImages")) {
                    final Address[] ao = Address.ao(g.YT);
                    final com.android.mail.i.g ao2 = com.android.mail.i.g.ao(this.getContext());
                    for (int length = ao.length, i = 0; i < length; ++i) {
                        ao2.a(ao[i].getAddress(), null);
                    }
                }
                else {
                    if (!s.equals("viewed") && !s.equals("suppress_undo") && !"conversationInfo".equals(s)) {
                        throw new IllegalArgumentException("Can't update " + s + " in message");
                    }
                    continue;
                }
            }
        }
        return contentValues2;
    }
    
    private Cursor a(final int n, final Uri uri, final String[] array, final boolean b) {
        final Context context = this.getContext();
        final ContentResolver contentResolver = context.getContentResolver();
        final SQLiteDatabase g = this.G(context);
        final String s = uri.getPathSegments().get(1);
        Uri uri2 = null;
        Object rawQuery = null;
        Label_1527: {
            switch (n) {
                default: {
                    uri2 = null;
                    rawQuery = null;
                    break;
                }
                case 36883: {
                    final Uri build = EmailProvider.SB.buildUpon().appendEncodedPath(s).build();
                    final Cursor a = this.a(s, array);
                    if (s.equals(EmailProvider.Tc)) {
                        uri2 = build;
                        rawQuery = a;
                        break;
                    }
                    final Cursor rawQuery2 = g.rawQuery(b(array), new String[] { s });
                    rawQuery2.setNotificationUri(context.getContentResolver(), build);
                    a.setNotificationUri(context.getContentResolver(), build);
                    if (rawQuery2.getCount() > 0) {
                        rawQuery = new MergeCursor(new Cursor[] { rawQuery2, a });
                        uri2 = build;
                        break;
                    }
                    uri2 = build;
                    rawQuery = rawQuery2;
                    break;
                }
                case 36882: {
                    final Cursor a2 = this.a(g.rawQuery(b(e(array)), new String[] { s }), Long.valueOf(s), array);
                    final Uri build2 = EmailProvider.SB.buildUpon().appendEncodedPath(s).build();
                    rawQuery = a2;
                    uri2 = build2;
                    break;
                }
                case 36880: {
                    final Cursor rawQuery3 = g.rawQuery(c(array), new String[] { s });
                    final Uri build3 = EmailProvider.SH.buildUpon().appendPath(s).build();
                    rawQuery = rawQuery3;
                    uri2 = build3;
                    break;
                }
                case 36865: {
                    final Cursor a3 = this.a(g.rawQuery(d(e(array)), new String[] { s }), Mailbox.q(context, s), array);
                    uri2 = ContentUris.withAppendedId(EmailProvider.SB, Mailbox.q(context, s));
                    rawQuery = a3;
                    break;
                }
                case 36866: {
                    final long long1 = Long.parseLong(s);
                    final Folder e = e(context, long1);
                    if (e == null) {
                        return (Cursor)new MatrixCursor(array);
                    }
                    Cursor cursor;
                    if (p(long1)) {
                        final ContentValues contentValues = new ContentValues();
                        contentValues.put("color", EmailProvider.SQ);
                        final int n2 = (int)(0xFL & long1);
                        final StringBuilder a4 = a(kg(), array, contentValues);
                        b(a4);
                        a4.append(" FROM Message WHERE flagLoaded IN (2,1) AND ");
                        String[] array2;
                        if (q(long1)) {
                            if (b) {
                                a4.append("flagSeen=0 AND ");
                                a4.append("flagRead=0 AND ");
                            }
                            array2 = null;
                        }
                        else {
                            if (n2 == 0) {
                                throw new IllegalArgumentException("No virtual mailbox for: " + long1);
                            }
                            a4.append("accountKey=? AND ");
                            array2 = new String[] { Long.toString(long1 >> 32) };
                        }
                        switch (n2) {
                            default: {
                                throw new IllegalArgumentException("No virtual mailbox for: " + long1);
                            }
                            case 0: {
                                a4.append("mailboxKey IN (SELECT _id FROM Mailbox WHERE type=0)");
                                break;
                            }
                            case 9: {
                                a4.append("flagFavorite=1");
                                break;
                            }
                            case 10: {
                                a4.append("flagRead=0 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type=6)");
                                break;
                            }
                        }
                        a4.append(" ORDER BY timeStamp DESC");
                        cursor = g.rawQuery(a4.toString(), array2);
                    }
                    else {
                        cursor = g.rawQuery(a(array, b), new String[] { s });
                    }
                    final Uri build4 = EmailProvider.Sz.buildUpon().appendPath(s).build();
                    rawQuery = new i(context, cursor, e, long1);
                    uri2 = build4;
                    break;
                }
                case 36867: {
                    final u a5 = this.a(array, s);
                    final String tt = a5.Tt;
                    final String tu = a5.Tu;
                    Cursor cursor2;
                    if (tu != null) {
                        cursor2 = g.rawQuery(tt, new String[] { tu, s });
                    }
                    else {
                        cursor2 = g.rawQuery(tt, new String[] { s });
                    }
                    Object o;
                    if (cursor2 != null) {
                        o = new j(this.getContext(), cursor2, "bodyHtml", "bodyText");
                    }
                    else {
                        o = cursor2;
                    }
                    final Uri build5 = EmailProvider.SG.buildUpon().appendPath(s).build();
                    rawQuery = o;
                    uri2 = build5;
                    break;
                }
                case 36873: {
                    final com.android.email.provider.s s2 = new com.android.email.provider.s(context, g.rawQuery(a(array, uri.getQueryParameters("contentType")), new String[] { s }));
                    uri2 = EmailProvider.SE.buildUpon().appendPath(s).build();
                    rawQuery = s2;
                    break;
                }
                case 36874: {
                    final ContentValues contentValues2 = new ContentValues(2);
                    contentValues2.put("contentUri", kk());
                    contentValues2.put("supportsDownloadAgain", 1);
                    final Cursor rawQuery4 = g.rawQuery(a(kj(), array, contentValues2).append(" FROM Attachment WHERE _id").append(" =? ").toString(), new String[] { s });
                    final Uri build6 = EmailProvider.SD.buildUpon().appendPath(s).build();
                    rawQuery = rawQuery4;
                    uri2 = build6;
                    break;
                }
                case 36875: {
                    final String[] array3 = { s, uri.getPathSegments().get(2) };
                    final ContentValues contentValues3 = new ContentValues(2);
                    contentValues3.put("contentUri", kk());
                    contentValues3.put("supportsDownloadAgain", 1);
                    final Cursor rawQuery5 = g.rawQuery(a(kj(), array, contentValues3).append(" FROM Attachment WHERE messageKey").append(" =?  AND contentId =? ").toString(), array3);
                    final Uri build7 = EmailProvider.SE.buildUpon().appendPath(s).build();
                    rawQuery = rawQuery5;
                    uri2 = build7;
                    break;
                }
                case 36870:
                case 36885: {
                    long long2;
                    if (n == 36885) {
                        final long c = Mailbox.c(context, Long.parseLong(s), 0);
                        if (c == -1L) {
                            E.c(E.TAG, "No inbox found for account %s", s);
                            return null;
                        }
                        E.c(E.TAG, "Found inbox id %d", c);
                        long2 = c;
                    }
                    else {
                        long2 = Long.parseLong(s);
                    }
                    final String string = Long.toString(long2);
                    if (p(long2)) {
                        final Cursor a6 = this.a(long2, array);
                        final Uri build8 = EmailProvider.SA.buildUpon().appendPath(string).build();
                        rawQuery = a6;
                        uri2 = build8;
                        break;
                    }
                    Cursor rawQuery6 = g.rawQuery(this.b(array, string), new String[] { string });
                    final List<String> list = Arrays.asList(array);
                    final int index = list.indexOf("name");
                    final int index2 = list.indexOf("type");
                    while (true) {
                        if (rawQuery6.moveToFirst()) {
                            try {
                                final Cursor a7 = this.a(new G(array), array.length, rawQuery6, index, index2);
                                rawQuery6.close();
                                rawQuery6 = a7;
                                uri2 = EmailProvider.SA.buildUpon().appendPath(string).build();
                                rawQuery = rawQuery6;
                                break;
                            }
                            finally {
                                rawQuery6.close();
                            }
                            break Label_1527;
                        }
                        continue;
                    }
                }
                case 36871: {
                    Object rawQuery7;
                    if (s.equals(EmailProvider.Tc)) {
                        rawQuery7 = new G(array, 1);
                        this.a((MatrixCursor)rawQuery7);
                    }
                    else {
                        rawQuery7 = g.rawQuery(this.c(array, s), new String[] { s });
                    }
                    final Uri build9 = EmailProvider.SC.buildUpon().appendPath(s).build();
                    rawQuery = rawQuery7;
                    uri2 = build9;
                    break;
                }
                case 36879: {
                    rawQuery = g.rawQuery(a(array), new String[] { s });
                    uri2 = null;
                    break;
                }
            }
        }
        if (uri2 != null) {
            ((Cursor)rawQuery).setNotificationUri(contentResolver, uri2);
        }
        return (Cursor)rawQuery;
    }
    
    private Cursor a(final long n, final String[] array) {
        final G g = new G(array, 1);
        g.addRow(this.a(n >> 32, (int)(0xFL & n), array));
        return (Cursor)g;
    }
    
    private Cursor a(final Cursor cursor, final long n, final String[] array) {
        final G g = new G(array);
        if (cursor == null || cursor == null) {
            return (Cursor)g;
        }
        while (true) {
            while (true) {
                int n2 = 0;
                Label_0485: {
                    while (true) {
                        int columnIndex = 0;
                        int columnIndex4 = 0;
                        int columnIndex5 = 0;
                        int columnIndex6 = 0;
                        o l = null;
                        MatrixCursor$RowBuilder row = null;
                        int int1 = 0;
                        int columnIndex7 = 0;
                        String string = null;
                        Label_0252: {
                            try {
                                if (cursor.getCount() != 0) {
                                    columnIndex = cursor.getColumnIndex("_id");
                                    final int columnIndex2 = cursor.getColumnIndex("type");
                                    final int columnIndex3 = cursor.getColumnIndex("name");
                                    columnIndex4 = cursor.getColumnIndex("capabilities");
                                    columnIndex5 = cursor.getColumnIndex("persistentId");
                                    columnIndex6 = cursor.getColumnIndex("loadMoreUri");
                                    final Context context = this.getContext();
                                    l = com.android.email.service.n.l(context, com.android.emailcommon.provider.Account.m(context, n));
                                    while (cursor.moveToNext()) {
                                        row = g.newRow();
                                        int1 = cursor.getInt(columnIndex2);
                                        n2 = 0;
                                        if (n2 < array.length) {
                                            columnIndex7 = cursor.getColumnIndex(array[n2]);
                                            if (columnIndex7 == -1) {
                                                row.add((Object)null);
                                                break Label_0485;
                                            }
                                            string = cursor.getString(columnIndex7);
                                            if (columnIndex3 != columnIndex7) {
                                                break Label_0252;
                                            }
                                            row.add((Object)this.d(int1, string));
                                            final int n3 = 1;
                                            if (n3 == 0) {
                                                row.add((Object)string);
                                            }
                                            break Label_0485;
                                        }
                                    }
                                }
                                return (Cursor)g;
                            }
                            finally {
                                cursor.close();
                            }
                        }
                        if (columnIndex4 == columnIndex7) {
                            final long long1 = cursor.getLong(columnIndex);
                            int n4 = 0;
                            switch (int1) {
                                default: {
                                    throw new IllegalArgumentException("Unable to map folder type: " + int1);
                                }
                                case 1: {
                                    n4 = 1;
                                    break;
                                }
                                case 2: {
                                    n4 = 0;
                                    break;
                                }
                                case 8: {
                                    n4 = 4;
                                    break;
                                }
                                case 4: {
                                    n4 = 3;
                                    break;
                                }
                                case 32: {
                                    n4 = 6;
                                    break;
                                }
                                case 16: {
                                    n4 = 5;
                                    break;
                                }
                                case 64: {
                                    n4 = 7;
                                    break;
                                }
                                case 128: {
                                    n4 = 9;
                                    break;
                                }
                                case 2048: {
                                    n4 = 10;
                                    break;
                                }
                                case 4097: {
                                    n4 = 8;
                                    break;
                                }
                            }
                            row.add((Object)a(l, n4, long1));
                            final int n3 = 1;
                            continue;
                        }
                        if (columnIndex5 == columnIndex7) {
                            row.add((Object)Base64.encodeToString(string.getBytes(), 11));
                            final int n3 = 1;
                            continue;
                        }
                        if (columnIndex6 == columnIndex7 && int1 != 8 && (l == null || !l.UZ)) {
                            row.add((Object)null);
                            final int n3 = 1;
                            continue;
                        }
                        final int n3 = 0;
                        continue;
                    }
                }
                ++n2;
                continue;
            }
        }
    }
    
    private Cursor a(final MatrixCursor matrixCursor, final int n, final Cursor cursor, final int n2, final int n3) {
        final MatrixCursor$RowBuilder row = matrixCursor.newRow();
        for (int i = 0; i < n; ++i) {
            if (n2 == i) {
                row.add((Object)this.d(cursor.getInt(n3), cursor.getString(i)));
            }
            else {
                row.add((Object)cursor.getString(i));
            }
        }
        return (Cursor)matrixCursor;
    }
    
    private Cursor a(final String s, final String[] array) {
        final G g = new G(array);
        if (s.equals(EmailProvider.Tc)) {
            g.addRow(this.a(268435456L, 0, array));
            g.addRow(this.a(268435456L, 9, array));
            g.addRow(this.a(268435456L, 10, array));
            return (Cursor)g;
        }
        final long long1 = Long.parseLong(s);
        g.addRow(this.a(long1, 9, array));
        g.addRow(this.a(long1, 10, array));
        return (Cursor)g;
    }
    
    private static Uri a(final Uri uri, final Uri uri2, final boolean b) {
        final String lastPathSegment = uri.getLastPathSegment();
        try {
            Uri uri3 = ContentUris.withAppendedId(uri2, Long.parseLong(lastPathSegment));
            if (b) {
                uri3 = uri3.buildUpon().appendQueryParameter("is_uiprovider", "true").build();
            }
            return uri3;
        }
        catch (NumberFormatException ex) {
            return null;
        }
    }
    
    private Uri a(final com.android.emailcommon.provider.g g, final Mailbox mailbox, final Bundle bundle) {
        final Context context = this.getContext();
        final com.android.emailcommon.provider.Account k = com.android.emailcommon.provider.Account.k(context, mailbox.Lq);
        if (k == null) {
            return null;
        }
        final String string = bundle.getString("customFrom");
    Label_0330:
        while (true) {
            while (true) {
                int dm = 0;
                Label_0538: {
                    if (TextUtils.isEmpty((CharSequence)string)) {
                        break Label_0538;
                    }
                    g.YT = string;
                Label_0561_Outer:
                    while (true) {
                        g.YK = System.currentTimeMillis();
                        g.YU = bundle.getString("toAddresses");
                        g.YV = bundle.getString("ccAddresses");
                        g.YW = bundle.getString("bccAddresses");
                        g.YL = bundle.getString("subject");
                        g.Zd = bundle.getString("bodyText");
                        g.Ze = bundle.getString("bodyHtml");
                        g.YR = mailbox.Ln;
                        g.Lq = mailbox.Lq;
                        g.Xy = g.YU;
                        g.Vu = 1;
                        g.Vs = true;
                        g.YM = true;
                        g.YA = bundle.getInt("quotedTextStartPos", 0);
                        final int int1 = bundle.getInt("draftType");
                        dm = 0;
                        Label_0556: {
                            while (true) {
                                switch (int1) {
                                    case 4: {
                                        break Label_0556;
                                    }
                                    case 3: {
                                        break Label_0556;
                                    }
                                    case 2: {
                                        break Label_0561;
                                    }
                                    case 1: {
                                        Label_0570: {
                                            break Label_0570;
                                            final String string2;
                                            final String lastPathSegment = Uri.parse(string2).getLastPathSegment();
                                            try {
                                                g.YB = Long.parseLong(lastPathSegment);
                                                final List<Attachment> bk = Attachment.bK(bundle.getString("attachments"));
                                                final ArrayList<EmailContent$Attachment> zf = new ArrayList<EmailContent$Attachment>();
                                                final Bundle bundle2 = (Bundle)bundle.getParcelable("opened_fds");
                                                final Iterator<Attachment> iterator = bk.iterator();
                                                boolean b = false;
                                                while (iterator.hasNext()) {
                                                    final Attachment attachment = iterator.next();
                                                    final Uri uri = attachment.uri;
                                                    if (uri != null && uri.getAuthority().equals(EmailContent.AUTHORITY)) {
                                                        final EmailContent$Attachment o = EmailContent$Attachment.o(context, Long.parseLong(uri.getLastPathSegment()));
                                                        if (o == null) {
                                                            continue Label_0561_Outer;
                                                        }
                                                        final Parcel obtain = Parcel.obtain();
                                                        o.writeToParcel(obtain, 0);
                                                        obtain.setDataPosition(0);
                                                        final EmailContent$Attachment emailContent$Attachment = new EmailContent$Attachment(obtain);
                                                        obtain.recycle();
                                                        emailContent$Attachment.Yq = 0L;
                                                        if (mailbox.Zr == 4 && o.lL() == null && (0x80 & k.dM) == 0x0) {
                                                            emailContent$Attachment.dM |= 0x4;
                                                            b = true;
                                                        }
                                                        zf.add(emailContent$Attachment);
                                                    }
                                                    else {
                                                        final String a = com.android.mail.utils.b.a(context, attachment, bundle2);
                                                        final long lq = g.Lq;
                                                        final EmailContent$Attachment emailContent$Attachment2 = new EmailContent$Attachment();
                                                        emailContent$Attachment2.ax(attachment.ayP.toString());
                                                        if (!TextUtils.isEmpty((CharSequence)a)) {
                                                            final Uri$Builder buildUpon = Uri.parse("content://" + EmailContent.AUTHORITY + "/attachment/cachedFile").buildUpon();
                                                            buildUpon.appendQueryParameter("filePath", a);
                                                            emailContent$Attachment2.aw(buildUpon.build().toString());
                                                        }
                                                        emailContent$Attachment2.Lq = lq;
                                                        emailContent$Attachment2.Yl = attachment.getName();
                                                        emailContent$Attachment2.Ym = attachment.getContentType();
                                                        emailContent$Attachment2.Lo = attachment.size;
                                                        zf.add(emailContent$Attachment2);
                                                    }
                                                }
                                                if (!zf.isEmpty()) {
                                                    g.Zf = zf;
                                                    g.YN = true;
                                                    if (b) {
                                                        s.h(context, 2131296783);
                                                    }
                                                }
                                                if (!g.lF()) {
                                                    g.ac(context);
                                                }
                                                else {
                                                    final ArrayList<ContentProviderOperation> list = new ArrayList<ContentProviderOperation>();
                                                    list.add(ContentProviderOperation.newDelete(ContentUris.withAppendedId(EmailContent$Attachment.Yh, g.Ln)).build());
                                                    list.add(ContentProviderOperation.newDelete(e.CONTENT_URI).withSelection("messageKey=?", new String[] { Long.toString(g.Ln) }).build());
                                                    g.a(list);
                                                    try {
                                                        this.applyBatch(list);
                                                    }
                                                    catch (OperationApplicationException ex) {
                                                        E.c(EmailProvider.TAG, "applyBatch exception", new Object[0]);
                                                    }
                                                }
                                                this.s(g.Ln);
                                                if (mailbox.Zr == 4) {
                                                    this.a(mailbox, 0);
                                                    final long yb = g.YB;
                                                    if (yb != 0L) {
                                                        final com.android.emailcommon.provider.g t = com.android.emailcommon.provider.g.t(context, yb);
                                                        if (t != null) {
                                                            final ContentValues contentValues = new ContentValues();
                                                            int dm2 = t.dM;
                                                            switch (int1) {
                                                                case 4: {
                                                                    dm2 |= 0x80000;
                                                                    break;
                                                                }
                                                                case 2:
                                                                case 3: {
                                                                    dm2 |= 0x40000;
                                                                    break;
                                                                }
                                                            }
                                                            contentValues.put("flags", dm2);
                                                            context.getContentResolver().update(ContentUris.withAppendedId(com.android.emailcommon.provider.g.CONTENT_URI, yb), contentValues, (String)null, (String[])null);
                                                        }
                                                    }
                                                }
                                                return a("uimessage", g.Ln);
                                                g.YT = k.lw();
                                                continue Label_0561_Outer;
                                                dm |= 0x1;
                                                break;
                                                dm = 2;
                                                break;
                                                dm = 1048576;
                                                break;
                                                dm = 2097152;
                                                continue;
                                            }
                                            catch (NumberFormatException ex2) {
                                                continue Label_0330;
                                            }
                                        }
                                        break;
                                    }
                                }
                                break;
                            }
                        }
                        break;
                    }
                }
                final boolean containsKey = bundle.containsKey("quotedTextStartPos");
                int int2 = 0;
                if (containsKey) {
                    int2 = bundle.getInt("quotedTextStartPos");
                    if (bundle.getInt("appendRefMessageContent") != 0) {
                        int2 |= 0x1000000;
                    }
                }
                if (!bundle.containsKey("appendRefMessageContent")) {
                    dm |= 0x20000;
                }
                g.YP = int2;
                g.dM = dm;
                final String string2 = bundle.getString("refMessageId");
                if (string2 != null && g.YA >= 0) {
                    continue;
                }
                break;
            }
            continue Label_0330;
        }
    }
    
    public static Uri a(final String s, final long n) {
        return Uri.parse(b(s, n));
    }
    
    private u a(final String[] array, final String s) {
        final Context context = this.getContext();
        final long long1 = Long.parseLong(s);
        final com.android.emailcommon.provider.g t = com.android.emailcommon.provider.g.t(context, long1);
        final ContentValues contentValues = new ContentValues();
        String n3;
        if (t != null) {
            final e q = e.q(context, long1);
            if (q != null && q.Yy != null && EmailProvider.SZ.matcher(q.Yy).find()) {
                contentValues.put("bodyEmbedsExternalResources", 1);
            }
            final Address[] ao = Address.ao(t.YT);
            final com.android.mail.i.g ao2 = com.android.mail.i.g.ao(context);
            final int length = ao.length;
            int n = 0;
            int n2;
            while (true) {
                n2 = 0;
                if (n >= length) {
                    break;
                }
                if (ao2.bG(ao[n].getAddress())) {
                    n2 = 1;
                    break;
                }
                ++n;
            }
            contentValues.put("alwaysShowImages", n2);
            final EmailContent$Attachment[] p2 = EmailContent$Attachment.p(context, long1);
            if (p2.length > 0) {
                final ArrayList<Attachment> list = new ArrayList<Attachment>();
                for (final EmailContent$Attachment emailContent$Attachment : p2) {
                    final Attachment attachment = new Attachment();
                    attachment.setName(emailContent$Attachment.Yl);
                    attachment.setContentType(emailContent$Attachment.Ym);
                    attachment.size = (int)emailContent$Attachment.Lo;
                    attachment.uri = a("uiattachment", emailContent$Attachment.Ln);
                    attachment.flags = emailContent$Attachment.dM;
                    list.add(attachment);
                }
                contentValues.put("attachments", "@?");
                n3 = Attachment.n(list);
            }
            else {
                n3 = null;
            }
            if (t.YP != 0) {
                int n4;
                if ((0x1000000 & t.YP) != 0x0) {
                    n4 = 1;
                }
                else {
                    n4 = 0;
                }
                contentValues.put("appendRefMessageContent", n4);
                contentValues.put("quotedTextStartPos", 0xFFFFFF & t.YP);
            }
            if ((0x4 & t.dM) != 0x0) {
                contentValues.put("eventIntentUri", "content://ui.email2.android.com/event/" + t.Ln);
            }
            final Uri$Builder buildUpon = a("uiattachments", long1).buildUpon();
            String s2;
            if (t.Vu == 1) {
                s2 = "true";
            }
            else {
                s2 = "false";
            }
            contentValues.put("attachmentListUri", buildUpon.appendQueryParameter("MessageLoaded", s2).build().toString());
        }
        else {
            n3 = null;
        }
        if (EmailProvider.ST == null) {
            EmailProvider.ST = ProjectionMap.kq().p("_id", "Message._id").p("serverMessageId", "syncServerId").p("messageUri", l("uimessage", "Message")).p("conversationId", l("uimessage", "Message")).p("subject", "subject").p("snippet", "snippet").p("fromAddress", "fromList").p("toAddresses", "toList").p("ccAddresses", "ccList").p("bccAddresses", "bccList").p("replyToAddress", "replyToList").p("dateReceivedMs", "timeStamp").p("bodyHtml", null).p("bodyText", null).p("refMessageId", "0").p("draftType", EmailProvider.SO).p("appendRefMessageContent", "0").p("hasAttachments", "flagAttachment").p("attachmentListUri", l("uiattachments", "Message")).p("attachmentByCidUri", l("uiattachmentbycid", "Message")).p("messageFlags", "CASE WHEN (flags&4) !=0 THEN 16 ELSE 0 END").p("draftType", "CASE WHEN (flags&1048576) !=0 THEN 1 WHEN (flags&2097152) !=0 THEN 3 WHEN (flags&1) !=0 THEN 2 WHEN (flags&2) !=0 THEN 4 ELSE 0 END").p("messageAccountUri", k("uiaccount", "accountKey")).p("starred", "flagFavorite").p("read", "flagRead").p("seen", "flagSeen").p("spamWarningString", null).p("spamWarningLevel", Integer.toString(0)).p("spamWarningLinkType", Integer.toString(0)).p("viaDomain", null).p("clipped", "0").p("permalink", null).kr();
        }
        final StringBuilder a = a(EmailProvider.ST, array, contentValues);
        a.append(" FROM Message LEFT JOIN Body ON messageKey=Message._id WHERE Message._id=?");
        return new u(a.toString(), n3);
    }
    
    protected static File a(final Context context, final long n, final String s) {
        if (!TextUtils.equals((CharSequence)s, (CharSequence)"html") && !TextUtils.equals((CharSequence)s, (CharSequence)"txt")) {
            throw new IllegalArgumentException("ext must be one of 'html' or 'txt'");
        }
        final File file = new File(context.getFilesDir(), "body/" + Long.toString(n / 100L % 100L) + "/" + Long.toString(n % 100L) + "/");
        if (!file.isDirectory() && !file.mkdirs()) {
            throw new FileNotFoundException("Could not create directory for body file");
        }
        return new File(file, Long.toString(n) + "." + s);
    }
    
    private static String a(final String[] array) {
        final StringBuilder a = a(kg(), array);
        a.append(" FROM Message WHERE _id=?");
        return a.toString();
    }
    
    private static String a(final String[] array, final List<String> list) {
        final ContentValues contentValues = new ContentValues(1);
        contentValues.put("supportsDownloadAgain", 1);
        final StringBuilder a = a(kj(), array, contentValues);
        a.append(" FROM Attachment WHERE messageKey").append(" =? ");
        if (list != null && !list.isEmpty()) {
            final int size = list.size();
            a.append("AND (");
            for (int i = 0; i < size; ++i) {
                a.append("mimeType LIKE '").append(list.get(i)).append("%'");
                if (i != size - 1) {
                    a.append(" OR ");
                }
            }
            a.append(")");
        }
        return a.toString();
    }
    
    private static String a(final String[] array, final boolean b) {
        final StringBuilder a = a(kg(), array);
        b(a);
        a.append(" FROM Message WHERE flagLoaded IN (2,1) AND mailboxKey=? ");
        if (b) {
            a.append("AND flagSeen = 0 ");
            a.append("AND flagRead = 0 ");
        }
        a.append("ORDER BY timeStamp DESC ");
        a.append("LIMIT 1500");
        return a.toString();
    }
    
    private static StringBuilder a(final ProjectionMap projectionMap, final String[] array) {
        return a(projectionMap, array, EmailProvider.So);
    }
    
    private static StringBuilder a(final ProjectionMap projectionMap, final String[] array, final ContentValues contentValues) {
        final StringBuilder sb = new StringBuilder("SELECT ");
        final int length = array.length;
        int i = 0;
        int n = 1;
        while (i < length) {
            final String s = array[i];
            int n2;
            if (n != 0) {
                n2 = 0;
            }
            else {
                sb.append(',');
                n2 = n;
            }
            String s2;
            if (contentValues.containsKey(s)) {
                final String asString = contentValues.getAsString(s);
                if (asString == null) {
                    s2 = "NULL AS " + s;
                }
                else if (asString.startsWith("@")) {
                    s2 = asString.substring(1) + " AS " + s;
                }
                else {
                    s2 = DatabaseUtils.sqlEscapeString(asString) + " AS " + s;
                }
            }
            else {
                s2 = ((HashMap<K, String>)projectionMap).get(s);
                if (s2 == null) {
                    s2 = "NULL AS " + s;
                }
            }
            sb.append(s2);
            ++i;
            n = n2;
        }
        return sb;
    }
    
    private void a(final long n, final ContentValues contentValues) {
        final Integer asInteger = contentValues.getAsInteger("syncInterval");
        if (asInteger != null) {
            final Account u = this.u(n);
            if (u != null) {
                E.c(EmailProvider.TAG, "Setting sync interval for account %s to %d minutes", n, asInteger);
                final Iterator iterator = ContentResolver.getPeriodicSyncs(u, EmailContent.AUTHORITY).iterator();
                while (iterator.hasNext()) {
                    ContentResolver.removePeriodicSync(u, EmailContent.AUTHORITY, iterator.next().extras);
                }
                if (asInteger > 0) {
                    ContentResolver.addPeriodicSync(u, EmailContent.AUTHORITY, Bundle.EMPTY, 60000L * asInteger / 1000L);
                }
            }
        }
    }
    
    private static void a(final ContentValues contentValues) {
        if (contentValues.containsKey("toList")) {
            contentValues.put("toList", Address.al(contentValues.getAsString("toList")));
        }
        if (contentValues.containsKey("fromList")) {
            contentValues.put("fromList", Address.al(contentValues.getAsString("fromList")));
        }
        if (contentValues.containsKey("ccList")) {
            contentValues.put("ccList", Address.al(contentValues.getAsString("ccList")));
        }
        if (contentValues.containsKey("bccList")) {
            contentValues.put("bccList", Address.al(contentValues.getAsString("bccList")));
        }
        if (contentValues.containsKey("replyToList")) {
            contentValues.put("replyToList", Address.al(contentValues.getAsString("replyToList")));
        }
    }
    
    private static void a(final ContentValues contentValues, final String s, final Object o) {
        if (o instanceof Integer) {
            contentValues.put(s, (Integer)o);
        }
        else {
            if (o instanceof Boolean) {
                int n;
                if (o) {
                    n = 1;
                }
                else {
                    n = 0;
                }
                contentValues.put(s, n);
                return;
            }
            if (o instanceof Long) {
                contentValues.put(s, (Long)o);
            }
        }
    }
    
    private void a(final Context context, final long n, final long n2) {
        E.c(EmailProvider.TAG, "runSearchQuery. account: %d mailbox id: %d", n, n2);
        new p(this, context, n, n2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])new Void[0]);
    }
    
    private static void a(final Context p0, final long p1, final ContentValues p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_3        
        //     1: ldc_w           "htmlContent"
        //     4: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //     7: ifeq            29
        //    10: aload_3        
        //    11: ldc_w           "htmlContent"
        //    14: invokevirtual   android/content/ContentValues.getAsString:(Ljava/lang/String;)Ljava/lang/String;
        //    17: astore          6
        //    19: aload_0        
        //    20: lload_1        
        //    21: ldc_w           "html"
        //    24: aload           6
        //    26: invokestatic    com/android/email/provider/EmailProvider.a:(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
        //    29: aload_3        
        //    30: ldc_w           "textContent"
        //    33: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //    36: ifeq            58
        //    39: aload_3        
        //    40: ldc_w           "textContent"
        //    43: invokevirtual   android/content/ContentValues.getAsString:(Ljava/lang/String;)Ljava/lang/String;
        //    46: astore          4
        //    48: aload_0        
        //    49: lload_1        
        //    50: ldc_w           "txt"
        //    53: aload           4
        //    55: invokestatic    com/android/email/provider/EmailProvider.a:(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
        //    58: return         
        //    59: astore          7
        //    61: new             Ljava/lang/IllegalStateException;
        //    64: dup            
        //    65: new             Ljava/lang/StringBuilder;
        //    68: dup            
        //    69: ldc_w           "IOException while writing html body for message id "
        //    72: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    75: lload_1        
        //    76: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //    79: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    82: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    85: aload           7
        //    87: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //    90: athrow         
        //    91: astore          5
        //    93: new             Ljava/lang/IllegalStateException;
        //    96: dup            
        //    97: new             Ljava/lang/StringBuilder;
        //   100: dup            
        //   101: ldc_w           "IOException while writing text body for message id "
        //   104: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   107: lload_1        
        //   108: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   111: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   114: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   117: aload           5
        //   119: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   122: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  19     29     59     91     Ljava/io/IOException;
        //  48     58     91     123    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0058:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    private static void a(final Context context, final long n, final String s, final String s2) {
        final File a = a(context, n, s);
        if (TextUtils.isEmpty((CharSequence)s2)) {
            if (!a.delete()) {
                E.b(E.TAG, "did not delete text body for %d", n);
            }
            return;
        }
        final FileWriter fileWriter = new FileWriter(a);
        try {
            fileWriter.write(s2);
        }
        finally {
            fileWriter.close();
        }
    }
    
    private void a(final MatrixCursor matrixCursor) {
        final long l = com.android.emailcommon.provider.Account.l(this.getContext(), r.s(this.getContext()).ha());
        if (l == -1L) {
            return;
        }
        final y<String, Integer> y = new y<String, Integer>();
        final String[] columnNames = matrixCursor.getColumnNames();
        for (int i = 0; i < columnNames.length; ++i) {
            y.p(columnNames[i], i);
        }
        final ImmutableMap<String, Integer> zo = y.Zo();
        final com.android.mail.i.g ao = com.android.mail.i.g.ao(this.getContext());
        final Object[] array = new Object[columnNames.length];
        if (zo.containsKey("_id")) {
            array[zo.get("_id")] = 0;
        }
        if (zo.containsKey("capabilities")) {
            array[zo.get("capabilities")] = 17317888;
        }
        if (zo.containsKey("folderListUri")) {
            array[zo.get("folderListUri")] = o("uifolders", EmailProvider.Tc);
        }
        if (zo.containsKey("name")) {
            array[zo.get("name")] = this.getContext().getString(2131296779);
        }
        if (zo.containsKey("accountManagerName")) {
            array[zo.get("accountManagerName")] = this.getContext().getString(2131296779);
        }
        if (zo.containsKey("accountId")) {
            array[zo.get("accountId")] = "Account Id";
        }
        if (zo.containsKey("type")) {
            array[zo.get("type")] = "unknown";
        }
        if (zo.containsKey("undoUri")) {
            array[zo.get("undoUri")] = "'content://" + EmailContent.AUTHORITY + "/uiundo'";
        }
        if (zo.containsKey("accountUri")) {
            array[zo.get("accountUri")] = o("uiaccount", EmailProvider.Tc);
        }
        if (zo.containsKey("mimeType")) {
            array[zo.get("mimeType")] = EmailProvider.Si;
        }
        if (zo.containsKey("securityHold")) {
            array[zo.get("securityHold")] = 0;
        }
        if (zo.containsKey("accountSecurityUri")) {
            array[zo.get("accountSecurityUri")] = "";
        }
        if (zo.containsKey("accountSettingsIntentUri")) {
            array[zo.get("accountSettingsIntentUri")] = m("settings", EmailProvider.Tc);
        }
        if (zo.containsKey("composeUri")) {
            array[zo.get("composeUri")] = n("compose", Long.toString(l));
        }
        if (zo.containsKey("updateSettingsUri")) {
            array[zo.get("updateSettingsUri")] = b("uiacctsettings", -1L);
        }
        if (zo.containsKey("auto_advance")) {
            array[zo.get("auto_advance")] = Integer.toString(ao.tP());
        }
        if (zo.containsKey("snap_headers")) {
            array[zo.get("snap_headers")] = Integer.toString(0);
        }
        if (zo.containsKey("reply_behavior")) {
            final int intValue = zo.get("reply_behavior");
            int n;
            if (ao.tz()) {
                n = 1;
            }
            else {
                n = 0;
            }
            array[intValue] = Integer.toString(n);
        }
        if (zo.containsKey("conversation_list_icon")) {
            array[zo.get("conversation_list_icon")] = a(ao);
        }
        if (zo.containsKey("confirm_delete")) {
            final int intValue2 = zo.get("confirm_delete");
            int n2;
            if (ao.tM()) {
                n2 = 1;
            }
            else {
                n2 = 0;
            }
            array[intValue2] = n2;
        }
        if (zo.containsKey("confirm_archive")) {
            array[zo.get("confirm_archive")] = 0;
        }
        if (zo.containsKey("confirm_send")) {
            final int intValue3 = zo.get("confirm_send");
            int n3;
            if (ao.tO()) {
                n3 = 1;
            }
            else {
                n3 = 0;
            }
            array[intValue3] = n3;
        }
        if (zo.containsKey("default_inbox")) {
            array[zo.get("default_inbox")] = o("uifolder", Long.toString(1152921504606846976L));
        }
        if (zo.containsKey("move_to_inbox")) {
            array[zo.get("move_to_inbox")] = o("uifolder", Long.toString(1152921504606846976L));
        }
        if (zo.containsKey("show_images")) {
            array[zo.get("show_images")] = 1;
        }
        matrixCursor.addRow(array);
    }
    
    private static void a(final SQLiteDatabase sqLiteDatabase, final String s, final String s2, final String s3, final String s4) {
        final int delete = sqLiteDatabase.delete(s, s2 + " not in (select " + s3 + " from " + s4 + ")", (String[])null);
        if (delete > 0) {
            E.e(EmailProvider.TAG, "Found " + delete + " orphaned row(s) in " + s, new Object[0]);
        }
    }
    
    private void a(final Uri uri, final long n) {
        this.b(uri, Long.toString(n));
    }
    
    private void a(Uri build, final String s, final String s2) {
        if (build != null) {
            if (s != null) {
                build = build.buildUpon().appendEncodedPath(s).build();
            }
        Label_0047_Outer:
            while (true) {
                while (true) {
                    while (true) {
                        try {
                            final long longValue = Long.valueOf(s2);
                            if (longValue > 0L) {
                                this.b(build, s2);
                                if (build.equals((Object)com.android.emailcommon.provider.g.Xx)) {
                                    this.getContext().sendBroadcast(new Intent("com.android.email.MESSAGE_LIST_DATASET_CHANGED"));
                                    return;
                                }
                                break;
                            }
                        }
                        catch (NumberFormatException ex) {
                            final long longValue = 0L;
                            continue Label_0047_Outer;
                        }
                        break;
                    }
                    this.b(build, null);
                    continue;
                }
            }
        }
    }
    
    private void a(final Mailbox mailbox, final int n) {
        final Account u = this.u(mailbox.Lq);
        if (u != null) {
            final Bundle g = Mailbox.G(mailbox.Ln);
            g.putBoolean("force", true);
            g.putBoolean("do_not_retry", true);
            g.putBoolean("expedited", true);
            if (n != 0) {
                g.putInt("__deltaMessageCount__", n);
            }
            g.putString("callback_uri", EmailContent.CONTENT_URI.toString());
            g.putString("callback_method", "sync_status");
            ContentResolver.requestSync(u, EmailContent.AUTHORITY, g);
            E.d(EmailProvider.TAG, "requestSync EmailProvider startSync %s, %s", u.toString(), g.toString());
        }
    }
    
    private void a(final Set<Uri> set) {
        this.SL.set(set);
    }
    
    private static boolean a(final Context context, final SQLiteDatabase sqLiteDatabase, final String s) {
        final Cursor rawQuery = sqLiteDatabase.rawQuery("SELECT h.protocol, a.emailAddress, a.syncKey FROM Account AS a INNER JOIN HostAuth AS h ON a.hostAuthKeyRecv=h._id WHERE a._id=?", new String[] { s });
        if (rawQuery == null) {
            return false;
        }
        try {
            if (rawQuery.moveToFirst()) {
                final String string = rawQuery.getString(0);
                if (context.getString(2131297000).equals(string) && !EmailContent.av(rawQuery.getString(2))) {
                    final Account d = d(context, rawQuery.getString(1), string);
                    if (d != null) {
                        final Bundle bundle = new Bundle();
                        bundle.putBoolean("force", true);
                        bundle.putBoolean("do_not_retry", true);
                        bundle.putBoolean("expedited", true);
                        bundle.putBoolean("__push_only__", true);
                        bundle.putString("callback_uri", EmailContent.CONTENT_URI.toString());
                        bundle.putString("callback_method", "sync_status");
                        ContentResolver.requestSync(d, EmailContent.AUTHORITY, bundle);
                        E.d(EmailProvider.TAG, "requestSync EmailProvider startSync %s, %s", d.toString(), bundle.toString());
                        return true;
                    }
                }
            }
            return false;
        }
        finally {
            rawQuery.close();
        }
    }
    
    private Object[] a(final long n, final int n2, final String[] array) {
        final long n3 = (n << 32) + n2;
        final String string = Long.toString(n3);
        final Object[] array2 = new Object[array.length];
        for (int i = 0; i < array.length; ++i) {
            final String s = array[i];
            if (s.equals("_id")) {
                array2[i] = n3;
            }
            else if (s.equals("folderUri")) {
                array2[i] = o("uifolder", string);
            }
            else if (s.equals("name")) {
                array2[i] = this.d(bc(n2), "");
            }
            else if (s.equals("hasChildren")) {
                array2[i] = 0;
            }
            else if (s.equals("capabilities")) {
                array2[i] = 4128;
            }
            else if (s.equals("conversationListUri")) {
                array2[i] = o("uimessages", string);
            }
            else if (s.equals("unreadCount")) {
                if (n2 == 0 && n == 268435456L) {
                    array2[i] = EmailContent.a(this.getContext(), com.android.emailcommon.provider.g.CONTENT_URI, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type=0) AND flagRead=0", null);
                }
                else if (n2 == 10) {
                    String s2;
                    String[] array3;
                    if (n == 268435456L) {
                        s2 = "";
                        array3 = null;
                    }
                    else {
                        s2 = "accountKey= ? AND ";
                        array3 = new String[] { Long.toString(n) };
                    }
                    array2[i] = EmailContent.a(this.getContext(), com.android.emailcommon.provider.g.CONTENT_URI, s2 + "flagRead=0 AND mailboxKey NOT IN (SELECT " + "_id FROM Mailbox WHERE " + "type=6" + ")", array3);
                }
                else if (n2 == 9) {
                    String s3;
                    String[] array4;
                    if (n == 268435456L) {
                        s3 = "";
                        array4 = null;
                    }
                    else {
                        s3 = "accountKey= ? AND ";
                        array4 = new String[] { Long.toString(n) };
                    }
                    array2[i] = EmailContent.a(this.getContext(), com.android.emailcommon.provider.g.CONTENT_URI, s3 + "flagFavorite=1", array4);
                }
            }
            else if (s.equals("iconResId")) {
                if (n2 == 0) {
                    array2[i] = 2130837655;
                }
                else if (n2 == 10) {
                    array2[i] = 2130837669;
                }
                else if (n2 == 9) {
                    array2[i] = 2130837667;
                }
            }
        }
        return array2;
    }
    
    private Cursor b(final Mailbox mailbox, final int n) {
        if (mailbox != null) {
            com.android.email.provider.D.K(this.getContext()).a(mailbox.Ln, new com.android.email.provider.o(this, mailbox));
            this.a(mailbox, n);
        }
        return null;
    }
    
    private Cursor b(final String[] p0, final boolean p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //     4: astore_3       
        //     5: aload_0        
        //     6: aload_3        
        //     7: invokespecial   com/android/email/provider/EmailProvider.G:(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
        //    10: astore          4
        //    12: aload           4
        //    14: ldc_w           "select _id from Account"
        //    17: iconst_0       
        //    18: anewarray       Ljava/lang/String;
        //    21: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //    24: astore          5
        //    26: iload_2        
        //    27: ifne            245
        //    30: aload           5
        //    32: invokeinterface android/database/Cursor.getCount:()I
        //    37: iconst_1       
        //    38: if_icmple       245
        //    41: iconst_1       
        //    42: istore          6
        //    44: new             Landroid/os/Bundle;
        //    47: dup            
        //    48: invokespecial   android/os/Bundle.<init>:()V
        //    51: astore          7
        //    53: aload           7
        //    55: ldc_w           "accounts_loaded"
        //    58: iconst_1       
        //    59: invokevirtual   android/os/Bundle.putInt:(Ljava/lang/String;I)V
        //    62: new             Lcom/android/mail/utils/H;
        //    65: dup            
        //    66: aload_1        
        //    67: aload           5
        //    69: invokeinterface android/database/Cursor.getCount:()I
        //    74: aload           7
        //    76: invokespecial   com/android/mail/utils/H.<init>:([Ljava/lang/String;ILandroid/os/Bundle;)V
        //    79: astore          9
        //    81: aload_1        
        //    82: arraylength    
        //    83: anewarray       Ljava/lang/Object;
        //    86: astore          10
        //    88: aload           5
        //    90: invokeinterface android/database/Cursor.moveToNext:()Z
        //    95: ifeq            212
        //    98: aload           5
        //   100: iconst_0       
        //   101: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   106: astore          11
        //   108: aload           4
        //   110: aload_0        
        //   111: aload_1        
        //   112: aload           11
        //   114: invokespecial   com/android/email/provider/EmailProvider.c:([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   117: iconst_1       
        //   118: anewarray       Ljava/lang/String;
        //   121: dup            
        //   122: iconst_0       
        //   123: aload           11
        //   125: aastore        
        //   126: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //   129: astore          12
        //   131: aload           12
        //   133: invokeinterface android/database/Cursor.moveToNext:()Z
        //   138: ifeq            178
        //   141: iconst_0       
        //   142: istore          14
        //   144: iload           14
        //   146: aload_1        
        //   147: arraylength    
        //   148: if_icmpge       171
        //   151: aload           10
        //   153: iload           14
        //   155: aload           12
        //   157: iload           14
        //   159: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   164: aastore        
        //   165: iinc            14, 1
        //   168: goto            144
        //   171: aload           9
        //   173: aload           10
        //   175: invokevirtual   android/database/MatrixCursor.addRow:([Ljava/lang/Object;)V
        //   178: aload           12
        //   180: invokeinterface android/database/Cursor.close:()V
        //   185: goto            88
        //   188: astore          8
        //   190: aload           5
        //   192: invokeinterface android/database/Cursor.close:()V
        //   197: aload           8
        //   199: athrow         
        //   200: astore          13
        //   202: aload           12
        //   204: invokeinterface android/database/Cursor.close:()V
        //   209: aload           13
        //   211: athrow         
        //   212: iload           6
        //   214: ifeq            223
        //   217: aload_0        
        //   218: aload           9
        //   220: invokespecial   com/android/email/provider/EmailProvider.a:(Landroid/database/MatrixCursor;)V
        //   223: aload           5
        //   225: invokeinterface android/database/Cursor.close:()V
        //   230: aload           9
        //   232: aload_3        
        //   233: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   236: getstatic       com/android/email/provider/EmailProvider.SF:Landroid/net/Uri;
        //   239: invokevirtual   android/database/MatrixCursor.setNotificationUri:(Landroid/content/ContentResolver;Landroid/net/Uri;)V
        //   242: aload           9
        //   244: areturn        
        //   245: iconst_0       
        //   246: istore          6
        //   248: goto            44
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  30     41     188    200    Any
        //  44     88     188    200    Any
        //  88     131    188    200    Any
        //  131    141    200    212    Any
        //  144    165    200    212    Any
        //  171    178    200    212    Any
        //  178    185    188    200    Any
        //  202    212    188    200    Any
        //  217    223    188    200    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0144:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    private Mailbox b(final long n, final int n2) {
        Mailbox mailbox = Mailbox.d(this.getContext(), n, n2);
        if (mailbox == null) {
            final Context context = this.getContext();
            mailbox = Mailbox.b(context, n, n2);
            switch (n2) {
                case 3: {
                    mailbox.Zw = 2L;
                    break;
                }
                case 5: {
                    mailbox.Zw = 1L;
                    break;
                }
            }
            mailbox.ac(context);
        }
        return mailbox;
    }
    
    private com.android.emailcommon.provider.g b(final Uri uri) {
        return com.android.emailcommon.provider.g.t(this.getContext(), Long.parseLong(uri.getLastPathSegment()));
    }
    
    private static String b(final String s, final long n) {
        final StringBuilder append = new StringBuilder("content://").append(EmailContent.AUTHORITY).append("/").append(s);
        String string;
        if (n == -1L) {
            string = "";
        }
        else {
            string = "/" + n;
        }
        return append.append(string).toString();
    }
    
    private static String b(final String[] array) {
        final StringBuilder a = a(kh(), array);
        a.append(", case when hierarchicalName is null then displayName else hierarchicalName end as h_name");
        a.append(" FROM Mailbox WHERE accountKey=? AND type < 64 AND type != 8 ORDER BY h_name");
        return a.toString();
    }
    
    private String b(final String[] array, final String s) {
        int n = 1;
        final long long1 = Long.parseLong(s);
        final ContentValues contentValues = new ContentValues(3);
        if (this.Tf != null && long1 == this.Tf.aaM) {
            contentValues.put("loadMoreUri", b("uiloadmore", long1));
            contentValues.put("capabilities", 32);
        }
        else {
            final Context context = this.getContext();
            final Mailbox v = Mailbox.v(context, long1);
            if (v != null) {
                final o l = com.android.email.service.n.l(context, com.android.emailcommon.provider.Account.m(context, v.Lq));
                if (l != null && l.UZ) {
                    contentValues.put("loadMoreUri", b("uiloadmore", long1));
                }
                contentValues.put("capabilities", a(l, v.Zr, long1));
                Label_0186: {
                    if (array != null) {
                        for (int length = array.length, i = 0; i < length; ++i) {
                            if (TextUtils.equals((CharSequence)array[i], (CharSequence)"persistentId")) {
                                break Label_0186;
                            }
                        }
                        n = 0;
                    }
                }
                if (n != 0) {
                    contentValues.put("persistentId", Base64.encodeToString(v.Vv.getBytes(), 11));
                }
            }
        }
        final StringBuilder a = a(kh(), array, contentValues);
        a.append(" FROM Mailbox WHERE _id=?");
        return a.toString();
    }
    
    private void b(final long n, final long n2) {
        this.c(Long.toString(n), n2);
    }
    
    private void b(Uri build, final String s) {
        if (s != null) {
            build = build.buildUpon().appendPath(s).build();
        }
        final Set<Uri> kf = this.kf();
        if (kf != null) {
            kf.add(build);
            return;
        }
        this.getContext().getContentResolver().notifyChange(build, (ContentObserver)null);
    }
    
    private static void b(final StringBuilder sb) {
        sb.append(',').append("displayName,fromList,").append("toList");
    }
    
    private static Uri bb(final int n) {
        switch (n) {
            default: {
                return null;
            }
            case 8192:
            case 8193:
            case 8194: {
                return com.android.emailcommon.provider.g.Xx;
            }
            case 0:
            case 1: {
                return com.android.emailcommon.provider.Account.Xx;
            }
        }
    }
    
    private static int bc(final int n) {
        switch (n) {
            default: {
                return 1;
            }
            case 0: {
                return 2;
            }
            case 4: {
                return 8;
            }
            case 3: {
                return 4;
            }
            case 6: {
                return 32;
            }
            case 5: {
                return 16;
            }
            case 7: {
                return 64;
            }
            case 9: {
                return 128;
            }
            case 10: {
                return 2048;
            }
            case 8: {
                return 4097;
            }
        }
    }
    
    private int c(final Uri uri) {
        final Context context = this.getContext();
        final com.android.emailcommon.provider.g b = this.b(uri);
        if (b != null) {
            final Mailbox v = Mailbox.v(context, b.YR);
            if (v != null) {
                if (v.Zr == 6 || v.Zr == 3) {
                    com.android.emailcommon.b.a.c(context, b.Lq, b.Ln);
                    final int delete = context.getContentResolver().delete(ContentUris.withAppendedId(com.android.emailcommon.provider.g.YD, b.Ln), (String)null, (String[])null);
                    this.b(v.Ln, v.Lq);
                    this.s(b.Ln);
                    return delete;
                }
                final Mailbox d = Mailbox.d(context, b.Lq, 6);
                if (d != null) {
                    final ContentValues contentValues = new ContentValues();
                    contentValues.put("mailboxKey", d.Ln);
                    final int a = this.a(uri, contentValues, true);
                    this.b(v.Ln, v.Lq);
                    this.s(b.Ln);
                    return a;
                }
            }
        }
        return 0;
    }
    
    private static String c(final String[] array) {
        final StringBuilder a = a(kh(), array);
        a.append(" FROM Mailbox WHERE accountKey=? AND type < 64 AND type != 8 AND parentKey < 0 AND lastTouchedTime > 0 ORDER BY lastTouchedTime DESC");
        return a.toString();
    }
    
    private String c(final String[] array, final String s) {
        final ContentValues contentValues = new ContentValues();
        final long long1 = Long.parseLong(s);
        final Context context = this.getContext();
        final ImmutableSet<String> j = ImmutableSet.j(array);
        final com.android.emailcommon.provider.Account k = com.android.emailcommon.provider.Account.k(context, long1);
        if (k == null) {
            E.c(EmailProvider.TAG, "Account %d not found during genQueryAccount", long1);
        }
        if (j.contains("capabilities")) {
            int i;
            if (k == null) {
                i = 0;
            }
            else {
                i = j(context, k);
            }
            contentValues.put("capabilities", i);
        }
        if (j.contains("accountSettingsIntentUri")) {
            contentValues.put("accountSettingsIntentUri", m("settings", s));
        }
        if (j.contains("composeUri")) {
            contentValues.put("composeUri", n("compose", s));
        }
        if (j.contains("reauthenticationUri")) {
            contentValues.put("reauthenticationUri", w(long1).toString());
        }
        if (j.contains("mimeType")) {
            contentValues.put("mimeType", EmailProvider.Si);
        }
        if (j.contains("color")) {
            contentValues.put("color", EmailProvider.SR);
        }
        final com.android.mail.i.g ao = com.android.mail.i.g.ao(this.getContext());
        if (j.contains("confirm_delete")) {
            String s2;
            if (ao.tM()) {
                s2 = "1";
            }
            else {
                s2 = "0";
            }
            contentValues.put("confirm_delete", s2);
        }
        if (j.contains("confirm_send")) {
            String s3;
            if (ao.tO()) {
                s3 = "1";
            }
            else {
                s3 = "0";
            }
            contentValues.put("confirm_send", s3);
        }
        if (j.contains("swipe")) {
            contentValues.put("swipe", ao.bb(false));
        }
        if (j.contains("conversation_list_icon")) {
            contentValues.put("conversation_list_icon", a(ao));
        }
        if (j.contains("auto_advance")) {
            contentValues.put("auto_advance", Integer.toString(ao.tP()));
        }
        final long c = Mailbox.c(context, long1, 0);
        if (j.contains("default_inbox") && c != -1L) {
            contentValues.put("default_inbox", b("uifolder", c));
        }
        else {
            contentValues.put("default_inbox", b("uiinbox", long1));
        }
        if (j.contains("default_inbox_name") && c != -1L) {
            contentValues.put("default_inbox_name", Mailbox.x(context, c));
        }
        if (j.contains("syncStatus")) {
            if (c != -1L) {
                contentValues.put("syncStatus", 0);
            }
            else {
                contentValues.put("syncStatus", 8);
            }
        }
        if (j.contains("updateSettingsUri")) {
            contentValues.put("updateSettingsUri", b("uiacctsettings", -1L));
        }
        if (j.contains("enableMessageTransforms")) {
            contentValues.put("enableMessageTransforms", 1);
        }
        if (j.contains("securityHold")) {
            int n;
            if (k != null && (0x20 & k.getFlags()) == 0x0) {
                n = 0;
            }
            else {
                n = 1;
            }
            contentValues.put("securityHold", n);
        }
        if (j.contains("accountSecurityUri")) {
            String string;
            if (k == null) {
                string = "";
            }
            else {
                string = AccountSecurity.l(k.getId()).toString();
            }
            contentValues.put("accountSecurityUri", string);
        }
        if (j.contains("importance_markers_enabled")) {
            contentValues.put("importance_markers_enabled", "0");
        }
        if (j.contains("show_chevrons_enabled")) {
            contentValues.put("show_chevrons_enabled", "0");
        }
        o o;
        if (j.contains("setup_intent_uri") && Mailbox.c(context, long1, 6) == -1L) {
            o = com.android.email.service.n.j(context, long1);
            if (o != null && o.Vb) {
                contentValues.put("setup_intent_uri", m("setup", s));
            }
        }
        else {
            o = null;
        }
        if (j.contains("type")) {
            if (o == null) {
                o = com.android.email.service.n.j(context, long1);
            }
            String accountType;
            if (o != null) {
                accountType = o.accountType;
            }
            else {
                accountType = "unknown";
            }
            contentValues.put("type", accountType);
        }
        if (j.contains("move_to_inbox") && c != -1L) {
            contentValues.put("move_to_inbox", b("uifolder", c));
        }
        if (j.contains("syncAuthority")) {
            contentValues.put("syncAuthority", EmailContent.AUTHORITY);
        }
        if (j.contains("quickResponseUri")) {
            contentValues.put("quickResponseUri", o("quickresponse/account", s));
        }
        if (j.contains("settingsFragmentClass")) {
            contentValues.put("settingsFragmentClass", "com.android.email.activity.setup.AccountSettingsFragment");
        }
        if (j.contains("reply_behavior")) {
            int n2;
            if (ao.tz()) {
                n2 = 1;
            }
            else {
                n2 = 0;
            }
            contentValues.put("reply_behavior", n2);
        }
        if (j.contains("show_images")) {
            contentValues.put("show_images", 1);
        }
        final Context context2 = this.getContext();
        if (EmailProvider.SW == null) {
            final C p2 = ProjectionMap.kq().p("_id", "_id").p("folderListUri", k("uifolders", "_id")).p("fullFolderListUri", k("uifullfolders", "_id")).p("allFolderListUri", k("uiallfolders", "_id")).p("name", "displayName").p("accountManagerName", "emailAddress").p("accountId", "emailAddress").p("senderName", "senderName").p("undoUri", "'content://" + EmailContent.AUTHORITY + "/uiundo'").p("accountUri", k("uiaccount", "_id")).p("searchUri", k("uisearch", "_id")).p("providerVersion", "1").p("syncStatus", "0").p("recentFolderListUri", k("uirecentfolders", "_id")).p("defaultRecentFolderListUri", k("uidefaultrecentfolders", "_id")).p("signature", "signature").p("snap_headers", Integer.toString(0)).p("confirm_archive", "0").p("conversation_view_mode", Integer.toString(-1)).p("veiled_address_pattern", null);
            final String string2 = context2.getString(2131296983);
            if (!TextUtils.isEmpty((CharSequence)string2)) {
                p2.p("sendFeedbackIntentUri", "'" + string2 + "'");
            }
            final String string3 = context2.getString(2131296704);
            if (!TextUtils.isEmpty((CharSequence)string3)) {
                p2.p("helpIntentUri", "'" + string3 + "'");
            }
            EmailProvider.SW = p2.kr();
        }
        final StringBuilder a = a(EmailProvider.SW, array, contentValues);
        a.append(" FROM Account WHERE _id=?");
        return a.toString();
    }
    
    private static void c(final SQLiteDatabase sqLiteDatabase, final String s) {
        if (sqLiteDatabase != null) {
            Cursor query;
            ArrayList<Long> list3 = null;
            String[] array = null;
            while (true) {
                query = sqLiteDatabase.query(s, EmailProvider.Sk, (String)null, (String[])null, (String)null, (String)null, (String)null);
                while (true) {
                    ArrayList<Long> list = null;
                    ArrayList<Long> list2 = null;
                    long long1 = 0L;
                    Label_0130: {
                        try {
                            if (query.getCount() == 0) {
                                return;
                            }
                            list = new ArrayList<Long>();
                            list2 = new ArrayList<Long>();
                            list3 = new ArrayList<Long>();
                            array = new String[] { null };
                            while (query.moveToNext()) {
                                long1 = query.getLong(1);
                                if (!list2.contains(long1)) {
                                    break Label_0130;
                                }
                                list3.add(query.getLong(0));
                            }
                            break;
                        }
                        finally {
                            query.close();
                        }
                    }
                    if (!list.contains(long1)) {
                        array[0] = Long.toString(long1);
                        final Cursor query2 = sqLiteDatabase.query("Mailbox", Mailbox.XT, "_id=?", array, (String)null, (String)null, (String)null);
                        try {
                            Label_0192: {
                                if (query2.moveToFirst()) {
                                    list.add(long1);
                                    break Label_0192;
                                }
                                list2.add(long1);
                                list3.add(query.getLong(0));
                                break Label_0192;
                            }
                            continue;
                        }
                        finally {
                            query2.close();
                        }
                        break;
                    }
                    continue;
                }
            }
            final Iterator<Long> iterator = list3.iterator();
            while (iterator.hasNext()) {
                array[0] = Long.toString(iterator.next());
                sqLiteDatabase.delete(s, "_id=?", array);
            }
            query.close();
        }
    }
    
    private void c(final String obj, final long n) {
        this.b(EmailProvider.Sz, obj);
        this.b(EmailProvider.SA, obj);
        if (n != -1L) {
            this.a(EmailProvider.SB, n);
        }
        this.a(EmailProvider.SA, 1152921504606846976L);
        this.a(EmailProvider.SB, 268435456L);
        synchronized (this) {
            if (this.Te == null) {
                this.Te = new Handler(Looper.getMainLooper(), (Handler$Callback)new com.android.email.provider.n(this));
            }
            // monitorexit(this)
            this.Te.removeMessages(0);
            final Message obtain = Message.obtain(this.Te, 0);
            obtain.obj = obj;
            this.Te.sendMessageDelayed(obtain, 2000L);
        }
    }
    
    private int d(final Uri uri) {
        final Context context = this.getContext();
        final long long1 = Long.parseLong(uri.getLastPathSegment());
        final SQLiteDatabase g = this.G(context);
        final Cursor query = g.query("Mailbox", new String[] { "accountKey" }, "_id=" + long1, (String[])null, (String)null, (String)null, (String)null);
        if (query == null || !query.moveToFirst()) {
            E.g(E.TAG, "Null or empty cursor when trying to purge mailbox %d", long1);
            return 0;
        }
        final long long2 = query.getLong(query.getColumnIndex("accountKey"));
        final Cursor query2 = g.query("Message", new String[] { "_id" }, "mailboxKey=" + long1, (String[])null, (String)null, (String)null, (String)null);
        int n = 0;
        while (query2 != null && query2.moveToNext()) {
            final long long3 = query2.getLong(query2.getColumnIndex("_id"));
            com.android.emailcommon.b.a.c(context, long2, long3);
            n += context.getContentResolver().delete(ContentUris.withAppendedId(com.android.emailcommon.provider.g.YD, long3), (String)null, (String[])null);
            this.s(long3);
        }
        this.b(long1, long2);
        return n;
    }
    
    private static Account d(final Context context, final String s, final String s2) {
        final o l = com.android.email.service.n.l(context, s2);
        if (l == null) {
            return null;
        }
        return new Account(s, l.accountType);
    }
    
    private String d(final int n, final String s) {
        int n2 = 0;
        switch (n) {
            default: {
                return s;
            }
            case 2: {
                n2 = 2131296763;
                break;
            }
            case 8: {
                n2 = 2131296764;
                break;
            }
            case 4: {
                n2 = 2131296765;
                break;
            }
            case 32: {
                n2 = 2131296766;
                break;
            }
            case 16: {
                n2 = 2131296767;
                break;
            }
            case 64: {
                n2 = 2131296768;
                break;
            }
            case 128: {
                n2 = 2131296769;
                break;
            }
            case 2048: {
                n2 = 2131296770;
                break;
            }
        }
        return this.getContext().getString(n2);
    }
    
    private static String d(final String[] array) {
        final StringBuilder a = a(kh(), array);
        a.append(" FROM Mailbox WHERE parentKey =? ORDER BY ");
        a.append("CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName COLLATE LOCALIZED ASC");
        return a.toString();
    }
    
    private static void d(final Context context, final long n) {
        final ContentValues contentValues = new ContentValues(2);
        contentValues.putNull("htmlContent");
        contentValues.putNull("textContent");
        a(context, n, contentValues);
    }
    
    public static Folder e(final Context context, final long n) {
        final Cursor query = context.getContentResolver().query(a("uifolder", n), com.android.mail.providers.E.aCv, (String)null, (String[])null, (String)null);
        if (query == null) {
            E.f(EmailProvider.TAG, "Null folder cursor for mailboxId %d", n);
            return null;
        }
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
    
    private void e(final Uri uri) {
        final com.android.emailcommon.provider.g t = com.android.emailcommon.provider.g.t(this.getContext(), Long.parseLong(uri.getLastPathSegment()));
        if (t != null) {
            this.r(t.YR);
        }
    }
    
    private static String[] e(final String[] array) {
        if (ImmutableSet.j(array).contains("unreadSenders")) {
            return com.android.mail.providers.E.aCw;
        }
        return com.android.mail.providers.E.aCv;
    }
    
    private static int f(final Context context, final SQLiteDatabase sqLiteDatabase) {
        final AccountManager value = AccountManager.get(context);
        final Cursor query = sqLiteDatabase.query("Account", com.android.emailcommon.provider.Account.XO, (String)null, (String[])null, (String)null, (String)null, (String)null);
        int n = 0;
        while (true) {
            com.android.emailcommon.provider.Account account = null;
            o l = null;
            Label_0092: {
                try {
                    while (query.moveToNext()) {
                        account = new com.android.emailcommon.provider.Account();
                        account.b(query);
                        l = com.android.email.service.n.l(context, account.aa(context));
                        if (l != null) {
                            break Label_0092;
                        }
                        E.c(E.TAG, "Could not find service info for account", new Object[0]);
                    }
                    break;
                }
                finally {
                    query.close();
                }
            }
            value.setUserData(account.at(l.accountType), "accountJson", account.ad(context));
            ++n;
        }
        query.close();
        return n;
    }
    
    private Cursor f(final String[] array) {
        if (!this.Sq.isEmpty()) {
            G g = null;
            Label_0118: {
                try {
                    g = new G(new String[] { "conversationUri" }, this.Sq.size());
                    final Iterator<ContentProviderOperation> iterator = this.Sq.iterator();
                    while (iterator.hasNext()) {
                        g.addRow((Object[])new String[] { iterator.next().getUri().toString() });
                    }
                    break Label_0118;
                }
                catch (OperationApplicationException ex) {
                    E.c(EmailProvider.TAG, "applyBatch exception", new Object[0]);
                }
                return (Cursor)new G(array, 0);
            }
            this.applyBatch(this.Sq);
            this.Sq.clear();
            return (Cursor)g;
        }
        return (Cursor)new G(array, 0);
    }
    
    private Mailbox f(final Uri uri) {
        return Mailbox.v(this.getContext(), Long.parseLong(uri.getLastPathSegment()));
    }
    
    private static void f(final Context context, final long n) {
        final String a = s.a(context, com.android.emailcommon.provider.Account.CONTENT_URI, EmailProvider.Tg, "_id =?", new String[] { Long.toString(n) });
        if (a == null) {
            E.f(EmailProvider.TAG, "Could not find email address for account %d", n);
        }
        com.android.emailcommon.b.a.C(context, n);
        final ContentResolver contentResolver = context.getContentResolver();
        final String[] array = { Long.toString(n) };
        contentResolver.delete(Mailbox.CONTENT_URI, "accountKey=?", array);
        final ContentValues contentValues = new ContentValues();
        contentValues.putNull("syncKey");
        contentResolver.update(com.android.emailcommon.provider.Account.CONTENT_URI, contentValues, "_id =?", array);
        if (a == null) {
            return;
        }
        final a i = com.android.email.service.n.i(context, n);
        if (i == null) {
            return;
        }
        try {
            i.R(a);
        }
        catch (RemoteException ex) {}
    }
    
    private int g(final Uri uri) {
        final Context context = this.getContext();
        final long long1 = Long.parseLong(uri.getLastPathSegment());
        try {
            if (com.android.emailcommon.provider.Account.k(context, long1) == null) {
                return 0;
            }
            f(context, long1);
            context.getContentResolver().delete(ContentUris.withAppendedId(com.android.emailcommon.provider.Account.CONTENT_URI, long1), (String)null, (String[])null);
            com.android.email.provider.a.D(context);
            SecurityPolicy.w(context).hf();
            J(context);
            return 1;
        }
        catch (Exception ex) {
            E.e(com.android.emailcommon.b.mW, "Exception while deleting account", ex);
            return 0;
        }
    }
    
    private static String i(final String s, final String s2) {
        final StringBuilder sb = new StringBuilder(256);
        sb.append("_id=");
        sb.append(s);
        if (s2 != null) {
            sb.append(" AND (");
            sb.append(s2);
            sb.append(')');
        }
        return sb.toString();
    }
    
    private static int j(final Context context, final com.android.emailcommon.provider.Account account) {
        int i = 0;
        if (account == null) {
            return 0;
        }
        final String aa = account.aa(context);
    Label_0047_Outer:
        while (true) {
        Block_10_Outer:
            while (true) {
                Label_0260: {
                    final String xg;
                    Block_7: {
                        int n;
                        if (TextUtils.equals((CharSequence)context.getString(2131296998), (CharSequence)aa) || TextUtils.equals((CharSequence)context.getString(2131296997), (CharSequence)aa)) {
                            n = 1065057;
                        }
                        else if (TextUtils.equals((CharSequence)context.getString(2131296999), (CharSequence)aa)) {
                            n = 1064960;
                        }
                        else {
                            if (!TextUtils.equals((CharSequence)context.getString(2131297000), (CharSequence)aa)) {
                                break Label_0047_Outer;
                            }
                            xg = account.XG;
                            final double double1 = 2.5;
                            if (xg != null) {
                                break Block_7;
                            }
                            break Label_0200;
                        }
                        final String tag = EmailProvider.TAG;
                        final Object[] array = { account.getId(), aa, n, null };
                        final StringBuilder sb = new StringBuilder(" ");
                        for (int n2 = n; i < 32; ++i, n2 >>= 1) {
                            if ((n2 & 0x1) != 0x0) {
                                sb.append(i).append(" ");
                            }
                        }
                        break Label_0260;
                    }
                    try {
                        final double double1 = Double.parseDouble(xg);
                        if (double1 >= 12.0) {
                            final int n = 1066081;
                            continue Block_10_Outer;
                        }
                        int n = 1065985;
                        continue Block_10_Outer;
                        // iftrue(Label_0325:, TextUtils.isEmpty((CharSequence)context.getResources().getString(2131296704)))
                        // iftrue(Label_0301:, !context.getResources().getBoolean(2131623951))
                    Block_11:
                        while (true) {
                            n |= 0x10000;
                            Label_0301: {
                                break Block_11;
                            }
                            final Object[] array;
                            final StringBuilder sb;
                            array[3] = sb.toString();
                            final String tag;
                            E.c(tag, "getCapabilities() for %d (protocol %s): 0x%x %s", array);
                            continue;
                        }
                        n |= 0x8000;
                        Label_0325: {
                            return 0x1000000 | (0x800000 | (n | 0x200000));
                        }
                        E.e(EmailProvider.TAG, "Unknown protocol for account %d", account.getId());
                        return 0;
                    }
                    catch (NumberFormatException ex) {
                        continue Label_0047_Outer;
                    }
                }
                break;
            }
            break;
        }
    }
    
    private static String j(final String s, final String s2) {
        if (s2 == null) {
            return s;
        }
        return s + " AND (" + s2 + ")";
    }
    
    private static String k(final String s, final String s2) {
        return "'content://" + EmailContent.AUTHORITY + "/" + s + "/' || " + s2;
    }
    
    private void ke() {
        synchronized (EmailProvider.Sn) {
            if (this.Sv != null) {
                this.Sv = null;
            }
            if (this.Sw != null) {
                this.Sw = null;
            }
            final File databasePath = this.getContext().getDatabasePath("EmailProvider.db");
            final File databasePath2 = this.getContext().getDatabasePath("EmailProviderBody.db");
            if (databasePath.exists() && !databasePath2.exists()) {
                E.e(EmailProvider.TAG, "Deleting orphaned EmailProvider database...", new Object[0]);
                this.getContext().deleteDatabase("EmailProvider.db");
            }
            else if (databasePath2.exists() && !databasePath.exists()) {
                E.e(EmailProvider.TAG, "Deleting orphaned EmailProviderBody database...", new Object[0]);
                this.getContext().deleteDatabase("EmailProviderBody.db");
            }
        }
    }
    
    private Set<Uri> kf() {
        return this.SL.get();
    }
    
    private static ProjectionMap kg() {
        if (EmailProvider.SS == null) {
            EmailProvider.SS = ProjectionMap.kq().p("_id", "_id").p("conversationUri", k("uimessage", "_id")).p("messageListUri", k("uimessage", "_id")).p("subject", "subject").p("snippet", "snippet").p("conversationInfo", null).p("dateReceivedMs", "timeStamp").p("hasAttachments", "flagAttachment").p("numMessages", "1").p("numDrafts", "0").p("sendingState", Integer.toString(0)).p("priority", Integer.toString(0)).p("read", "flagRead").p("seen", "flagSeen").p("starred", "flagFavorite").p("conversationFlags", "CASE WHEN (flags&4) !=0 THEN 16 ELSE 0 END + CASE WHEN (flags&524288) !=0 THEN 8 ELSE 0 END + CASE WHEN (flags&262144) !=0 THEN 4 ELSE 0 END").p("accountUri", k("uiaccount", "accountKey")).p("senderInfo", "fromList").p("orderKey", "timeStamp").kr();
        }
        return EmailProvider.SS;
    }
    
    private static ProjectionMap kh() {
        if (EmailProvider.SV == null) {
            EmailProvider.SV = ProjectionMap.kq().p("_id", "_id").p("persistentId", "serverId").p("folderUri", k("uifolder", "_id")).p("name", "displayName").p("hasChildren", "flags&1").p("capabilities", "CASE WHEN (flags&16) !=0 THEN 8 ELSE 0 END").p("syncWindow", "3").p("conversationListUri", k("uimessages", "_id")).p("childFoldersListUri", k("uisubfolders", "_id")).p("unreadCount", "unreadCount").p("totalCount", "CASE WHEN totalCount<0 OR type=3 OR type=4 OR type=6 THEN messageCount ELSE totalCount END").p("refreshUri", k(EmailProvider.Sj, "_id")).p("syncStatus", "uiSyncStatus").p("lastSyncResult", "uiLastSyncResult").p("type", EmailProvider.SU).p("iconResId", "CASE type WHEN 0 THEN 2130837655 WHEN 3 THEN 2130837650 WHEN 4 THEN 2130837659 WHEN 5 THEN 2130837663 WHEN 6 THEN 2130837668 WHEN 9 THEN 2130837667 ELSE 2130837651 END").p("loadMoreUri", k("uiloadmore", "_id")).p("hierarchicalDesc", "hierarchicalName").p("parentUri", "case when parentKey=-1 then NULL else " + k("uifolder", "parentKey") + " end").p("unreadSenders", "(SELECT group_concat(fromList) FROM (SELECT fromList FROM Message WHERE mailboxKey=Mailbox._id AND flagRead=0 GROUP BY fromList ORDER BY timeStamp DESC))").kr();
        }
        return EmailProvider.SV;
    }
    
    private static ProjectionMap ki() {
        if (EmailProvider.SX == null) {
            EmailProvider.SX = ProjectionMap.kq().p("quickResponse", "quickResponse").p("uri", "'" + o("quickresponse", "") + "'||_id").kr();
        }
        return EmailProvider.SX;
    }
    
    private static ProjectionMap kj() {
        if (EmailProvider.SY == null) {
            EmailProvider.SY = ProjectionMap.kq().p("_display_name", "fileName").p("_size", "size").p("uri", k("uiattachment", "_id")).p("contentType", "mimeType").p("state", "uiState").p("destination", "uiDestination").p("downloadedSize", "uiDownloadedSize").p("contentUri", "contentUri").p("flags", "flags").kr();
        }
        return EmailProvider.SY;
    }
    
    private static String kk() {
        return "@CASE WHEN contentUri IS NULL THEN '" + String.format("%s/' || %s || '/' || %s || '/%s", EmailContent$Attachment.Yi, "accountKey", "_id", "RAW") + "' WHEN contentUri IS NOT NULL THEN contentUri END";
    }
    
    private Handler kl() {
        synchronized (this) {
            if (this.Sx == null) {
                this.Sx = new Handler(this.getContext().getMainLooper(), (Handler$Callback)new q(this));
            }
            return this.Sx;
        }
    }
    
    private static String l(final String s, final String s2) {
        return "'content://" + EmailContent.AUTHORITY + "/" + s + "/' || " + s2 + "._id";
    }
    
    private static String m(final String s, final String s2) {
        return EmailProvider.Ta.buildUpon().appendPath(s).appendQueryParameter("account", s2).build().toString();
    }
    
    private static String n(final String s, final String s2) {
        return EmailProvider.Tb.buildUpon().appendPath(s).appendQueryParameter("account", s2).build().toString();
    }
    
    private static String o(final String s, final String s2) {
        return "content://" + EmailContent.AUTHORITY + "/" + s + "/" + s2;
    }
    
    private static boolean p(final long n) {
        return n >= 4294967296L;
    }
    
    private static boolean q(final long n) {
        return n >> 32 == 268435456L;
    }
    
    private void r(final long n) {
        this.b(EmailProvider.Sz, Long.toString(n));
        final Mailbox v = Mailbox.v(this.getContext(), n);
        if (v == null) {
            E.e(EmailProvider.TAG, "No mailbox for notification: " + n, new Object[0]);
            return;
        }
        if (v.Zr == 0) {
            this.b(EmailProvider.Sz, Long.toString(1152921504606846976L));
        }
        this.v(n);
    }
    
    private void s(final long n) {
        this.a(EmailProvider.SG, n);
    }
    
    private void t(final long n) {
        this.b(EmailProvider.SC, Long.toString(n));
        this.b(EmailProvider.SF, null);
    }
    
    private Account u(final long n) {
        final Context context = this.getContext();
        final com.android.emailcommon.provider.Account k = com.android.emailcommon.provider.Account.k(context, n);
        if (k == null) {
            return null;
        }
        return d(context, k.NP, k.aa(context));
    }
    
    private void v(final long n) {
        final Context context = this.getContext();
        if (this.Tj == null) {
            this.Tj = AppWidgetManager.getInstance(context);
            this.Tk = new ComponentName(context, com.android.mail.widget.b.aP(context));
        }
        final int[] appWidgetIds = this.Tj.getAppWidgetIds(this.Tk);
    Label_0328:
        while (true) {
            while (true) {
                String[][] a = null;
                int n2 = 0;
                while (true) {
                    final int length;
                    Label_0090: {
                        if (!Arrays.equals(appWidgetIds, this.Th)) {
                            this.Th = appWidgetIds;
                            a = com.android.mail.widget.b.a(context, appWidgetIds);
                            this.Ti.clear();
                            length = a.length;
                            n2 = 0;
                            break Label_0090;
                        }
                        break Label_0270;
                        while (true) {
                        Block_10_Outer:
                            while (true) {
                                long long1 = 0L;
                                Label_0339: {
                                    try {
                                        final String[] array;
                                        if (!TextUtils.isEmpty((CharSequence)array[1])) {
                                            long1 = Long.parseLong(Uri.parse(array[1]).getLastPathSegment());
                                            if (q(long1)) {
                                                break Label_0339;
                                            }
                                            if (!this.Ti.contains(long1)) {
                                                this.Ti.add(long1);
                                            }
                                        }
                                        ++n2;
                                        break;
                                        final Cursor query = this.query(Mailbox.CONTENT_URI, Mailbox.XT, "type=?", new String[] { Integer.toString(0) }, null);
                                        while (true) {
                                            while (true) {
                                                Block_9: {
                                                    break Block_9;
                                                    Label_0327: {
                                                        return;
                                                    }
                                                    query.close();
                                                    continue Label_0328;
                                                    final Intent intent = new Intent("com.android.mail.ACTION_NOTIFY_DATASET_CHANGED");
                                                    intent.putExtra("folderUri", (Parcelable)a("uifolder", n));
                                                    intent.setType(EmailProvider.Si);
                                                    context.sendBroadcast(intent);
                                                    return;
                                                }
                                                try {
                                                    while (query.moveToNext()) {
                                                        this.Ti.add(query.getLong(0));
                                                    }
                                                }
                                                finally {
                                                    query.close();
                                                }
                                                continue Block_10_Outer;
                                            }
                                            continue;
                                        }
                                    }
                                    // iftrue(Label_0327:, !this.Ti.contains((Object)Long.valueOf(n)))
                                    catch (NumberFormatException ex) {
                                        continue Label_0328;
                                    }
                                }
                                switch ((int)(long1 & 0xFL)) {
                                    case 0: {
                                        continue;
                                    }
                                    default: {
                                        continue Label_0328;
                                    }
                                }
                                break;
                            }
                        }
                    }
                    if (n2 >= length) {
                        continue;
                    }
                    break;
                }
                final String[] array = a[n2];
                if (array != null) {
                    continue;
                }
                break;
            }
            continue Label_0328;
        }
    }
    
    public static Uri w(final long n) {
        final Uri$Builder buildUpon = Uri.parse("auth://" + EmailContent.XX + ".ACCOUNT_SETTINGS/incoming/").buildUpon();
        k.a(buildUpon, n);
        return buildUpon.build();
    }
    
    public ContentProviderResult[] applyBatch(final ArrayList<ContentProviderOperation> list) {
        this.a(new HashSet<Uri>());
        final Context context = this.getContext();
        final SQLiteDatabase g = this.G(context);
        g.beginTransaction();
        ContentProviderResult[] applyBatch;
        try {
            applyBatch = super.applyBatch((ArrayList)list);
            g.setTransactionSuccessful();
            g.endTransaction();
            final Set<Uri> kf = this.kf();
            this.a((Set<Uri>)null);
            final Iterator<Uri> iterator = kf.iterator();
            while (iterator.hasNext()) {
                context.getContentResolver().notifyChange((Uri)iterator.next(), (ContentObserver)null);
            }
        }
        finally {
            g.endTransaction();
            final Set<Uri> kf2 = this.kf();
            this.a((Set<Uri>)null);
            final Iterator<Uri> iterator2 = kf2.iterator();
            while (iterator2.hasNext()) {
                context.getContentResolver().notifyChange((Uri)iterator2.next(), (ContentObserver)null);
            }
        }
        return applyBatch;
    }
    
    public Bundle call(final String s, final String s2, final Bundle bundle) {
        E.c(EmailProvider.TAG, "EmailProvider#call(%s, %s)", s, s2);
        Bundle bundle2;
        if (TextUtils.equals((CharSequence)s, (CharSequence)EmailContent.Yf)) {
            bundle2 = new Bundle(1);
            bundle2.putString(EmailContent.Yf, Build.MODEL);
        }
        else if (TextUtils.equals((CharSequence)s, (CharSequence)"sync_status")) {
            final long long1 = bundle.getLong("id");
            final int int1 = bundle.getInt("status_code");
            this.b(ContentUris.withAppendedId(EmailProvider.Su, long1), null);
            int n;
            if (int1 == 1) {
                n = 1;
            }
            else {
                n = 0;
            }
            if (n != 0) {
                com.android.email.provider.D.K(this.getContext()).x(long1);
                return null;
            }
            final int int2 = bundle.getInt("result");
            final ContentValues contentValues = new ContentValues();
            contentValues.put("uiLastSyncResult", int2);
            this.Sv.update("Mailbox", contentValues, "_id=?", new String[] { String.valueOf(long1) });
            return null;
        }
        else {
            if (TextUtils.equals((CharSequence)s, (CharSequence)"fix_parent_keys")) {
                D(this.G(this.getContext()));
                return null;
            }
            final long long2 = Long.parseLong(Uri.parse(s2).getPathSegments().get(1));
            Object o;
            if (TextUtils.equals((CharSequence)s, (CharSequence)"send_message")) {
                com.android.emailcommon.provider.g t;
                if (bundle.containsKey("_id")) {
                    t = com.android.emailcommon.provider.g.t(this.getContext(), bundle.getLong("_id"));
                }
                else {
                    t = new com.android.emailcommon.provider.g();
                }
                if (t == null) {
                    o = null;
                }
                else {
                    final Mailbox b = this.b(long2, 4);
                    if (b == null) {
                        o = null;
                    }
                    else if (this.b(long2, 5) == null) {
                        o = null;
                    }
                    else {
                        o = this.a(t, b, bundle);
                        this.b(Mailbox.CONTENT_URI, null);
                    }
                }
                r.s(this.getContext()).i(long2);
            }
            else if (TextUtils.equals((CharSequence)s, (CharSequence)"save_message")) {
                final Mailbox b2 = this.b(long2, 3);
                if (b2 == null) {
                    o = null;
                }
                else {
                    com.android.emailcommon.provider.g t2;
                    if (bundle.containsKey("_id")) {
                        t2 = com.android.emailcommon.provider.g.t(this.getContext(), bundle.getLong("_id"));
                    }
                    else {
                        t2 = null;
                    }
                    if (t2 == null) {
                        t2 = new com.android.emailcommon.provider.g();
                    }
                    o = this.a(t2, b2, bundle);
                }
            }
            else if (TextUtils.equals((CharSequence)s, (CharSequence)"set_current_account")) {
                E.c(EmailProvider.TAG, "Unhandled (but expected) Content provider method: %s", s);
                o = null;
            }
            else {
                E.g(EmailProvider.TAG, "Unexpected Content provider method: %s", s);
                o = null;
            }
            bundle2 = null;
            if (o != null) {
                final Bundle bundle3 = new Bundle(1);
                bundle3.putParcelable("messageUri", (Parcelable)o);
                return bundle3;
            }
        }
        return bundle2;
    }
    
    public int delete(final Uri p0, final String p1, final String[] p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //     3: new             Ljava/lang/StringBuilder;
        //     6: dup            
        //     7: ldc_w           "Delete: "
        //    10: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    13: aload_1        
        //    14: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //    17: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    20: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    23: pop            
        //    24: aload_1        
        //    25: ldc_w           "delete"
        //    28: invokestatic    com/android/email/provider/EmailProvider.a:(Landroid/net/Uri;Ljava/lang/String;)I
        //    31: istore          5
        //    33: aload_0        
        //    34: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //    37: astore          6
        //    39: aload_0        
        //    40: aload           6
        //    42: invokespecial   com/android/email/provider/EmailProvider.G:(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
        //    45: astore          7
        //    47: iload           5
        //    49: bipush          12
        //    51: ishr           
        //    52: istore          8
        //    54: getstatic       com/android/email/provider/EmailProvider.Sl:Landroid/util/SparseArray;
        //    57: iload           8
        //    59: invokevirtual   android/util/SparseArray.valueAt:(I)Ljava/lang/Object;
        //    62: checkcast       Ljava/lang/String;
        //    65: astore          9
        //    67: iload           5
        //    69: sipush          8193
        //    72: if_icmpeq       83
        //    75: iload           5
        //    77: sipush          8194
        //    80: if_icmpne       99
        //    83: aload_1        
        //    84: ldc_w           "is_uiprovider"
        //    87: iconst_0       
        //    88: invokevirtual   android/net/Uri.getBooleanQueryParameter:(Ljava/lang/String;Z)Z
        //    91: ifne            99
        //    94: aload_0        
        //    95: aload_1        
        //    96: invokespecial   com/android/email/provider/EmailProvider.e:(Landroid/net/Uri;)V
        //    99: iload           5
        //   101: lookupswitch {
        //                0: 615
        //                1: 615
        //             4096: 615
        //             4097: 615
        //             8192: 615
        //             8193: 615
        //             8194: 615
        //             8195: 527
        //            36867: 473
        //            36871: 515
        //            36877: 479
        //            36884: 521
        //          default: 208
        //        }
        //   208: iconst_0       
        //   209: istore          11
        //   211: iload           5
        //   213: lookupswitch {
        //                0: 945
        //                1: 630
        //             4096: 945
        //             4097: 630
        //             8192: 945
        //             8193: 630
        //             8194: 630
        //             8196: 964
        //             8197: 986
        //            12288: 945
        //            12289: 630
        //            12290: 895
        //            16384: 945
        //            16385: 630
        //            20480: 945
        //            20481: 630
        //            24576: 945
        //            24577: 630
        //            28672: 945
        //            28673: 630
        //            32769: 630
        //            40960: 945
        //            40961: 630
        //            45057: 630
        //          default: 416
        //        }
        //   416: new             Ljava/lang/IllegalArgumentException;
        //   419: dup            
        //   420: new             Ljava/lang/StringBuilder;
        //   423: dup            
        //   424: ldc_w           "Unknown URI "
        //   427: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   430: aload_1        
        //   431: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   434: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   437: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //   440: athrow         
        //   441: astore          12
        //   443: iload           11
        //   445: istore          13
        //   447: aload_0        
        //   448: invokespecial   com/android/email/provider/EmailProvider.ke:()V
        //   451: aload           12
        //   453: athrow         
        //   454: astore          10
        //   456: iload           13
        //   458: istore          11
        //   460: iload           11
        //   462: ifeq            470
        //   465: aload           7
        //   467: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   470: aload           10
        //   472: athrow         
        //   473: aload_0        
        //   474: aload_1        
        //   475: invokespecial   com/android/email/provider/EmailProvider.c:(Landroid/net/Uri;)I
        //   478: ireturn        
        //   479: aload_0        
        //   480: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //   483: astore          33
        //   485: aload_1        
        //   486: invokevirtual   android/net/Uri.getLastPathSegment:()Ljava/lang/String;
        //   489: invokestatic    java/lang/Long.parseLong:(Ljava/lang/String;)J
        //   492: lstore          34
        //   494: aload           33
        //   496: lload           34
        //   498: invokestatic    com/android/emailcommon/provider/Account.k:(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;
        //   501: ifnonnull       506
        //   504: iconst_0       
        //   505: ireturn        
        //   506: aload           33
        //   508: lload           34
        //   510: invokestatic    com/android/email/provider/EmailProvider.f:(Landroid/content/Context;J)V
        //   513: iconst_1       
        //   514: ireturn        
        //   515: aload_0        
        //   516: aload_1        
        //   517: invokespecial   com/android/email/provider/EmailProvider.g:(Landroid/net/Uri;)I
        //   520: ireturn        
        //   521: aload_0        
        //   522: aload_1        
        //   523: invokespecial   com/android/email/provider/EmailProvider.d:(Landroid/net/Uri;)I
        //   526: ireturn        
        //   527: aload           7
        //   529: aload           9
        //   531: getstatic       com/android/emailcommon/provider/g.YI:[Ljava/lang/String;
        //   534: aload_2        
        //   535: aload_3        
        //   536: aconst_null    
        //   537: aconst_null    
        //   538: aconst_null    
        //   539: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   542: astore          30
        //   544: aload           30
        //   546: invokeinterface android/database/Cursor.moveToFirst:()Z
        //   551: ifeq            586
        //   554: aload_0        
        //   555: getstatic       com/android/emailcommon/provider/g.CONTENT_URI:Landroid/net/Uri;
        //   558: aload           30
        //   560: iconst_0       
        //   561: invokeinterface android/database/Cursor.getLong:(I)J
        //   566: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //   569: aconst_null    
        //   570: aconst_null    
        //   571: invokevirtual   com/android/email/provider/EmailProvider.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //   574: istore          32
        //   576: aload           30
        //   578: invokeinterface android/database/Cursor.close:()V
        //   583: iload           32
        //   585: ireturn        
        //   586: aload           30
        //   588: invokeinterface android/database/Cursor.close:()V
        //   593: iconst_0       
        //   594: ireturn        
        //   595: astore          31
        //   597: aload           30
        //   599: invokeinterface android/database/Cursor.close:()V
        //   604: aload           31
        //   606: athrow         
        //   607: astore          12
        //   609: iconst_0       
        //   610: istore          13
        //   612: goto            447
        //   615: iconst_1       
        //   616: istore          13
        //   618: aload           7
        //   620: invokevirtual   android/database/sqlite/SQLiteDatabase.beginTransaction:()V
        //   623: iload           13
        //   625: istore          11
        //   627: goto            211
        //   630: aload_1        
        //   631: invokevirtual   android/net/Uri.getPathSegments:()Ljava/util/List;
        //   634: iconst_1       
        //   635: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   640: checkcast       Ljava/lang/String;
        //   643: astore          16
        //   645: iload           5
        //   647: sipush          8194
        //   650: if_icmpne       699
        //   653: aload           7
        //   655: new             Ljava/lang/StringBuilder;
        //   658: dup            
        //   659: ldc_w           "insert or replace into Message_Deletes select * from Message where _id="
        //   662: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   665: aload           16
        //   667: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   670: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   673: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   676: aload           7
        //   678: new             Ljava/lang/StringBuilder;
        //   681: dup            
        //   682: ldc_w           "delete from Message_Updates where _id="
        //   685: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   688: aload           16
        //   690: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   693: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   696: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   699: iload           5
        //   701: sipush          4097
        //   704: if_icmpne       848
        //   707: aload           6
        //   709: aload           16
        //   711: invokestatic    com/android/emailcommon/provider/Mailbox.q:(Landroid/content/Context;Ljava/lang/String;)J
        //   714: lstore          28
        //   716: aload           7
        //   718: aload           9
        //   720: aload           16
        //   722: aload_2        
        //   723: invokestatic    com/android/email/provider/EmailProvider.i:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   726: aload_3        
        //   727: invokevirtual   android/database/sqlite/SQLiteDatabase.delete:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
        //   730: istore          15
        //   732: iload           5
        //   734: iconst_1       
        //   735: if_icmpne       856
        //   738: aload_0        
        //   739: getstatic       com/android/email/provider/EmailProvider.SC:Landroid/net/Uri;
        //   742: aload           16
        //   744: invokespecial   com/android/email/provider/EmailProvider.b:(Landroid/net/Uri;Ljava/lang/String;)V
        //   747: aload_0        
        //   748: getstatic       com/android/email/provider/EmailProvider.SF:Landroid/net/Uri;
        //   751: aconst_null    
        //   752: invokespecial   com/android/email/provider/EmailProvider.b:(Landroid/net/Uri;Ljava/lang/String;)V
        //   755: iload           11
        //   757: ifeq            813
        //   760: iload           5
        //   762: sipush          8193
        //   765: if_icmpne       1029
        //   768: aload           16
        //   770: invokestatic    java/lang/Long.valueOf:(Ljava/lang/String;)Ljava/lang/Long;
        //   773: invokevirtual   java/lang/Long.longValue:()J
        //   776: lstore          17
        //   778: aload           6
        //   780: lload           17
        //   782: invokestatic    com/android/email/provider/EmailProvider.d:(Landroid/content/Context;J)V
        //   785: aload           7
        //   787: new             Ljava/lang/StringBuilder;
        //   790: dup            
        //   791: ldc_w           "delete from Body where messageKey="
        //   794: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   797: aload           16
        //   799: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   802: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   805: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   808: aload           7
        //   810: invokevirtual   android/database/sqlite/SQLiteDatabase.setTransactionSuccessful:()V
        //   813: iload           11
        //   815: ifeq            823
        //   818: aload           7
        //   820: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   823: aload_0        
        //   824: iload           5
        //   826: invokestatic    com/android/email/provider/EmailProvider.bb:(I)Landroid/net/Uri;
        //   829: ldc_w           "delete"
        //   832: aload           16
        //   834: invokespecial   com/android/email/provider/EmailProvider.a:(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
        //   837: aload_0        
        //   838: getstatic       com/android/emailcommon/provider/EmailContent.CONTENT_URI:Landroid/net/Uri;
        //   841: aconst_null    
        //   842: invokespecial   com/android/email/provider/EmailProvider.b:(Landroid/net/Uri;Ljava/lang/String;)V
        //   845: iload           15
        //   847: ireturn        
        //   848: ldc2_w          -1
        //   851: lstore          28
        //   853: goto            716
        //   856: iload           5
        //   858: sipush          4097
        //   861: if_icmpne       875
        //   864: aload_0        
        //   865: aload           16
        //   867: lload           28
        //   869: invokespecial   com/android/email/provider/EmailProvider.c:(Ljava/lang/String;J)V
        //   872: goto            755
        //   875: iload           5
        //   877: sipush          12289
        //   880: if_icmpne       755
        //   883: aload_0        
        //   884: getstatic       com/android/email/provider/EmailProvider.SD:Landroid/net/Uri;
        //   887: aload           16
        //   889: invokespecial   com/android/email/provider/EmailProvider.b:(Landroid/net/Uri;Ljava/lang/String;)V
        //   892: goto            755
        //   895: aload_1        
        //   896: invokevirtual   android/net/Uri.getPathSegments:()Ljava/util/List;
        //   899: iconst_2       
        //   900: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   905: checkcast       Ljava/lang/String;
        //   908: astore          16
        //   910: aload           7
        //   912: aload           9
        //   914: new             Ljava/lang/StringBuilder;
        //   917: dup            
        //   918: ldc_w           "messageKey="
        //   921: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   924: aload           16
        //   926: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   929: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   932: aload_2        
        //   933: invokestatic    com/android/email/provider/EmailProvider.j:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   936: aload_3        
        //   937: invokevirtual   android/database/sqlite/SQLiteDatabase.delete:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
        //   940: istore          15
        //   942: goto            755
        //   945: aload           7
        //   947: aload           9
        //   949: aload_2        
        //   950: aload_3        
        //   951: invokevirtual   android/database/sqlite/SQLiteDatabase.delete:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
        //   954: istore          15
        //   956: ldc_w           "0"
        //   959: astore          16
        //   961: goto            755
        //   964: aload           7
        //   966: ldc_w           "MessageMove"
        //   969: aload_2        
        //   970: aload_3        
        //   971: invokevirtual   android/database/sqlite/SQLiteDatabase.delete:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
        //   974: pop            
        //   975: iconst_m1      
        //   976: istore          15
        //   978: ldc_w           "0"
        //   981: astore          16
        //   983: goto            755
        //   986: aload           7
        //   988: ldc_w           "MessageStateChange"
        //   991: aload_2        
        //   992: aload_3        
        //   993: invokevirtual   android/database/sqlite/SQLiteDatabase.delete:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
        //   996: pop            
        //   997: iconst_m1      
        //   998: istore          15
        //  1000: ldc_w           "0"
        //  1003: astore          16
        //  1005: goto            755
        //  1008: astore          19
        //  1010: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //  1013: aload           19
        //  1015: ldc_w           "Exception while deleting bodies"
        //  1018: iconst_0       
        //  1019: anewarray       Ljava/lang/Object;
        //  1022: invokestatic    com/android/mail/utils/E.a:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1025: pop            
        //  1026: goto            785
        //  1029: aload           7
        //  1031: ldc_w           "select messageKey from Body except select _id from Message"
        //  1034: aconst_null    
        //  1035: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //  1038: astore          21
        //  1040: aload           21
        //  1042: invokeinterface android/database/Cursor.moveToNext:()Z
        //  1047: ifeq            1103
        //  1050: aload           21
        //  1052: iconst_0       
        //  1053: invokeinterface android/database/Cursor.getLong:(I)J
        //  1058: lstore          23
        //  1060: aload           6
        //  1062: lload           23
        //  1064: invokestatic    com/android/email/provider/EmailProvider.d:(Landroid/content/Context;J)V
        //  1067: goto            1040
        //  1070: astore          25
        //  1072: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //  1075: aload           25
        //  1077: ldc_w           "Exception while deleting bodies"
        //  1080: iconst_0       
        //  1081: anewarray       Ljava/lang/Object;
        //  1084: invokestatic    com/android/mail/utils/E.a:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1087: pop            
        //  1088: goto            1040
        //  1091: astore          22
        //  1093: aload           21
        //  1095: invokeinterface android/database/Cursor.close:()V
        //  1100: aload           22
        //  1102: athrow         
        //  1103: aload           21
        //  1105: invokeinterface android/database/Cursor.close:()V
        //  1110: aload           7
        //  1112: ldc_w           "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"
        //  1115: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //  1118: goto            808
        //  1121: astore          10
        //  1123: iconst_0       
        //  1124: istore          11
        //  1126: goto            460
        //  1129: astore          12
        //  1131: goto            447
        //  1134: astore          10
        //  1136: goto            460
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  83     99     607    615    Landroid/database/sqlite/SQLiteException;
        //  83     99     1121   1129   Any
        //  416    441    441    447    Landroid/database/sqlite/SQLiteException;
        //  416    441    1134   1139   Any
        //  447    454    454    460    Any
        //  473    479    607    615    Landroid/database/sqlite/SQLiteException;
        //  473    479    1121   1129   Any
        //  479    504    607    615    Landroid/database/sqlite/SQLiteException;
        //  479    504    1121   1129   Any
        //  506    513    607    615    Landroid/database/sqlite/SQLiteException;
        //  506    513    1121   1129   Any
        //  515    521    607    615    Landroid/database/sqlite/SQLiteException;
        //  515    521    1121   1129   Any
        //  521    527    607    615    Landroid/database/sqlite/SQLiteException;
        //  521    527    1121   1129   Any
        //  527    544    607    615    Landroid/database/sqlite/SQLiteException;
        //  527    544    1121   1129   Any
        //  544    576    595    607    Any
        //  576    583    607    615    Landroid/database/sqlite/SQLiteException;
        //  576    583    1121   1129   Any
        //  586    593    607    615    Landroid/database/sqlite/SQLiteException;
        //  586    593    1121   1129   Any
        //  597    607    607    615    Landroid/database/sqlite/SQLiteException;
        //  597    607    1121   1129   Any
        //  618    623    1129   1134   Landroid/database/sqlite/SQLiteException;
        //  618    623    454    460    Any
        //  630    645    441    447    Landroid/database/sqlite/SQLiteException;
        //  630    645    1134   1139   Any
        //  653    699    441    447    Landroid/database/sqlite/SQLiteException;
        //  653    699    1134   1139   Any
        //  707    716    441    447    Landroid/database/sqlite/SQLiteException;
        //  707    716    1134   1139   Any
        //  716    732    441    447    Landroid/database/sqlite/SQLiteException;
        //  716    732    1134   1139   Any
        //  738    755    441    447    Landroid/database/sqlite/SQLiteException;
        //  738    755    1134   1139   Any
        //  768    778    441    447    Landroid/database/sqlite/SQLiteException;
        //  768    778    1134   1139   Any
        //  778    785    1008   1029   Ljava/lang/IllegalStateException;
        //  778    785    441    447    Landroid/database/sqlite/SQLiteException;
        //  778    785    1134   1139   Any
        //  785    808    441    447    Landroid/database/sqlite/SQLiteException;
        //  785    808    1134   1139   Any
        //  808    813    441    447    Landroid/database/sqlite/SQLiteException;
        //  808    813    1134   1139   Any
        //  864    872    441    447    Landroid/database/sqlite/SQLiteException;
        //  864    872    1134   1139   Any
        //  883    892    441    447    Landroid/database/sqlite/SQLiteException;
        //  883    892    1134   1139   Any
        //  895    942    441    447    Landroid/database/sqlite/SQLiteException;
        //  895    942    1134   1139   Any
        //  945    956    441    447    Landroid/database/sqlite/SQLiteException;
        //  945    956    1134   1139   Any
        //  964    975    441    447    Landroid/database/sqlite/SQLiteException;
        //  964    975    1134   1139   Any
        //  986    997    441    447    Landroid/database/sqlite/SQLiteException;
        //  986    997    1134   1139   Any
        //  1010   1026   441    447    Landroid/database/sqlite/SQLiteException;
        //  1010   1026   1134   1139   Any
        //  1029   1040   441    447    Landroid/database/sqlite/SQLiteException;
        //  1029   1040   1134   1139   Any
        //  1040   1060   1091   1103   Any
        //  1060   1067   1070   1091   Ljava/lang/IllegalStateException;
        //  1060   1067   1091   1103   Any
        //  1072   1088   1091   1103   Any
        //  1093   1103   441    447    Landroid/database/sqlite/SQLiteException;
        //  1093   1103   1134   1139   Any
        //  1103   1118   441    447    Landroid/database/sqlite/SQLiteException;
        //  1103   1118   1134   1139   Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 370, Size: 370
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3553)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public void dump(final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        final Context context = this.getContext();
        printWriter.println("Installed services:");
        final Iterator<o> iterator = com.android.email.service.n.P(context).iterator();
        while (iterator.hasNext()) {
            printWriter.println("  " + iterator.next());
        }
        printWriter.println();
        printWriter.println("Accounts: ");
        final Cursor query = this.query(com.android.emailcommon.provider.Account.CONTENT_URI, com.android.emailcommon.provider.Account.XO, null, null, null);
        if (query.getCount() == 0) {
            printWriter.println("  None");
        }
        while (true) {
            while (true) {
                com.android.emailcommon.provider.Account account = null;
                Label_0248: {
                    try {
                        while (query.moveToNext()) {
                            account = new com.android.emailcommon.provider.Account();
                            account.b(query);
                            printWriter.println("  Account " + account.Xy);
                            final HostAuth u = HostAuth.u(context, account.XC);
                            if (u != null) {
                                final StringBuilder append = new StringBuilder("    Protocol = ").append(u.Zh);
                                if (!TextUtils.isEmpty((CharSequence)account.XG)) {
                                    break Label_0248;
                                }
                                final String string = "";
                                printWriter.println(append.append(string).toString());
                            }
                        }
                        break;
                    }
                    finally {
                        query.close();
                    }
                }
                final String string = " version " + account.XG;
                continue;
            }
        }
        query.close();
    }
    
    public String getType(final Uri uri) {
        final int a = a(uri, "getType");
        String string = null;
        switch (a) {
            default: {
                return string;
            }
            case 40961: {
                return "vnd.android.cursor.item/email-body";
            }
            case 40960: {
                return "vnd.android.cursor.dir/email-body";
            }
            case 8193:
            case 20481: {
                String string2 = "vnd.android.cursor.item/email-message";
                final String queryParameter = uri.getQueryParameter("mailboxId");
                if (queryParameter != null) {
                    string2 = string2 + "-" + queryParameter;
                }
                return string2;
            }
            case 8192:
            case 20480: {
                return "vnd.android.cursor.dir/email-message";
            }
            case 4096: {
                return "vnd.android.cursor.dir/email-mailbox";
            }
            case 4097: {
                return "vnd.android.cursor.item/email-mailbox";
            }
            case 0: {
                return "vnd.android.cursor.dir/email-account";
            }
            case 1: {
                return "vnd.android.cursor.item/email-account";
            }
            case 12288:
            case 12290: {
                return "vnd.android.cursor.dir/email-attachment";
            }
            case 12289: {
                return "vnd.android.cursor.item/email-attachment";
            }
            case 16384: {
                return "vnd.android.cursor.dir/email-hostauth";
            }
            case 16385: {
                return "vnd.android.cursor.item/email-hostauth";
            }
            case 12291: {
                final Cursor query = this.G(this.getContext()).query("Attachment", EmailProvider.Ry, "cachedFile=?", new String[] { uri.toString() }, (String)null, (String)null, (String)null, (String)null);
                Label_0335: {
                    if (query == null) {
                        break Label_0335;
                    }
                    try {
                        if (query.moveToFirst()) {
                            string = query.getString(0);
                            return string;
                        }
                        string = null;
                        return null;
                    }
                    finally {
                        if (query != null) {
                            query.close();
                        }
                    }
                }
                break;
            }
        }
    }
    
    public Uri insert(final Uri uri, final ContentValues contentValues) {
        Log.d(EmailProvider.TAG, "Insert: " + uri);
        final int a = a(uri, "insert");
        final Context context = this.getContext();
        final SQLiteDatabase g = this.G(context);
        final int n = a >> 12;
        if (a == 4097 || a == 4096) {
            contentValues.put("unreadCount", 0);
            contentValues.put("messageCount", 0);
        }
        Uri uri2 = null;
        Label_0360: {
            switch (a) {
                default: {
                    try {
                        throw new IllegalArgumentException("Unknown URL " + uri);
                    }
                    catch (SQLiteException ex) {
                        this.ke();
                        throw ex;
                    }
                }
                case 40960: {
                    final ContentValues contentValues2 = new ContentValues(contentValues);
                    contentValues2.remove("htmlContent");
                    contentValues2.remove("textContent");
                    uri2 = ContentUris.withAppendedId(uri, g.insert("Body", "foo", contentValues2));
                    if (!contentValues.containsKey("messageKey")) {
                        throw new IllegalArgumentException("Cannot insert body without MESSAGE_KEY");
                    }
                    final long longValue = contentValues.getAsLong("messageKey");
                    d(context, longValue);
                    a(this.getContext(), longValue, contentValues);
                    break;
                }
                case 8192:
                case 20480:
                case 24576: {
                    a(contentValues);
                }
                case 0:
                case 4096:
                case 12288:
                case 16384:
                case 28672:
                case 32768:
                case 45056: {
                    final long insert = g.insert((String)EmailProvider.Sl.valueAt(n), "foo", contentValues);
                    uri2 = ContentUris.withAppendedId(uri, insert);
                    switch (a) {
                        case 0: {
                            this.a(insert, contentValues);
                            if (!uri.getBooleanQueryParameter("is_uiprovider", false)) {
                                this.t(insert);
                            }
                            this.b(EmailProvider.SF, null);
                            break Label_0360;
                        }
                        case 8192: {
                            final long longValue2 = contentValues.getAsLong("mailboxKey");
                            if (!uri.getBooleanQueryParameter("is_uiprovider", false)) {
                                this.r(longValue2);
                            }
                            this.b(longValue2, contentValues.getAsLong("accountKey"));
                            break Label_0360;
                        }
                        case 4096: {
                            if (!contentValues.containsKey("type") || contentValues.getAsInteger("type") >= 64) {
                                break Label_0360;
                            }
                            final Long asLong = contentValues.getAsLong("accountKey");
                            if (asLong != null && asLong > 0L) {
                                this.a(EmailProvider.SC, asLong);
                                this.a(EmailProvider.SB, asLong);
                                break Label_0360;
                            }
                            break Label_0360;
                        }
                        case 20480:
                        case 24576: {
                            throw new IllegalArgumentException("Unknown URL " + uri);
                        }
                        case 12288: {
                            final boolean containsKey = contentValues.containsKey("flags");
                            int intValue = 0;
                            if (containsKey) {
                                intValue = contentValues.getAsInteger("flags");
                            }
                            if (TextUtils.isEmpty((CharSequence)contentValues.getAsString("location"))) {
                                E.d(EmailProvider.TAG, new Throwable(), "attachment with blank location", new Object[0]);
                            }
                            this.SN.a(this.getContext(), insert, intValue);
                            break Label_0360;
                        }
                        default: {
                            break Label_0360;
                        }
                    }
                    break;
                }
                case 32770: {
                    contentValues.put("accountKey", Long.parseLong(uri.getPathSegments().get(2)));
                    return this.insert(com.android.emailcommon.provider.q.CONTENT_URI, contentValues);
                }
                case 4097: {
                    contentValues.put("mailboxKey", Long.parseLong(uri.getPathSegments().get(1)));
                    return this.insert(com.android.emailcommon.provider.g.CONTENT_URI, contentValues);
                }
                case 8193: {
                    contentValues.put("messageKey", Long.parseLong(uri.getPathSegments().get(1)));
                    return this.insert(EmailContent$Attachment.CONTENT_URI, contentValues);
                }
                case 1: {
                    contentValues.put("accountKey", Long.parseLong(uri.getPathSegments().get(1)));
                    return this.insert(Mailbox.CONTENT_URI, contentValues);
                }
                case 12290: {
                    uri2 = ContentUris.withAppendedId(EmailContent$Attachment.CONTENT_URI, g.insert((String)EmailProvider.Sl.valueAt(n), "foo", contentValues));
                    break;
                }
            }
        }
        this.a(bb(a), "insert", "0");
        this.b(EmailContent.CONTENT_URI, null);
        return uri2;
    }
    
    public boolean onCreate() {
        final Context context = this.getContext();
        EmailContent.g(context);
        synchronized (EmailProvider.Sm) {
            if (EmailProvider.Ss == null) {
                EmailProvider.Ss = Uri.parse("content://" + EmailContent.AUTHORITY + "/integrityCheck");
                EmailProvider.St = Uri.parse("content://" + EmailContent.AUTHORITY + "/accountBackup");
                EmailProvider.Su = Uri.parse("content://" + EmailContent.AUTHORITY + "/status");
                EmailProvider.Si = context.getString(2131297001);
                final String string = EmailContent.XX + ".uinotifications";
                EmailProvider.Sz = Uri.parse("content://" + string + "/uimessages");
                EmailProvider.SA = Uri.parse("content://" + string + "/uifolder");
                EmailProvider.SB = Uri.parse("content://" + string + "/uifolders");
                EmailProvider.SC = Uri.parse("content://" + string + "/uiaccount");
                EmailProvider.SD = Uri.parse("content://" + string + "/uiattachment");
                EmailProvider.SE = Uri.parse("content://" + string + "/uiattachments");
                EmailProvider.SF = Uri.parse("content://" + string + "/uiaccts");
                EmailProvider.SG = Uri.parse("content://" + string + "/uimessage");
                EmailProvider.SH = Uri.parse("content://" + string + "/uirecentfolders");
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "account", 0);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "account/#", 1);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "accountCheck/#", 2);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "mailbox", 4096);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "mailbox/*", 4097);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "mailboxNotification/#", 4098);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "mailboxMostRecentMessage/#", 4099);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "mailboxCount/#", 4100);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "message", 8192);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "message/#", 8193);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "attachment", 12288);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "attachment/#", 12289);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "attachment/message/#", 12290);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "attachment/cachedFile", 12291);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "body", 40960);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "body/#", 40961);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "bodyHtml/#", 40962);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "bodyText/#", 40963);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "hostauth", 16384);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "hostauth/*", 16385);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "credential", 45056);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "credential/*", 45057);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "syncedMessage/#", 8194);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "messageBySelection", 8195);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "messageMove", 8196);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "messageChange", 8197);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "deletedMessage", 24576);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "deletedMessage/#", 24577);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "updatedMessage", 20480);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "updatedMessage/#", 20481);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "policy", 28672);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "policy/#", 28673);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "quickresponse", 32768);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "quickresponse/#", 32769);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "quickresponse/account/#", 32770);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uifolders/#", 36864);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uifullfolders/#", 36882);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uiallfolders/#", 36883);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uisubfolders/#", 36865);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uimessages/#", 36866);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uimessage/#", 36867);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uiundo", 36868);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, EmailProvider.Sj + "/#", 36869);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uifolder/*", 36870);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uiinbox/#", 36885);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uiaccount/#", 36871);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uiaccts", 36872);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uiacctsettings", 36886);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uiattachments/#", 36873);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uiattachment/#", 36874);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uiattachmentbycid/#/*", 36875);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uisearch/#", 36876);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uiaccountdata/#", 36877);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uiloadmore/#", 36878);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uiconversation/#", 36879);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uirecentfolders/#", 36880);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uidefaultrecentfolders/#", 36881);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "pickTrashFolder/#", 3);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "pickSentFolder/#", 4);
                EmailProvider.Sm.addURI(EmailContent.AUTHORITY, "uipurgefolder/#", 36884);
            }
            // monitorexit(EmailProvider.Sm)
            b.g(context);
            I(context);
            if (context.getResources().getBoolean(2131623954)) {
                com.android.emailcommon.b.g.a(new com.android.email.provider.k(context));
            }
            final Intent intent = new Intent("com.android.mail.ACTION_NOTIFY_DATASET_CHANGED");
            intent.putExtra("update-all-widgets", true);
            intent.setType(context.getString(2131297001));
            context.sendBroadcast(intent);
            context.registerComponentCallbacks((ComponentCallbacks)new l(this, new Configuration(context.getResources().getConfiguration())));
            com.android.mail.i.g.ao(context).registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
            return false;
        }
    }
    
    public void onSharedPreferenceChanged(final SharedPreferences sharedPreferences, final String s) {
        if ("removal-action".equals(s) || "conversation-list-swipe".equals(s) || "conversation-list-sender-image".equals(s) || "default-reply-all".equals(s) || "conversation-overview-mode".equals(s) || "auto-advance-mode".equals(s) || "snap-header-mode".equals(s) || "confirm-delete".equals(s) || "confirm-archive".equals(s) || "confirm-send".equals(s)) {
            this.b(EmailProvider.SF, null);
        }
    }
    
    public ParcelFileDescriptor openFile(final Uri uri, final String s) {
        if (E.isLoggable(EmailProvider.TAG, 3)) {
            E.c(EmailProvider.TAG, "EmailProvider.openFile: %s", E.c(EmailProvider.TAG, uri));
        }
        switch (a(uri, "openFile")) {
            case 12291: {
                final String queryParameter = uri.getQueryParameter("filePath");
                if (queryParameter != null) {
                    final long clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        E.c(EmailProvider.TAG, "Opening attachment %s", queryParameter);
                        return ParcelFileDescriptor.open(new File(queryParameter), 268435456);
                    }
                    finally {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                    }
                    return ParcelFileDescriptor.open(a(this.getContext(), Long.valueOf(uri.getLastPathSegment()), "html"), H.parseMode(s));
                }
                break;
            }
            case 40962: {
                return ParcelFileDescriptor.open(a(this.getContext(), Long.valueOf(uri.getLastPathSegment()), "html"), H.parseMode(s));
            }
            case 40963: {
                return ParcelFileDescriptor.open(a(this.getContext(), Long.valueOf(uri.getLastPathSegment()), "txt"), H.parseMode(s));
            }
        }
        throw new FileNotFoundException("unable to open file");
    }
    
    public Cursor query(final Uri p0, final String[] p1, final String p2, final String[] p3, final String p4) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore          6
        //     3: aload_1        
        //     4: ldc_w           "query"
        //     7: invokestatic    com/android/email/provider/EmailProvider.a:(Landroid/net/Uri;Ljava/lang/String;)I
        //    10: istore          10
        //    12: aload_0        
        //    13: aload_0        
        //    14: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //    17: invokespecial   com/android/email/provider/EmailProvider.G:(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
        //    20: astore          11
        //    22: iload           10
        //    24: bipush          12
        //    26: ishr           
        //    27: istore          12
        //    29: aload_1        
        //    30: ldc_w           "limit"
        //    33: invokevirtual   android/net/Uri.getQueryParameter:(Ljava/lang/String;)Ljava/lang/String;
        //    36: astore          13
        //    38: getstatic       com/android/email/provider/EmailProvider.Sl:Landroid/util/SparseArray;
        //    41: iload           12
        //    43: invokevirtual   android/util/SparseArray.valueAt:(I)Ljava/lang/Object;
        //    46: checkcast       Ljava/lang/String;
        //    49: astore          14
        //    51: iload           10
        //    53: lookupswitch {
        //                0: 2023
        //                1: 2468
        //             4096: 2023
        //             4097: 2426
        //             4098: 1750
        //             4099: 1811
        //             4100: 1872
        //             8192: 2023
        //             8193: 2426
        //             8196: 1933
        //             8197: 1978
        //            12288: 2023
        //            12289: 2426
        //            12290: 2647
        //            12291: 2785
        //            16384: 2023
        //            16385: 2426
        //            20480: 2023
        //            20481: 2426
        //            24576: 2023
        //            24577: 2426
        //            28672: 2023
        //            28673: 2426
        //            32768: 2107
        //            32769: 2571
        //            32770: 2709
        //            36864: 1376
        //            36865: 1270
        //            36866: 1270
        //            36867: 1270
        //            36868: 1238
        //            36869: 1715
        //            36870: 1270
        //            36871: 1270
        //            36872: 1161
        //            36873: 1270
        //            36874: 1270
        //            36875: 1270
        //            36876: 701
        //            36878: 1610
        //            36879: 1270
        //            36880: 1270
        //            36882: 1270
        //            36883: 1270
        //            36885: 1270
        //            40960: 2154
        //            40961: 2154
        //            45056: 2023
        //            45057: 2426
        //          default: 456
        //        }
        //   456: new             Ljava/lang/IllegalArgumentException;
        //   459: dup            
        //   460: new             Ljava/lang/StringBuilder;
        //   463: dup            
        //   464: ldc_w           "Unknown URI "
        //   467: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   470: aload_1        
        //   471: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   474: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   477: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //   480: athrow         
        //   481: astore          23
        //   483: aconst_null    
        //   484: astore          18
        //   486: aload_0        
        //   487: invokespecial   com/android/email/provider/EmailProvider.ke:()V
        //   490: aload           23
        //   492: athrow         
        //   493: astore          21
        //   495: aload           18
        //   497: astore          6
        //   499: aload           6
        //   501: ifnonnull       526
        //   504: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //   507: ldc_w           "Query returning null for uri: %s selection: %s"
        //   510: iconst_2       
        //   511: anewarray       Ljava/lang/Object;
        //   514: dup            
        //   515: iconst_0       
        //   516: aload_1        
        //   517: aastore        
        //   518: dup            
        //   519: iconst_1       
        //   520: aload_3        
        //   521: aastore        
        //   522: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   525: pop            
        //   526: aload           21
        //   528: athrow         
        //   529: astore          7
        //   531: aload_1        
        //   532: invokevirtual   android/net/Uri.toString:()Ljava/lang/String;
        //   535: astore          8
        //   537: aload           8
        //   539: ifnull          684
        //   542: aload           8
        //   544: ldc_w           "/-1"
        //   547: invokevirtual   java/lang/String.endsWith:(Ljava/lang/String;)Z
        //   550: ifeq            684
        //   553: new             Ljava/lang/StringBuilder;
        //   556: dup            
        //   557: invokespecial   java/lang/StringBuilder.<init>:()V
        //   560: aload           8
        //   562: iconst_0       
        //   563: bipush          -2
        //   565: aload           8
        //   567: invokevirtual   java/lang/String.length:()I
        //   570: iadd           
        //   571: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //   574: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   577: ldc_w           "0"
        //   580: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   583: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   586: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   589: ldc_w           "query"
        //   592: invokestatic    com/android/email/provider/EmailProvider.a:(Landroid/net/Uri;Ljava/lang/String;)I
        //   595: lookupswitch {
        //                1: 687
        //             4097: 687
        //             8193: 687
        //            12289: 687
        //            16385: 687
        //            20481: 687
        //            24577: 687
        //            28673: 687
        //            40961: 687
        //            45057: 687
        //          default: 684
        //        }
        //   684: aload           7
        //   686: athrow         
        //   687: new             Lcom/android/mail/utils/G;
        //   690: dup            
        //   691: aload_2        
        //   692: iconst_0       
        //   693: invokespecial   com/android/mail/utils/G.<init>:([Ljava/lang/String;I)V
        //   696: astore          9
        //   698: aload           9
        //   700: areturn        
        //   701: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //   704: ldc_w           "runSearchQuery in search %s"
        //   707: iconst_1       
        //   708: anewarray       Ljava/lang/Object;
        //   711: dup            
        //   712: iconst_0       
        //   713: aload_1        
        //   714: aastore        
        //   715: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   718: pop            
        //   719: aload_1        
        //   720: invokevirtual   android/net/Uri.getLastPathSegment:()Ljava/lang/String;
        //   723: invokestatic    java/lang/Long.parseLong:(Ljava/lang/String;)J
        //   726: lstore          103
        //   728: aload_0        
        //   729: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //   732: lload           103
        //   734: iconst_0       
        //   735: invokestatic    com/android/emailcommon/provider/Mailbox.d:(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
        //   738: astore          105
        //   740: aconst_null    
        //   741: astore          6
        //   743: aload           105
        //   745: ifnonnull       810
        //   748: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   751: new             Ljava/lang/StringBuilder;
        //   754: dup            
        //   755: ldc_w           "In uiSearch, inbox doesn't exist for account "
        //   758: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   761: lload           103
        //   763: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   766: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   769: iconst_0       
        //   770: anewarray       Ljava/lang/Object;
        //   773: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   776: pop            
        //   777: aconst_null    
        //   778: astore          9
        //   780: aload           9
        //   782: ifnonnull       698
        //   785: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //   788: ldc_w           "Query returning null for uri: %s selection: %s"
        //   791: iconst_2       
        //   792: anewarray       Ljava/lang/Object;
        //   795: dup            
        //   796: iconst_0       
        //   797: aload_1        
        //   798: aastore        
        //   799: dup            
        //   800: iconst_1       
        //   801: aload_3        
        //   802: aastore        
        //   803: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   806: pop            
        //   807: aload           9
        //   809: areturn        
        //   810: aload_1        
        //   811: ldc_w           "query"
        //   814: invokevirtual   android/net/Uri.getQueryParameter:(Ljava/lang/String;)Ljava/lang/String;
        //   817: astore          108
        //   819: aconst_null    
        //   820: astore          6
        //   822: aload           108
        //   824: ifnonnull       857
        //   827: new             Ljava/lang/IllegalArgumentException;
        //   830: dup            
        //   831: ldc_w           "No query parameter in search query"
        //   834: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //   837: athrow         
        //   838: astore          20
        //   840: aload_0        
        //   841: invokespecial   com/android/email/provider/EmailProvider.ke:()V
        //   844: aload           20
        //   846: invokevirtual   java/lang/RuntimeException.printStackTrace:()V
        //   849: aload           20
        //   851: athrow         
        //   852: astore          21
        //   854: goto            499
        //   857: aload_0        
        //   858: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //   861: astore          109
        //   863: aload           109
        //   865: lload           103
        //   867: bipush          8
        //   869: invokestatic    com/android/emailcommon/provider/Mailbox.d:(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
        //   872: astore          110
        //   874: aconst_null    
        //   875: astore          6
        //   877: aload           110
        //   879: ifnonnull       3217
        //   882: new             Lcom/android/emailcommon/provider/Mailbox;
        //   885: dup            
        //   886: invokespecial   com/android/emailcommon/provider/Mailbox.<init>:()V
        //   889: astore          111
        //   891: aload           111
        //   893: lload           103
        //   895: putfield        com/android/emailcommon/provider/Mailbox.Lq:J
        //   898: aload           111
        //   900: ldc_w           "__search_mailbox__"
        //   903: putfield        com/android/emailcommon/provider/Mailbox.Vv:Ljava/lang/String;
        //   906: aload           111
        //   908: iconst_0       
        //   909: putfield        com/android/emailcommon/provider/Mailbox.Zu:Z
        //   912: aload           111
        //   914: ldc_w           "__search_mailbox__"
        //   917: putfield        com/android/emailcommon/provider/Mailbox.Xy:Ljava/lang/String;
        //   920: aload           111
        //   922: iconst_0       
        //   923: putfield        com/android/emailcommon/provider/Mailbox.XB:I
        //   926: aload           111
        //   928: bipush          8
        //   930: putfield        com/android/emailcommon/provider/Mailbox.Zr:I
        //   933: aload           111
        //   935: bipush          8
        //   937: putfield        com/android/emailcommon/provider/Mailbox.dM:I
        //   940: aload           111
        //   942: ldc2_w          -1
        //   945: putfield        com/android/emailcommon/provider/Mailbox.Zq:J
        //   948: aload           111
        //   950: aload           109
        //   952: invokevirtual   com/android/emailcommon/provider/Mailbox.ac:(Landroid/content/Context;)Landroid/net/Uri;
        //   955: pop            
        //   956: aload           111
        //   958: astore          113
        //   960: aload           113
        //   962: getfield        com/android/emailcommon/provider/Mailbox.Ln:J
        //   965: lstore          114
        //   967: aload_0        
        //   968: new             Lcom/android/emailcommon/service/SearchParams;
        //   971: dup            
        //   972: aload           105
        //   974: getfield        com/android/emailcommon/provider/Mailbox.Ln:J
        //   977: aload           108
        //   979: lload           114
        //   981: invokespecial   com/android/emailcommon/service/SearchParams.<init>:(JLjava/lang/String;J)V
        //   984: putfield        com/android/email/provider/EmailProvider.Tf:Lcom/android/emailcommon/service/SearchParams;
        //   987: aload_0        
        //   988: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //   991: astore          116
        //   993: aload_0        
        //   994: getfield        com/android/email/provider/EmailProvider.Tf:Lcom/android/emailcommon/service/SearchParams;
        //   997: getfield        com/android/emailcommon/service/SearchParams.gY:I
        //  1000: istore          117
        //  1002: aconst_null    
        //  1003: astore          6
        //  1005: iload           117
        //  1007: ifne            1126
        //  1010: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  1013: ldc_w           "deleting existing search results."
        //  1016: iconst_0       
        //  1017: anewarray       Ljava/lang/Object;
        //  1020: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1023: pop            
        //  1024: aload           116
        //  1026: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //  1029: astore          119
        //  1031: new             Landroid/content/ContentValues;
        //  1034: dup            
        //  1035: iconst_3       
        //  1036: invokespecial   android/content/ContentValues.<init>:(I)V
        //  1039: astore          120
        //  1041: aload           120
        //  1043: ldc_w           "displayName"
        //  1046: aload_0        
        //  1047: getfield        com/android/email/provider/EmailProvider.Tf:Lcom/android/emailcommon/service/SearchParams;
        //  1050: getfield        com/android/emailcommon/service/SearchParams.aaI:Ljava/lang/String;
        //  1053: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  1056: aload           120
        //  1058: ldc_w           "uiSyncStatus"
        //  1061: iconst_2       
        //  1062: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1065: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1068: aload           120
        //  1070: ldc_w           "totalCount"
        //  1073: iconst_0       
        //  1074: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1077: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1080: aload           119
        //  1082: getstatic       com/android/emailcommon/provider/Mailbox.CONTENT_URI:Landroid/net/Uri;
        //  1085: lload           114
        //  1087: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //  1090: aload           120
        //  1092: aconst_null    
        //  1093: aconst_null    
        //  1094: invokevirtual   android/content/ContentResolver.update:(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //  1097: pop            
        //  1098: aload           119
        //  1100: getstatic       com/android/emailcommon/provider/g.CONTENT_URI:Landroid/net/Uri;
        //  1103: new             Ljava/lang/StringBuilder;
        //  1106: dup            
        //  1107: ldc_w           "mailboxKey="
        //  1110: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1113: lload           114
        //  1115: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //  1118: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1121: aconst_null    
        //  1122: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //  1125: pop            
        //  1126: aload_0        
        //  1127: aload           116
        //  1129: lload           103
        //  1131: lload           114
        //  1133: invokespecial   com/android/email/provider/EmailProvider.a:(Landroid/content/Context;JJ)V
        //  1136: aload_0        
        //  1137: ldc_w           36870
        //  1140: getstatic       com/android/emailcommon/provider/Mailbox.CONTENT_URI:Landroid/net/Uri;
        //  1143: aload           113
        //  1145: getfield        com/android/emailcommon/provider/Mailbox.Ln:J
        //  1148: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //  1151: aload_2        
        //  1152: iconst_0       
        //  1153: invokespecial   com/android/email/provider/EmailProvider.a:(ILandroid/net/Uri;[Ljava/lang/String;Z)Landroid/database/Cursor;
        //  1156: astore          9
        //  1158: goto            780
        //  1161: aload_1        
        //  1162: ldc_w           "suppress_combined"
        //  1165: invokevirtual   android/net/Uri.getQueryParameter:(Ljava/lang/String;)Ljava/lang/String;
        //  1168: astore          98
        //  1170: aconst_null    
        //  1171: astore          6
        //  1173: aload           98
        //  1175: ifnull          1232
        //  1178: aload           98
        //  1180: invokestatic    java/lang/Boolean.parseBoolean:(Ljava/lang/String;)Z
        //  1183: ifeq            1232
        //  1186: iconst_1       
        //  1187: istore          99
        //  1189: aload_0        
        //  1190: aload_2        
        //  1191: iload           99
        //  1193: invokespecial   com/android/email/provider/EmailProvider.b:([Ljava/lang/String;Z)Landroid/database/Cursor;
        //  1196: astore          100
        //  1198: aload           100
        //  1200: astore          9
        //  1202: aload           9
        //  1204: ifnonnull       698
        //  1207: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  1210: ldc_w           "Query returning null for uri: %s selection: %s"
        //  1213: iconst_2       
        //  1214: anewarray       Ljava/lang/Object;
        //  1217: dup            
        //  1218: iconst_0       
        //  1219: aload_1        
        //  1220: aastore        
        //  1221: dup            
        //  1222: iconst_1       
        //  1223: aload_3        
        //  1224: aastore        
        //  1225: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1228: pop            
        //  1229: aload           9
        //  1231: areturn        
        //  1232: iconst_0       
        //  1233: istore          99
        //  1235: goto            1189
        //  1238: aload_0        
        //  1239: aload_2        
        //  1240: invokespecial   com/android/email/provider/EmailProvider.f:([Ljava/lang/String;)Landroid/database/Cursor;
        //  1243: astore          96
        //  1245: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  1248: ldc_w           "Query returning null for uri: %s selection: %s"
        //  1251: iconst_2       
        //  1252: anewarray       Ljava/lang/Object;
        //  1255: dup            
        //  1256: iconst_0       
        //  1257: aload_1        
        //  1258: aastore        
        //  1259: dup            
        //  1260: iconst_1       
        //  1261: aload_3        
        //  1262: aastore        
        //  1263: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1266: pop            
        //  1267: aload           96
        //  1269: areturn        
        //  1270: aload_3        
        //  1271: ifnonnull       1279
        //  1274: aload           4
        //  1276: ifnull          1290
        //  1279: new             Ljava/lang/IllegalArgumentException;
        //  1282: dup            
        //  1283: ldc_w           "UI queries can't have selection/args"
        //  1286: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //  1289: athrow         
        //  1290: aload_1        
        //  1291: ldc_w           "seen"
        //  1294: invokevirtual   android/net/Uri.getQueryParameter:(Ljava/lang/String;)Ljava/lang/String;
        //  1297: astore          92
        //  1299: aconst_null    
        //  1300: astore          6
        //  1302: aload           92
        //  1304: ifnull          1370
        //  1307: getstatic       java/lang/Boolean.FALSE:Ljava/lang/Boolean;
        //  1310: invokevirtual   java/lang/Boolean.toString:()Ljava/lang/String;
        //  1313: aload           92
        //  1315: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  1318: ifeq            1370
        //  1321: iconst_1       
        //  1322: istore          93
        //  1324: aload_0        
        //  1325: iload           10
        //  1327: aload_1        
        //  1328: aload_2        
        //  1329: iload           93
        //  1331: invokespecial   com/android/email/provider/EmailProvider.a:(ILandroid/net/Uri;[Ljava/lang/String;Z)Landroid/database/Cursor;
        //  1334: astore          94
        //  1336: aload           94
        //  1338: astore          9
        //  1340: aload           9
        //  1342: ifnonnull       698
        //  1345: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  1348: ldc_w           "Query returning null for uri: %s selection: %s"
        //  1351: iconst_2       
        //  1352: anewarray       Ljava/lang/Object;
        //  1355: dup            
        //  1356: iconst_0       
        //  1357: aload_1        
        //  1358: aastore        
        //  1359: dup            
        //  1360: iconst_1       
        //  1361: aload_3        
        //  1362: aastore        
        //  1363: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1366: pop            
        //  1367: aload           9
        //  1369: areturn        
        //  1370: iconst_0       
        //  1371: istore          93
        //  1373: goto            1324
        //  1376: aload_0        
        //  1377: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //  1380: astore          81
        //  1382: aload_0        
        //  1383: aload           81
        //  1385: invokespecial   com/android/email/provider/EmailProvider.G:(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
        //  1388: astore          82
        //  1390: aload_1        
        //  1391: invokevirtual   android/net/Uri.getPathSegments:()Ljava/util/List;
        //  1394: iconst_1       
        //  1395: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //  1400: checkcast       Ljava/lang/String;
        //  1403: astore          83
        //  1405: getstatic       com/android/email/provider/EmailProvider.SB:Landroid/net/Uri;
        //  1408: invokevirtual   android/net/Uri.buildUpon:()Landroid/net/Uri$Builder;
        //  1411: aload           83
        //  1413: invokevirtual   android/net/Uri$Builder.appendEncodedPath:(Ljava/lang/String;)Landroid/net/Uri$Builder;
        //  1416: invokevirtual   android/net/Uri$Builder.build:()Landroid/net/Uri;
        //  1419: astore          84
        //  1421: aload_0        
        //  1422: aload           83
        //  1424: aload_2        
        //  1425: invokespecial   com/android/email/provider/EmailProvider.a:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //  1428: astore          85
        //  1430: aload           85
        //  1432: aload           81
        //  1434: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //  1437: aload           84
        //  1439: invokeinterface android/database/Cursor.setNotificationUri:(Landroid/content/ContentResolver;Landroid/net/Uri;)V
        //  1444: aload           83
        //  1446: getstatic       com/android/email/provider/EmailProvider.Tc:Ljava/lang/String;
        //  1449: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  1452: istore          86
        //  1454: iload           86
        //  1456: ifeq            1493
        //  1459: aload           85
        //  1461: astore          9
        //  1463: aload           9
        //  1465: ifnonnull       698
        //  1468: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  1471: ldc_w           "Query returning null for uri: %s selection: %s"
        //  1474: iconst_2       
        //  1475: anewarray       Ljava/lang/Object;
        //  1478: dup            
        //  1479: iconst_0       
        //  1480: aload_1        
        //  1481: aastore        
        //  1482: dup            
        //  1483: iconst_1       
        //  1484: aload_3        
        //  1485: aastore        
        //  1486: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1489: pop            
        //  1490: aload           9
        //  1492: areturn        
        //  1493: getstatic       com/android/mail/providers/E.aCv:[Ljava/lang/String;
        //  1496: astore          87
        //  1498: invokestatic    com/android/email/provider/EmailProvider.kh:()Lcom/android/email/provider/ProjectionMap;
        //  1501: aload           87
        //  1503: invokestatic    com/android/email/provider/EmailProvider.a:(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1506: astore          88
        //  1508: aload           88
        //  1510: ldc_w           " FROM Mailbox WHERE accountKey=? AND type < 64 AND type != 8 AND parentKey < 0 ORDER BY "
        //  1513: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1516: pop            
        //  1517: aload           88
        //  1519: ldc_w           "CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName COLLATE LOCALIZED ASC"
        //  1522: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1525: pop            
        //  1526: aload_0        
        //  1527: aload           82
        //  1529: aload           88
        //  1531: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1534: iconst_1       
        //  1535: anewarray       Ljava/lang/String;
        //  1538: dup            
        //  1539: iconst_0       
        //  1540: aload           83
        //  1542: aastore        
        //  1543: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //  1546: aload           83
        //  1548: invokestatic    java/lang/Long.valueOf:(Ljava/lang/String;)Ljava/lang/Long;
        //  1551: invokevirtual   java/lang/Long.longValue:()J
        //  1554: aload_2        
        //  1555: invokespecial   com/android/email/provider/EmailProvider.a:(Landroid/database/Cursor;J[Ljava/lang/String;)Landroid/database/Cursor;
        //  1558: astore          9
        //  1560: aload           9
        //  1562: aload           81
        //  1564: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //  1567: aload           84
        //  1569: invokeinterface android/database/Cursor.setNotificationUri:(Landroid/content/ContentResolver;Landroid/net/Uri;)V
        //  1574: aload           9
        //  1576: invokeinterface android/database/Cursor.getCount:()I
        //  1581: ifle            1463
        //  1584: new             Landroid/database/MergeCursor;
        //  1587: dup            
        //  1588: iconst_2       
        //  1589: anewarray       Landroid/database/Cursor;
        //  1592: dup            
        //  1593: iconst_0       
        //  1594: aload           85
        //  1596: aastore        
        //  1597: dup            
        //  1598: iconst_1       
        //  1599: aload           9
        //  1601: aastore        
        //  1602: invokespecial   android/database/MergeCursor.<init>:([Landroid/database/Cursor;)V
        //  1605: astore          9
        //  1607: goto            1463
        //  1610: aload_0        
        //  1611: aload_1        
        //  1612: invokespecial   com/android/email/provider/EmailProvider.f:(Landroid/net/Uri;)Lcom/android/emailcommon/provider/Mailbox;
        //  1615: astore          76
        //  1617: aconst_null    
        //  1618: astore          6
        //  1620: aload           76
        //  1622: ifnull          1679
        //  1625: aload           76
        //  1627: getfield        com/android/emailcommon/provider/Mailbox.Zr:I
        //  1630: istore          77
        //  1632: aconst_null    
        //  1633: astore          6
        //  1635: iload           77
        //  1637: bipush          8
        //  1639: if_icmpne       1703
        //  1642: aload_0        
        //  1643: getfield        com/android/email/provider/EmailProvider.Tf:Lcom/android/emailcommon/service/SearchParams;
        //  1646: astore          78
        //  1648: aload           78
        //  1650: bipush          10
        //  1652: aload           78
        //  1654: getfield        com/android/emailcommon/service/SearchParams.gY:I
        //  1657: iadd           
        //  1658: putfield        com/android/emailcommon/service/SearchParams.gY:I
        //  1661: aload_0        
        //  1662: aload_0        
        //  1663: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //  1666: aload           76
        //  1668: getfield        com/android/emailcommon/provider/Mailbox.Lq:J
        //  1671: aload           76
        //  1673: getfield        com/android/emailcommon/provider/Mailbox.Ln:J
        //  1676: invokespecial   com/android/email/provider/EmailProvider.a:(Landroid/content/Context;JJ)V
        //  1679: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  1682: ldc_w           "Query returning null for uri: %s selection: %s"
        //  1685: iconst_2       
        //  1686: anewarray       Ljava/lang/Object;
        //  1689: dup            
        //  1690: iconst_0       
        //  1691: aload_1        
        //  1692: aastore        
        //  1693: dup            
        //  1694: iconst_1       
        //  1695: aload_3        
        //  1696: aastore        
        //  1697: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1700: pop            
        //  1701: aconst_null    
        //  1702: areturn        
        //  1703: aload_0        
        //  1704: aload           76
        //  1706: bipush          10
        //  1708: invokespecial   com/android/email/provider/EmailProvider.b:(Lcom/android/emailcommon/provider/Mailbox;I)Landroid/database/Cursor;
        //  1711: pop            
        //  1712: goto            1679
        //  1715: aload_0        
        //  1716: aload_0        
        //  1717: aload_1        
        //  1718: invokespecial   com/android/email/provider/EmailProvider.f:(Landroid/net/Uri;)Lcom/android/emailcommon/provider/Mailbox;
        //  1721: iconst_0       
        //  1722: invokespecial   com/android/email/provider/EmailProvider.b:(Lcom/android/emailcommon/provider/Mailbox;I)Landroid/database/Cursor;
        //  1725: pop            
        //  1726: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  1729: ldc_w           "Query returning null for uri: %s selection: %s"
        //  1732: iconst_2       
        //  1733: anewarray       Ljava/lang/Object;
        //  1736: dup            
        //  1737: iconst_0       
        //  1738: aload_1        
        //  1739: aastore        
        //  1740: dup            
        //  1741: iconst_1       
        //  1742: aload_3        
        //  1743: aastore        
        //  1744: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1747: pop            
        //  1748: aconst_null    
        //  1749: areturn        
        //  1750: aload_0        
        //  1751: aload_0        
        //  1752: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //  1755: invokespecial   com/android/email/provider/EmailProvider.G:(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
        //  1758: ldc_w           "SELECT mailboxKey, SUM(CASE flagRead WHEN 0 THEN 1 ELSE 0 END), SUM(CASE flagSeen WHEN 0 THEN 1 ELSE 0 END)\nFROM Message\nWHERE accountKey = ?\nGROUP BY mailboxKey"
        //  1761: iconst_1       
        //  1762: anewarray       Ljava/lang/String;
        //  1765: dup            
        //  1766: iconst_0       
        //  1767: aload_1        
        //  1768: invokevirtual   android/net/Uri.getLastPathSegment:()Ljava/lang/String;
        //  1771: aastore        
        //  1772: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //  1775: astore          72
        //  1777: aload           72
        //  1779: astore          9
        //  1781: aload           9
        //  1783: ifnonnull       698
        //  1786: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  1789: ldc_w           "Query returning null for uri: %s selection: %s"
        //  1792: iconst_2       
        //  1793: anewarray       Ljava/lang/Object;
        //  1796: dup            
        //  1797: iconst_0       
        //  1798: aload_1        
        //  1799: aastore        
        //  1800: dup            
        //  1801: iconst_1       
        //  1802: aload_3        
        //  1803: aastore        
        //  1804: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1807: pop            
        //  1808: aload           9
        //  1810: areturn        
        //  1811: aload_0        
        //  1812: aload_0        
        //  1813: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //  1816: invokespecial   com/android/email/provider/EmailProvider.G:(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
        //  1819: ldc_w           "select max(_id) from Message where mailboxKey=?"
        //  1822: iconst_1       
        //  1823: anewarray       Ljava/lang/String;
        //  1826: dup            
        //  1827: iconst_0       
        //  1828: aload_1        
        //  1829: invokevirtual   android/net/Uri.getLastPathSegment:()Ljava/lang/String;
        //  1832: aastore        
        //  1833: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //  1836: astore          70
        //  1838: aload           70
        //  1840: astore          9
        //  1842: aload           9
        //  1844: ifnonnull       698
        //  1847: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  1850: ldc_w           "Query returning null for uri: %s selection: %s"
        //  1853: iconst_2       
        //  1854: anewarray       Ljava/lang/Object;
        //  1857: dup            
        //  1858: iconst_0       
        //  1859: aload_1        
        //  1860: aastore        
        //  1861: dup            
        //  1862: iconst_1       
        //  1863: aload_3        
        //  1864: aastore        
        //  1865: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1868: pop            
        //  1869: aload           9
        //  1871: areturn        
        //  1872: aload_0        
        //  1873: aload_0        
        //  1874: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //  1877: invokespecial   com/android/email/provider/EmailProvider.G:(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
        //  1880: ldc_w           "select count(*) from Message where mailboxKey=?"
        //  1883: iconst_1       
        //  1884: anewarray       Ljava/lang/String;
        //  1887: dup            
        //  1888: iconst_0       
        //  1889: aload_1        
        //  1890: invokevirtual   android/net/Uri.getLastPathSegment:()Ljava/lang/String;
        //  1893: aastore        
        //  1894: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //  1897: astore          68
        //  1899: aload           68
        //  1901: astore          9
        //  1903: aload           9
        //  1905: ifnonnull       698
        //  1908: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  1911: ldc_w           "Query returning null for uri: %s selection: %s"
        //  1914: iconst_2       
        //  1915: anewarray       Ljava/lang/Object;
        //  1918: dup            
        //  1919: iconst_0       
        //  1920: aload_1        
        //  1921: aastore        
        //  1922: dup            
        //  1923: iconst_1       
        //  1924: aload_3        
        //  1925: aastore        
        //  1926: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1929: pop            
        //  1930: aload           9
        //  1932: areturn        
        //  1933: aload           11
        //  1935: ldc_w           "MessageMove"
        //  1938: aload_2        
        //  1939: aload_3        
        //  1940: aload           4
        //  1942: aconst_null    
        //  1943: aconst_null    
        //  1944: aload           5
        //  1946: aload           13
        //  1948: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //  1951: astore          66
        //  1953: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  1956: ldc_w           "Query returning null for uri: %s selection: %s"
        //  1959: iconst_2       
        //  1960: anewarray       Ljava/lang/Object;
        //  1963: dup            
        //  1964: iconst_0       
        //  1965: aload_1        
        //  1966: aastore        
        //  1967: dup            
        //  1968: iconst_1       
        //  1969: aload_3        
        //  1970: aastore        
        //  1971: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1974: pop            
        //  1975: aload           66
        //  1977: areturn        
        //  1978: aload           11
        //  1980: ldc_w           "MessageStateChange"
        //  1983: aload_2        
        //  1984: aload_3        
        //  1985: aload           4
        //  1987: aconst_null    
        //  1988: aconst_null    
        //  1989: aload           5
        //  1991: aload           13
        //  1993: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //  1996: astore          64
        //  1998: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  2001: ldc_w           "Query returning null for uri: %s selection: %s"
        //  2004: iconst_2       
        //  2005: anewarray       Ljava/lang/Object;
        //  2008: dup            
        //  2009: iconst_0       
        //  2010: aload_1        
        //  2011: aastore        
        //  2012: dup            
        //  2013: iconst_1       
        //  2014: aload_3        
        //  2015: aastore        
        //  2016: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2019: pop            
        //  2020: aload           64
        //  2022: areturn        
        //  2023: aload_2        
        //  2024: astore          62
        //  2026: aload           11
        //  2028: aload           14
        //  2030: aload           62
        //  2032: aload_3        
        //  2033: aload           4
        //  2035: aconst_null    
        //  2036: aconst_null    
        //  2037: aload           5
        //  2039: aload           13
        //  2041: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //  2044: astore          63
        //  2046: aload           63
        //  2048: astore          9
        //  2050: aload           9
        //  2052: ifnonnull       2077
        //  2055: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  2058: ldc_w           "Query returning null for uri: %s selection: %s"
        //  2061: iconst_2       
        //  2062: anewarray       Ljava/lang/Object;
        //  2065: dup            
        //  2066: iconst_0       
        //  2067: aload_1        
        //  2068: aastore        
        //  2069: dup            
        //  2070: iconst_1       
        //  2071: aload_3        
        //  2072: aastore        
        //  2073: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2076: pop            
        //  2077: aload           9
        //  2079: ifnull          698
        //  2082: aload_0        
        //  2083: invokevirtual   com/android/email/provider/EmailProvider.isTemporary:()Z
        //  2086: ifne            698
        //  2089: aload           9
        //  2091: aload_0        
        //  2092: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //  2095: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //  2098: aload_1        
        //  2099: invokeinterface android/database/Cursor.setNotificationUri:(Landroid/content/ContentResolver;Landroid/net/Uri;)V
        //  2104: aload           9
        //  2106: areturn        
        //  2107: aload_0        
        //  2108: aload_0        
        //  2109: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //  2112: invokespecial   com/android/email/provider/EmailProvider.G:(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
        //  2115: astore          59
        //  2117: invokestatic    com/android/email/provider/EmailProvider.ki:()Lcom/android/email/provider/ProjectionMap;
        //  2120: aload_2        
        //  2121: invokestatic    com/android/email/provider/EmailProvider.a:(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2124: astore          60
        //  2126: aload           60
        //  2128: ldc_w           " FROM QuickResponse"
        //  2131: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2134: pop            
        //  2135: aload           59
        //  2137: aload           60
        //  2139: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  2142: iconst_0       
        //  2143: anewarray       Ljava/lang/String;
        //  2146: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //  2149: astore          9
        //  2151: goto            2050
        //  2154: new             Lcom/android/email/provider/C;
        //  2157: dup            
        //  2158: invokespecial   com/android/email/provider/C.<init>:()V
        //  2161: aload_2        
        //  2162: invokevirtual   com/android/email/provider/C.g:([Ljava/lang/String;)Lcom/android/email/provider/C;
        //  2165: invokevirtual   com/android/email/provider/C.kr:()Lcom/android/email/provider/ProjectionMap;
        //  2168: astore          50
        //  2170: aload           50
        //  2172: ldc_w           "htmlContent"
        //  2175: invokevirtual   com/android/email/provider/ProjectionMap.containsKey:(Ljava/lang/Object;)Z
        //  2178: ifne            2192
        //  2181: aload           50
        //  2183: ldc_w           "textContent"
        //  2186: invokevirtual   com/android/email/provider/ProjectionMap.containsKey:(Ljava/lang/Object;)Z
        //  2189: ifeq            2203
        //  2192: new             Ljava/lang/IllegalArgumentException;
        //  2195: dup            
        //  2196: ldc_w           "Body content cannot be returned in the cursor"
        //  2199: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //  2202: athrow         
        //  2203: new             Landroid/content/ContentValues;
        //  2206: dup            
        //  2207: iconst_2       
        //  2208: invokespecial   android/content/ContentValues.<init>:(I)V
        //  2211: astore          51
        //  2213: aload           51
        //  2215: ldc_w           "htmlContentUri"
        //  2218: new             Ljava/lang/StringBuilder;
        //  2221: dup            
        //  2222: ldc_w           "@"
        //  2225: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  2228: ldc_w           "bodyHtml"
        //  2231: ldc_w           "messageKey"
        //  2234: invokestatic    com/android/email/provider/EmailProvider.k:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //  2237: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2240: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  2243: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  2246: aload           51
        //  2248: ldc_w           "textContentUri"
        //  2251: new             Ljava/lang/StringBuilder;
        //  2254: dup            
        //  2255: ldc_w           "@"
        //  2258: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  2261: ldc_w           "bodyText"
        //  2264: ldc_w           "messageKey"
        //  2267: invokestatic    com/android/email/provider/EmailProvider.k:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //  2270: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2273: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  2276: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  2279: aload           50
        //  2281: aload_2        
        //  2282: aload           51
        //  2284: invokestatic    com/android/email/provider/EmailProvider.a:(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;
        //  2287: astore          52
        //  2289: aload           52
        //  2291: ldc_w           " FROM Body"
        //  2294: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2297: pop            
        //  2298: aconst_null    
        //  2299: astore          6
        //  2301: iload           10
        //  2303: ldc_w           40961
        //  2306: if_icmpne       2403
        //  2309: aload_1        
        //  2310: invokevirtual   android/net/Uri.getPathSegments:()Ljava/util/List;
        //  2313: iconst_1       
        //  2314: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //  2319: checkcast       Ljava/lang/String;
        //  2322: astore          54
        //  2324: aload           52
        //  2326: ldc_w           " WHERE "
        //  2329: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2332: aload           54
        //  2334: aload_3        
        //  2335: invokestatic    com/android/email/provider/EmailProvider.i:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //  2338: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2341: pop            
        //  2342: aload           5
        //  2344: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //  2347: ifne            2364
        //  2350: aload           52
        //  2352: ldc_w           " ORDER BY "
        //  2355: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2358: aload           5
        //  2360: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2363: pop            
        //  2364: aload           13
        //  2366: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //  2369: ifne            2386
        //  2372: aload           52
        //  2374: ldc_w           " LIMIT "
        //  2377: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2380: aload           13
        //  2382: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2385: pop            
        //  2386: aload           11
        //  2388: aload           52
        //  2390: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  2393: aload           4
        //  2395: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //  2398: astore          9
        //  2400: goto            2050
        //  2403: aload_3        
        //  2404: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //  2407: ifne            2342
        //  2410: aload           52
        //  2412: ldc_w           " WHERE "
        //  2415: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2418: aload_3        
        //  2419: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2422: pop            
        //  2423: goto            2342
        //  2426: aload_1        
        //  2427: invokevirtual   android/net/Uri.getPathSegments:()Ljava/util/List;
        //  2430: iconst_1       
        //  2431: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //  2436: checkcast       Ljava/lang/String;
        //  2439: aload_3        
        //  2440: invokestatic    com/android/email/provider/EmailProvider.i:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //  2443: astore          49
        //  2445: aload           11
        //  2447: aload           14
        //  2449: aload_2        
        //  2450: aload           49
        //  2452: aload           4
        //  2454: aconst_null    
        //  2455: aconst_null    
        //  2456: aload           5
        //  2458: aload           13
        //  2460: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //  2463: astore          9
        //  2465: goto            2050
        //  2468: aload_1        
        //  2469: invokevirtual   android/net/Uri.getPathSegments:()Ljava/util/List;
        //  2472: iconst_1       
        //  2473: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //  2478: checkcast       Ljava/lang/String;
        //  2481: astore          45
        //  2483: aload_2        
        //  2484: arraylength    
        //  2485: anewarray       Ljava/lang/String;
        //  2488: astore          46
        //  2490: iconst_0       
        //  2491: istore          47
        //  2493: aload_2        
        //  2494: arraylength    
        //  2495: istore          48
        //  2497: aconst_null    
        //  2498: astore          6
        //  2500: iload           47
        //  2502: iload           48
        //  2504: if_icmpge       2543
        //  2507: aload_2        
        //  2508: iload           47
        //  2510: aaload         
        //  2511: ldc_w           "flags"
        //  2514: invokestatic    android/text/TextUtils.equals:(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
        //  2517: ifeq            2531
        //  2520: aload           46
        //  2522: iload           47
        //  2524: ldc_w           "flags & ~128 AS flags"
        //  2527: aastore        
        //  2528: goto            3224
        //  2531: aload           46
        //  2533: iload           47
        //  2535: aload_2        
        //  2536: iload           47
        //  2538: aaload         
        //  2539: aastore        
        //  2540: goto            3224
        //  2543: aload           11
        //  2545: aload           14
        //  2547: aload           46
        //  2549: aload           45
        //  2551: aload_3        
        //  2552: invokestatic    com/android/email/provider/EmailProvider.i:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //  2555: aload           4
        //  2557: aconst_null    
        //  2558: aconst_null    
        //  2559: aload           5
        //  2561: aload           13
        //  2563: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //  2566: astore          9
        //  2568: goto            2050
        //  2571: aload_1        
        //  2572: invokevirtual   android/net/Uri.getPathSegments:()Ljava/util/List;
        //  2575: iconst_1       
        //  2576: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //  2581: checkcast       Ljava/lang/String;
        //  2584: astore          40
        //  2586: aload_0        
        //  2587: aload_0        
        //  2588: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //  2591: invokespecial   com/android/email/provider/EmailProvider.G:(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
        //  2594: astore          41
        //  2596: invokestatic    com/android/email/provider/EmailProvider.ki:()Lcom/android/email/provider/ProjectionMap;
        //  2599: aload_2        
        //  2600: invokestatic    com/android/email/provider/EmailProvider.a:(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2603: astore          42
        //  2605: aload           42
        //  2607: ldc_w           " FROM QuickResponse"
        //  2610: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2613: pop            
        //  2614: aload           42
        //  2616: ldc_w           " WHERE _id=?"
        //  2619: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2622: pop            
        //  2623: aload           41
        //  2625: aload           42
        //  2627: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  2630: iconst_1       
        //  2631: anewarray       Ljava/lang/String;
        //  2634: dup            
        //  2635: iconst_0       
        //  2636: aload           40
        //  2638: aastore        
        //  2639: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //  2642: astore          9
        //  2644: goto            2050
        //  2647: aload_1        
        //  2648: invokevirtual   android/net/Uri.getPathSegments:()Ljava/util/List;
        //  2651: iconst_2       
        //  2652: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //  2657: checkcast       Ljava/lang/String;
        //  2660: astore          38
        //  2662: new             Ljava/lang/StringBuilder;
        //  2665: dup            
        //  2666: ldc_w           "messageKey="
        //  2669: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  2672: aload           38
        //  2674: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2677: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  2680: aload_3        
        //  2681: invokestatic    com/android/email/provider/EmailProvider.j:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //  2684: astore          39
        //  2686: aload           11
        //  2688: ldc             "Attachment"
        //  2690: aload_2        
        //  2691: aload           39
        //  2693: aload           4
        //  2695: aconst_null    
        //  2696: aconst_null    
        //  2697: aload           5
        //  2699: aload           13
        //  2701: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //  2704: astore          9
        //  2706: goto            2050
        //  2709: aload_1        
        //  2710: invokevirtual   android/net/Uri.getPathSegments:()Ljava/util/List;
        //  2713: iconst_2       
        //  2714: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //  2719: checkcast       Ljava/lang/String;
        //  2722: astore          32
        //  2724: aload_0        
        //  2725: aload_0        
        //  2726: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //  2729: invokespecial   com/android/email/provider/EmailProvider.G:(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
        //  2732: astore          33
        //  2734: invokestatic    com/android/email/provider/EmailProvider.ki:()Lcom/android/email/provider/ProjectionMap;
        //  2737: aload_2        
        //  2738: invokestatic    com/android/email/provider/EmailProvider.a:(Lcom/android/email/provider/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2741: astore          34
        //  2743: aload           34
        //  2745: ldc_w           " FROM QuickResponse"
        //  2748: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2751: pop            
        //  2752: aload           34
        //  2754: ldc_w           " WHERE accountKey=?"
        //  2757: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2760: pop            
        //  2761: aload           33
        //  2763: aload           34
        //  2765: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  2768: iconst_1       
        //  2769: anewarray       Ljava/lang/String;
        //  2772: dup            
        //  2773: iconst_0       
        //  2774: aload           32
        //  2776: aastore        
        //  2777: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //  2780: astore          9
        //  2782: goto            2050
        //  2785: aload_2        
        //  2786: ifnonnull       2805
        //  2789: iconst_2       
        //  2790: anewarray       Ljava/lang/String;
        //  2793: astore_2       
        //  2794: aload_2        
        //  2795: iconst_0       
        //  2796: ldc             "_id"
        //  2798: aastore        
        //  2799: aload_2        
        //  2800: iconst_1       
        //  2801: ldc_w           "_data"
        //  2804: aastore        
        //  2805: getstatic       com/android/email/provider/EmailProvider.Sr:[Ljava/lang/String;
        //  2808: astore          15
        //  2810: iconst_1       
        //  2811: anewarray       Ljava/lang/String;
        //  2814: astore          16
        //  2816: aload           16
        //  2818: iconst_0       
        //  2819: aload_1        
        //  2820: invokevirtual   android/net/Uri.toString:()Ljava/lang/String;
        //  2823: aastore        
        //  2824: aload           11
        //  2826: ldc             "Attachment"
        //  2828: aload           15
        //  2830: ldc_w           "cachedFile=?"
        //  2833: aload           16
        //  2835: aconst_null    
        //  2836: aconst_null    
        //  2837: aconst_null    
        //  2838: aconst_null    
        //  2839: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //  2842: astore          17
        //  2844: aload           17
        //  2846: astore          18
        //  2848: aload           18
        //  2850: invokeinterface android/database/Cursor.getCount:()I
        //  2855: iconst_1       
        //  2856: if_icmple       2877
        //  2859: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  2862: ldc_w           "multiple results querying CACHED_FILE_ACCESS %s"
        //  2865: iconst_1       
        //  2866: anewarray       Ljava/lang/Object;
        //  2869: dup            
        //  2870: iconst_0       
        //  2871: aload_1        
        //  2872: aastore        
        //  2873: invokestatic    com/android/mail/utils/E.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2876: pop            
        //  2877: aload           18
        //  2879: ifnull          3167
        //  2882: aload           18
        //  2884: invokeinterface android/database/Cursor.moveToFirst:()Z
        //  2889: ifeq            3167
        //  2892: new             Lcom/android/mail/utils/G;
        //  2895: dup            
        //  2896: aload_2        
        //  2897: invokespecial   com/android/mail/utils/G.<init>:([Ljava/lang/String;)V
        //  2900: astore          9
        //  2902: aload_2        
        //  2903: arraylength    
        //  2904: anewarray       Ljava/lang/Object;
        //  2907: astore          24
        //  2909: iconst_0       
        //  2910: istore          25
        //  2912: aload_2        
        //  2913: arraylength    
        //  2914: istore          26
        //  2916: iload           25
        //  2918: iload           26
        //  2920: if_icmpge       3118
        //  2923: aload_2        
        //  2924: iload           25
        //  2926: aaload         
        //  2927: astore          27
        //  2929: ldc             "_id"
        //  2931: aload           27
        //  2933: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  2936: ifeq            2966
        //  2939: aload           24
        //  2941: iload           25
        //  2943: aload           18
        //  2945: aload           18
        //  2947: ldc             "_id"
        //  2949: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //  2954: invokeinterface android/database/Cursor.getLong:(I)J
        //  2959: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //  2962: aastore        
        //  2963: goto            3230
        //  2966: ldc_w           "_data"
        //  2969: aload           27
        //  2971: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  2974: ifeq            3023
        //  2977: aload           24
        //  2979: iload           25
        //  2981: aload           18
        //  2983: aload           18
        //  2985: ldc             "contentUri"
        //  2987: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //  2992: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //  2997: aastore        
        //  2998: goto            3230
        //  3001: astore          19
        //  3003: aload           18
        //  3005: ifnull          3015
        //  3008: aload           18
        //  3010: invokeinterface android/database/Cursor.close:()V
        //  3015: aload           19
        //  3017: athrow         
        //  3018: astore          23
        //  3020: goto            486
        //  3023: ldc_w           "_display_name"
        //  3026: aload           27
        //  3028: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  3031: ifeq            3058
        //  3034: aload           24
        //  3036: iload           25
        //  3038: aload           18
        //  3040: aload           18
        //  3042: ldc             "fileName"
        //  3044: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //  3049: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //  3054: aastore        
        //  3055: goto            3230
        //  3058: ldc_w           "_size"
        //  3061: aload           27
        //  3063: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  3066: ifeq            3096
        //  3069: aload           24
        //  3071: iload           25
        //  3073: aload           18
        //  3075: aload           18
        //  3077: ldc             "size"
        //  3079: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //  3084: invokeinterface android/database/Cursor.getInt:(I)I
        //  3089: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  3092: aastore        
        //  3093: goto            3230
        //  3096: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  3099: ldc_w           "unexpected column %s requested for CACHED_FILE"
        //  3102: iconst_1       
        //  3103: anewarray       Ljava/lang/Object;
        //  3106: dup            
        //  3107: iconst_0       
        //  3108: aload           27
        //  3110: aastore        
        //  3111: invokestatic    com/android/mail/utils/E.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  3114: pop            
        //  3115: goto            3230
        //  3118: aload           9
        //  3120: aload           24
        //  3122: invokevirtual   android/database/MatrixCursor.addRow:([Ljava/lang/Object;)V
        //  3125: aload           18
        //  3127: ifnull          3137
        //  3130: aload           18
        //  3132: invokeinterface android/database/Cursor.close:()V
        //  3137: aload           18
        //  3139: ifnonnull       698
        //  3142: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  3145: ldc_w           "Query returning null for uri: %s selection: %s"
        //  3148: iconst_2       
        //  3149: anewarray       Ljava/lang/Object;
        //  3152: dup            
        //  3153: iconst_0       
        //  3154: aload_1        
        //  3155: aastore        
        //  3156: dup            
        //  3157: iconst_1       
        //  3158: aload_3        
        //  3159: aastore        
        //  3160: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  3163: pop            
        //  3164: aload           9
        //  3166: areturn        
        //  3167: aload           18
        //  3169: ifnull          3179
        //  3172: aload           18
        //  3174: invokeinterface android/database/Cursor.close:()V
        //  3179: aload           18
        //  3181: ifnonnull       3206
        //  3184: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  3187: ldc_w           "Query returning null for uri: %s selection: %s"
        //  3190: iconst_2       
        //  3191: anewarray       Ljava/lang/Object;
        //  3194: dup            
        //  3195: iconst_0       
        //  3196: aload_1        
        //  3197: aastore        
        //  3198: dup            
        //  3199: iconst_1       
        //  3200: aload_3        
        //  3201: aastore        
        //  3202: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  3205: pop            
        //  3206: aconst_null    
        //  3207: areturn        
        //  3208: astore          20
        //  3210: aload           18
        //  3212: astore          6
        //  3214: goto            840
        //  3217: aload           110
        //  3219: astore          113
        //  3221: goto            960
        //  3224: iinc            47, 1
        //  3227: goto            2493
        //  3230: iinc            25, 1
        //  3233: goto            2916
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  3      12     529    698    Ljava/lang/IllegalArgumentException;
        //  456    481    481    486    Landroid/database/sqlite/SQLiteException;
        //  456    481    838    840    Ljava/lang/RuntimeException;
        //  456    481    852    857    Any
        //  486    493    493    499    Any
        //  701    740    481    486    Landroid/database/sqlite/SQLiteException;
        //  701    740    838    840    Ljava/lang/RuntimeException;
        //  701    740    852    857    Any
        //  748    777    481    486    Landroid/database/sqlite/SQLiteException;
        //  748    777    838    840    Ljava/lang/RuntimeException;
        //  748    777    852    857    Any
        //  810    819    481    486    Landroid/database/sqlite/SQLiteException;
        //  810    819    838    840    Ljava/lang/RuntimeException;
        //  810    819    852    857    Any
        //  827    838    481    486    Landroid/database/sqlite/SQLiteException;
        //  827    838    838    840    Ljava/lang/RuntimeException;
        //  827    838    852    857    Any
        //  840    852    852    857    Any
        //  857    874    481    486    Landroid/database/sqlite/SQLiteException;
        //  857    874    838    840    Ljava/lang/RuntimeException;
        //  857    874    852    857    Any
        //  882    956    481    486    Landroid/database/sqlite/SQLiteException;
        //  882    956    838    840    Ljava/lang/RuntimeException;
        //  882    956    852    857    Any
        //  960    1002   481    486    Landroid/database/sqlite/SQLiteException;
        //  960    1002   838    840    Ljava/lang/RuntimeException;
        //  960    1002   852    857    Any
        //  1010   1126   481    486    Landroid/database/sqlite/SQLiteException;
        //  1010   1126   838    840    Ljava/lang/RuntimeException;
        //  1010   1126   852    857    Any
        //  1126   1158   481    486    Landroid/database/sqlite/SQLiteException;
        //  1126   1158   838    840    Ljava/lang/RuntimeException;
        //  1126   1158   852    857    Any
        //  1161   1170   481    486    Landroid/database/sqlite/SQLiteException;
        //  1161   1170   838    840    Ljava/lang/RuntimeException;
        //  1161   1170   852    857    Any
        //  1178   1186   481    486    Landroid/database/sqlite/SQLiteException;
        //  1178   1186   838    840    Ljava/lang/RuntimeException;
        //  1178   1186   852    857    Any
        //  1189   1198   481    486    Landroid/database/sqlite/SQLiteException;
        //  1189   1198   838    840    Ljava/lang/RuntimeException;
        //  1189   1198   852    857    Any
        //  1238   1245   481    486    Landroid/database/sqlite/SQLiteException;
        //  1238   1245   838    840    Ljava/lang/RuntimeException;
        //  1238   1245   852    857    Any
        //  1279   1290   481    486    Landroid/database/sqlite/SQLiteException;
        //  1279   1290   838    840    Ljava/lang/RuntimeException;
        //  1279   1290   852    857    Any
        //  1290   1299   481    486    Landroid/database/sqlite/SQLiteException;
        //  1290   1299   838    840    Ljava/lang/RuntimeException;
        //  1290   1299   852    857    Any
        //  1307   1321   481    486    Landroid/database/sqlite/SQLiteException;
        //  1307   1321   838    840    Ljava/lang/RuntimeException;
        //  1307   1321   852    857    Any
        //  1324   1336   481    486    Landroid/database/sqlite/SQLiteException;
        //  1324   1336   838    840    Ljava/lang/RuntimeException;
        //  1324   1336   852    857    Any
        //  1376   1454   481    486    Landroid/database/sqlite/SQLiteException;
        //  1376   1454   838    840    Ljava/lang/RuntimeException;
        //  1376   1454   852    857    Any
        //  1493   1607   481    486    Landroid/database/sqlite/SQLiteException;
        //  1493   1607   838    840    Ljava/lang/RuntimeException;
        //  1493   1607   852    857    Any
        //  1610   1617   481    486    Landroid/database/sqlite/SQLiteException;
        //  1610   1617   838    840    Ljava/lang/RuntimeException;
        //  1610   1617   852    857    Any
        //  1625   1632   481    486    Landroid/database/sqlite/SQLiteException;
        //  1625   1632   838    840    Ljava/lang/RuntimeException;
        //  1625   1632   852    857    Any
        //  1642   1679   481    486    Landroid/database/sqlite/SQLiteException;
        //  1642   1679   838    840    Ljava/lang/RuntimeException;
        //  1642   1679   852    857    Any
        //  1703   1712   481    486    Landroid/database/sqlite/SQLiteException;
        //  1703   1712   838    840    Ljava/lang/RuntimeException;
        //  1703   1712   852    857    Any
        //  1715   1726   481    486    Landroid/database/sqlite/SQLiteException;
        //  1715   1726   838    840    Ljava/lang/RuntimeException;
        //  1715   1726   852    857    Any
        //  1750   1777   481    486    Landroid/database/sqlite/SQLiteException;
        //  1750   1777   838    840    Ljava/lang/RuntimeException;
        //  1750   1777   852    857    Any
        //  1811   1838   481    486    Landroid/database/sqlite/SQLiteException;
        //  1811   1838   838    840    Ljava/lang/RuntimeException;
        //  1811   1838   852    857    Any
        //  1872   1899   481    486    Landroid/database/sqlite/SQLiteException;
        //  1872   1899   838    840    Ljava/lang/RuntimeException;
        //  1872   1899   852    857    Any
        //  1933   1953   481    486    Landroid/database/sqlite/SQLiteException;
        //  1933   1953   838    840    Ljava/lang/RuntimeException;
        //  1933   1953   852    857    Any
        //  1978   1998   481    486    Landroid/database/sqlite/SQLiteException;
        //  1978   1998   838    840    Ljava/lang/RuntimeException;
        //  1978   1998   852    857    Any
        //  2026   2046   481    486    Landroid/database/sqlite/SQLiteException;
        //  2026   2046   838    840    Ljava/lang/RuntimeException;
        //  2026   2046   852    857    Any
        //  2107   2151   481    486    Landroid/database/sqlite/SQLiteException;
        //  2107   2151   838    840    Ljava/lang/RuntimeException;
        //  2107   2151   852    857    Any
        //  2154   2192   481    486    Landroid/database/sqlite/SQLiteException;
        //  2154   2192   838    840    Ljava/lang/RuntimeException;
        //  2154   2192   852    857    Any
        //  2192   2203   481    486    Landroid/database/sqlite/SQLiteException;
        //  2192   2203   838    840    Ljava/lang/RuntimeException;
        //  2192   2203   852    857    Any
        //  2203   2298   481    486    Landroid/database/sqlite/SQLiteException;
        //  2203   2298   838    840    Ljava/lang/RuntimeException;
        //  2203   2298   852    857    Any
        //  2309   2342   481    486    Landroid/database/sqlite/SQLiteException;
        //  2309   2342   838    840    Ljava/lang/RuntimeException;
        //  2309   2342   852    857    Any
        //  2342   2364   481    486    Landroid/database/sqlite/SQLiteException;
        //  2342   2364   838    840    Ljava/lang/RuntimeException;
        //  2342   2364   852    857    Any
        //  2364   2386   481    486    Landroid/database/sqlite/SQLiteException;
        //  2364   2386   838    840    Ljava/lang/RuntimeException;
        //  2364   2386   852    857    Any
        //  2386   2400   481    486    Landroid/database/sqlite/SQLiteException;
        //  2386   2400   838    840    Ljava/lang/RuntimeException;
        //  2386   2400   852    857    Any
        //  2403   2423   481    486    Landroid/database/sqlite/SQLiteException;
        //  2403   2423   838    840    Ljava/lang/RuntimeException;
        //  2403   2423   852    857    Any
        //  2426   2465   481    486    Landroid/database/sqlite/SQLiteException;
        //  2426   2465   838    840    Ljava/lang/RuntimeException;
        //  2426   2465   852    857    Any
        //  2468   2490   481    486    Landroid/database/sqlite/SQLiteException;
        //  2468   2490   838    840    Ljava/lang/RuntimeException;
        //  2468   2490   852    857    Any
        //  2493   2497   481    486    Landroid/database/sqlite/SQLiteException;
        //  2493   2497   838    840    Ljava/lang/RuntimeException;
        //  2493   2497   852    857    Any
        //  2507   2528   481    486    Landroid/database/sqlite/SQLiteException;
        //  2507   2528   838    840    Ljava/lang/RuntimeException;
        //  2507   2528   852    857    Any
        //  2531   2540   481    486    Landroid/database/sqlite/SQLiteException;
        //  2531   2540   838    840    Ljava/lang/RuntimeException;
        //  2531   2540   852    857    Any
        //  2543   2568   481    486    Landroid/database/sqlite/SQLiteException;
        //  2543   2568   838    840    Ljava/lang/RuntimeException;
        //  2543   2568   852    857    Any
        //  2571   2644   481    486    Landroid/database/sqlite/SQLiteException;
        //  2571   2644   838    840    Ljava/lang/RuntimeException;
        //  2571   2644   852    857    Any
        //  2647   2706   481    486    Landroid/database/sqlite/SQLiteException;
        //  2647   2706   838    840    Ljava/lang/RuntimeException;
        //  2647   2706   852    857    Any
        //  2709   2782   481    486    Landroid/database/sqlite/SQLiteException;
        //  2709   2782   838    840    Ljava/lang/RuntimeException;
        //  2709   2782   852    857    Any
        //  2789   2805   481    486    Landroid/database/sqlite/SQLiteException;
        //  2789   2805   838    840    Ljava/lang/RuntimeException;
        //  2789   2805   852    857    Any
        //  2805   2844   481    486    Landroid/database/sqlite/SQLiteException;
        //  2805   2844   838    840    Ljava/lang/RuntimeException;
        //  2805   2844   852    857    Any
        //  2848   2877   3001   3018   Any
        //  2882   2909   3001   3018   Any
        //  2912   2916   3001   3018   Any
        //  2923   2963   3001   3018   Any
        //  2966   2998   3001   3018   Any
        //  3008   3015   3018   3023   Landroid/database/sqlite/SQLiteException;
        //  3008   3015   3208   3217   Ljava/lang/RuntimeException;
        //  3008   3015   493    499    Any
        //  3015   3018   3018   3023   Landroid/database/sqlite/SQLiteException;
        //  3015   3018   3208   3217   Ljava/lang/RuntimeException;
        //  3015   3018   493    499    Any
        //  3023   3055   3001   3018   Any
        //  3058   3093   3001   3018   Any
        //  3096   3115   3001   3018   Any
        //  3118   3125   3001   3018   Any
        //  3130   3137   3018   3023   Landroid/database/sqlite/SQLiteException;
        //  3130   3137   3208   3217   Ljava/lang/RuntimeException;
        //  3130   3137   493    499    Any
        //  3172   3179   3018   3023   Landroid/database/sqlite/SQLiteException;
        //  3172   3179   3208   3217   Ljava/lang/RuntimeException;
        //  3172   3179   493    499    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0456:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public void shutdown() {
        if (this.Sv != null) {
            this.Sv.close();
            this.Sv = null;
        }
        if (this.Sw != null) {
            this.Sw.close();
            this.Sw = null;
        }
    }
    
    public int update(final Uri p0, final ContentValues p1, final String p2, final String[] p3) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //     3: new             Ljava/lang/StringBuilder;
        //     6: dup            
        //     7: ldc_w           "Update: "
        //    10: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    13: aload_1        
        //    14: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //    17: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    20: iconst_0       
        //    21: anewarray       Ljava/lang/Object;
        //    24: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    27: pop            
        //    28: getstatic       com/android/email/provider/EmailProvider.Ss:Landroid/net/Uri;
        //    31: aload_1        
        //    32: invokevirtual   android/net/Uri.equals:(Ljava/lang/Object;)Z
        //    35: ifeq            48
        //    38: aload_0        
        //    39: invokespecial   com/android/email/provider/EmailProvider.ke:()V
        //    42: iconst_0       
        //    43: istore          14
        //    45: iload           14
        //    47: ireturn        
        //    48: getstatic       com/android/email/provider/EmailProvider.St:Landroid/net/Uri;
        //    51: aload_1        
        //    52: invokevirtual   android/net/Uri.equals:(Ljava/lang/Object;)Z
        //    55: ifeq            74
        //    58: aload_0        
        //    59: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //    62: aload_0        
        //    63: aload_0        
        //    64: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //    67: invokespecial   com/android/email/provider/EmailProvider.G:(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
        //    70: invokestatic    com/android/email/provider/EmailProvider.f:(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I
        //    73: ireturn        
        //    74: getstatic       com/android/emailcommon/provider/EmailContent.CONTENT_URI:Landroid/net/Uri;
        //    77: astore          6
        //    79: aload_1        
        //    80: ldc_w           "update"
        //    83: invokestatic    com/android/email/provider/EmailProvider.a:(Landroid/net/Uri;Ljava/lang/String;)I
        //    86: istore          7
        //    88: aload_0        
        //    89: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //    92: astore          8
        //    94: aload_0        
        //    95: aload           8
        //    97: invokespecial   com/android/email/provider/EmailProvider.G:(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
        //   100: astore          9
        //   102: iload           7
        //   104: bipush          12
        //   106: ishr           
        //   107: istore          10
        //   109: iload           7
        //   111: sipush          4097
        //   114: if_icmpeq       125
        //   117: iload           7
        //   119: sipush          4096
        //   122: if_icmpne       139
        //   125: aload_2        
        //   126: ldc_w           "unreadCount"
        //   129: invokevirtual   android/content/ContentValues.remove:(Ljava/lang/String;)V
        //   132: aload_2        
        //   133: ldc_w           "messageCount"
        //   136: invokevirtual   android/content/ContentValues.remove:(Ljava/lang/String;)V
        //   139: getstatic       com/android/email/provider/EmailProvider.Sl:Landroid/util/SparseArray;
        //   142: iload           10
        //   144: invokevirtual   android/util/SparseArray.valueAt:(I)Ljava/lang/Object;
        //   147: checkcast       Ljava/lang/String;
        //   150: astore          11
        //   152: ldc_w           "0"
        //   155: astore          12
        //   157: iload           7
        //   159: lookupswitch {
        //                0: 2738
        //                1: 1120
        //                2: 954
        //                3: 458
        //                4: 469
        //             4096: 2738
        //             4097: 1120
        //             8192: 2734
        //             8193: 1120
        //             8194: 1120
        //             8195: 1038
        //             8196: 2806
        //             8197: 2823
        //            12288: 2738
        //            12289: 1120
        //            16384: 2738
        //            16385: 1120
        //            20480: 2738
        //            20481: 1120
        //            28672: 2738
        //            28673: 1120
        //            32769: 1120
        //            36867: 946
        //            36870: 559
        //            36874: 649
        //            36880: 568
        //            36881: 575
        //            36886: 479
        //            40960: 2283
        //            40961: 2140
        //            45056: 2738
        //            45057: 1120
        //          default: 424
        //        }
        //   424: new             Ljava/lang/IllegalArgumentException;
        //   427: dup            
        //   428: new             Ljava/lang/StringBuilder;
        //   431: dup            
        //   432: ldc_w           "Unknown URI "
        //   435: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   438: aload_1        
        //   439: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   442: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   445: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //   448: athrow         
        //   449: astore          15
        //   451: aload_0        
        //   452: invokespecial   com/android/email/provider/EmailProvider.ke:()V
        //   455: aload           15
        //   457: athrow         
        //   458: aload_0        
        //   459: aload_1        
        //   460: bipush          6
        //   462: ldc_w           2131296980
        //   465: invokespecial   com/android/email/provider/EmailProvider.a:(Landroid/net/Uri;II)I
        //   468: ireturn        
        //   469: aload_0        
        //   470: aload_1        
        //   471: iconst_5       
        //   472: ldc_w           2131296981
        //   475: invokespecial   com/android/email/provider/EmailProvider.a:(Landroid/net/Uri;II)I
        //   478: ireturn        
        //   479: aload           8
        //   481: invokestatic    com/android/mail/i/g.ao:(Landroid/content/Context;)Lcom/android/mail/i/g;
        //   484: astore          118
        //   486: aload_2        
        //   487: ldc_w           "auto_advance"
        //   490: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //   493: ifeq            511
        //   496: aload           118
        //   498: aload_2        
        //   499: ldc_w           "auto_advance"
        //   502: invokevirtual   android/content/ContentValues.getAsInteger:(Ljava/lang/String;)Ljava/lang/Integer;
        //   505: invokevirtual   java/lang/Integer.intValue:()I
        //   508: invokevirtual   com/android/mail/i/g.cu:(I)V
        //   511: aload_2        
        //   512: ldc_w           "conversation_view_mode"
        //   515: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //   518: ifeq            544
        //   521: aload_2        
        //   522: ldc_w           "conversation_view_mode"
        //   525: invokevirtual   android/content/ContentValues.getAsInteger:(Ljava/lang/String;)Ljava/lang/Integer;
        //   528: invokevirtual   java/lang/Integer.intValue:()I
        //   531: ifne            2886
        //   534: iconst_1       
        //   535: istore          119
        //   537: aload           118
        //   539: iload           119
        //   541: invokevirtual   com/android/mail/i/g.bg:(Z)V
        //   544: aload           8
        //   546: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   549: getstatic       com/android/email/provider/EmailProvider.SF:Landroid/net/Uri;
        //   552: aconst_null    
        //   553: iconst_0       
        //   554: invokevirtual   android/content/ContentResolver.notifyChange:(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
        //   557: iconst_1       
        //   558: ireturn        
        //   559: aload_0        
        //   560: aload           8
        //   562: aload_1        
        //   563: aload_2        
        //   564: invokespecial   com/android/email/provider/EmailProvider.a:(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)I
        //   567: ireturn        
        //   568: aload_0        
        //   569: aload_1        
        //   570: aload_2        
        //   571: invokespecial   com/android/email/provider/EmailProvider.a:(Landroid/net/Uri;Landroid/content/ContentValues;)I
        //   574: ireturn        
        //   575: aload_0        
        //   576: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //   579: astore          111
        //   581: aload_1        
        //   582: invokevirtual   android/net/Uri.getLastPathSegment:()Ljava/lang/String;
        //   585: astore          112
        //   587: aload_0        
        //   588: aload           112
        //   590: invokespecial   com/android/email/provider/EmailProvider.Q:(Ljava/lang/String;)[Landroid/net/Uri;
        //   593: astore          113
        //   595: aload           113
        //   597: arraylength    
        //   598: ifgt            603
        //   601: iconst_0       
        //   602: ireturn        
        //   603: aload_0        
        //   604: aload           111
        //   606: aload           112
        //   608: aload           113
        //   610: invokespecial   com/android/email/provider/EmailProvider.a:(Landroid/content/Context;Ljava/lang/String;[Landroid/net/Uri;)I
        //   613: istore          114
        //   615: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //   618: astore          115
        //   620: iconst_1       
        //   621: anewarray       Ljava/lang/Object;
        //   624: astore          116
        //   626: aload           116
        //   628: iconst_0       
        //   629: iload           114
        //   631: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   634: aastore        
        //   635: aload           115
        //   637: ldc_w           "uiPopulateRecentFolders: %d folders changed"
        //   640: aload           116
        //   642: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   645: pop            
        //   646: iload           114
        //   648: ireturn        
        //   649: aload_2        
        //   650: ldc_w           "state"
        //   653: invokevirtual   android/content/ContentValues.getAsInteger:(Ljava/lang/String;)Ljava/lang/Integer;
        //   656: astore          98
        //   658: iconst_0       
        //   659: istore          14
        //   661: aload           98
        //   663: ifnull          45
        //   666: aload_1        
        //   667: invokevirtual   android/net/Uri.getLastPathSegment:()Ljava/lang/String;
        //   670: invokestatic    java/lang/Long.parseLong:(Ljava/lang/String;)J
        //   673: lstore          99
        //   675: aload_0        
        //   676: invokevirtual   com/android/email/provider/EmailProvider.getContext:()Landroid/content/Context;
        //   679: astore          101
        //   681: aload           101
        //   683: lload           99
        //   685: invokestatic    com/android/emailcommon/provider/EmailContent$Attachment.o:(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;
        //   688: astore          102
        //   690: aload           102
        //   692: ifnonnull       697
        //   695: iconst_0       
        //   696: ireturn        
        //   697: aload           98
        //   699: invokevirtual   java/lang/Integer.intValue:()I
        //   702: istore          103
        //   704: new             Landroid/content/ContentValues;
        //   707: dup            
        //   708: invokespecial   android/content/ContentValues.<init>:()V
        //   711: astore          104
        //   713: iload           103
        //   715: ifeq            727
        //   718: iconst_0       
        //   719: istore          14
        //   721: iload           103
        //   723: iconst_4       
        //   724: if_icmpne       2892
        //   727: aload           104
        //   729: ldc_w           "uiState"
        //   732: iconst_0       
        //   733: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   736: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   739: bipush          -3
        //   741: aload           102
        //   743: getfield        com/android/emailcommon/provider/EmailContent$Attachment.dM:I
        //   746: iand           
        //   747: istore          109
        //   749: aload           102
        //   751: iload           109
        //   753: putfield        com/android/emailcommon/provider/EmailContent$Attachment.dM:I
        //   756: aload           104
        //   758: ldc_w           "flags"
        //   761: iload           109
        //   763: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   766: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   769: aload           102
        //   771: aload           101
        //   773: aload           104
        //   775: invokevirtual   com/android/emailcommon/provider/EmailContent$Attachment.a:(Landroid/content/Context;Landroid/content/ContentValues;)I
        //   778: pop            
        //   779: iconst_1       
        //   780: istore          14
        //   782: goto            2892
        //   785: aload           104
        //   787: ldc_w           "uiState"
        //   790: iconst_2       
        //   791: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   794: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   797: aload_2        
        //   798: ldc_w           "destination"
        //   801: invokevirtual   android/content/ContentValues.getAsInteger:(Ljava/lang/String;)Ljava/lang/Integer;
        //   804: astore          105
        //   806: aload           105
        //   808: ifnonnull       936
        //   811: iconst_0       
        //   812: istore          106
        //   814: aload           104
        //   816: ldc_w           "uiDestination"
        //   819: iload           106
        //   821: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   824: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   827: aload           104
        //   829: ldc_w           "flags"
        //   832: iconst_2       
        //   833: aload           102
        //   835: getfield        com/android/emailcommon/provider/EmailContent$Attachment.dM:I
        //   838: ior            
        //   839: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   842: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   845: aload           104
        //   847: ldc_w           "location"
        //   850: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //   853: ifeq            891
        //   856: aload           104
        //   858: ldc_w           "location"
        //   861: invokevirtual   android/content/ContentValues.getAsString:(Ljava/lang/String;)Ljava/lang/String;
        //   864: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   867: ifeq            891
        //   870: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //   873: new             Ljava/lang/Throwable;
        //   876: dup            
        //   877: invokespecial   java/lang/Throwable.<init>:()V
        //   880: ldc_w           "attachment with blank location"
        //   883: iconst_0       
        //   884: anewarray       Ljava/lang/Object;
        //   887: invokestatic    com/android/mail/utils/E.d:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   890: pop            
        //   891: aload           102
        //   893: aload           101
        //   895: aload           104
        //   897: invokevirtual   com/android/emailcommon/provider/EmailContent$Attachment.a:(Landroid/content/Context;Landroid/content/ContentValues;)I
        //   900: pop            
        //   901: iconst_1       
        //   902: istore          14
        //   904: iload           103
        //   906: iconst_3       
        //   907: if_icmpne       45
        //   910: aload           102
        //   912: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yn:Ljava/lang/String;
        //   915: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   918: ifne            2907
        //   921: aload_0        
        //   922: getstatic       com/android/email/provider/EmailProvider.SG:Landroid/net/Uri;
        //   925: aload           102
        //   927: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yq:J
        //   930: invokespecial   com/android/email/provider/EmailProvider.a:(Landroid/net/Uri;J)V
        //   933: goto            2907
        //   936: aload           105
        //   938: invokevirtual   java/lang/Integer.intValue:()I
        //   941: istore          106
        //   943: goto            814
        //   946: aload_0        
        //   947: aload_1        
        //   948: aload_2        
        //   949: iconst_0       
        //   950: invokespecial   com/android/email/provider/EmailProvider.a:(Landroid/net/Uri;Landroid/content/ContentValues;Z)I
        //   953: ireturn        
        //   954: aload_1        
        //   955: invokevirtual   android/net/Uri.getLastPathSegment:()Ljava/lang/String;
        //   958: astore          94
        //   960: aconst_null    
        //   961: astore          95
        //   963: aload           9
        //   965: ldc_w           "select count(*) from (select count(*) as dupes from Mailbox where accountKey=? group by serverId) where dupes > 1"
        //   968: iconst_1       
        //   969: anewarray       Ljava/lang/String;
        //   972: dup            
        //   973: iconst_0       
        //   974: aload           94
        //   976: aastore        
        //   977: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //   980: astore          95
        //   982: aload           95
        //   984: invokeinterface android/database/Cursor.moveToFirst:()Z
        //   989: ifeq            2880
        //   992: aload           95
        //   994: iconst_0       
        //   995: invokeinterface android/database/Cursor.getInt:(I)I
        //  1000: istore          97
        //  1002: iload           97
        //  1004: istore          14
        //  1006: aload           95
        //  1008: ifnull          45
        //  1011: aload           95
        //  1013: invokeinterface android/database/Cursor.close:()V
        //  1018: iload           14
        //  1020: ireturn        
        //  1021: astore          96
        //  1023: aload           95
        //  1025: ifnull          1035
        //  1028: aload           95
        //  1030: invokeinterface android/database/Cursor.close:()V
        //  1035: aload           96
        //  1037: athrow         
        //  1038: aload           9
        //  1040: aload           11
        //  1042: getstatic       com/android/emailcommon/provider/g.YI:[Ljava/lang/String;
        //  1045: aload_3        
        //  1046: aload           4
        //  1048: aconst_null    
        //  1049: aconst_null    
        //  1050: aconst_null    
        //  1051: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //  1054: astore          91
        //  1056: aload           91
        //  1058: invokeinterface android/database/Cursor.moveToFirst:()Z
        //  1063: ifeq            1099
        //  1066: aload_0        
        //  1067: getstatic       com/android/emailcommon/provider/g.CONTENT_URI:Landroid/net/Uri;
        //  1070: aload           91
        //  1072: iconst_0       
        //  1073: invokeinterface android/database/Cursor.getLong:(I)J
        //  1078: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //  1081: aload_2        
        //  1082: aconst_null    
        //  1083: aconst_null    
        //  1084: invokevirtual   com/android/email/provider/EmailProvider.update:(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //  1087: istore          93
        //  1089: aload           91
        //  1091: invokeinterface android/database/Cursor.close:()V
        //  1096: iload           93
        //  1098: ireturn        
        //  1099: aload           91
        //  1101: invokeinterface android/database/Cursor.close:()V
        //  1106: iconst_0       
        //  1107: ireturn        
        //  1108: astore          92
        //  1110: aload           91
        //  1112: invokeinterface android/database/Cursor.close:()V
        //  1117: aload           92
        //  1119: athrow         
        //  1120: aload_1        
        //  1121: invokevirtual   android/net/Uri.getPathSegments:()Ljava/util/List;
        //  1124: iconst_1       
        //  1125: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //  1130: checkcast       Ljava/lang/String;
        //  1133: astore          12
        //  1135: iload           7
        //  1137: sipush          8194
        //  1140: if_icmpne       1852
        //  1143: lconst_0       
        //  1144: lstore          54
        //  1146: lconst_0       
        //  1147: lstore          56
        //  1149: aload           9
        //  1151: ldc_w           "SELECT h.protocol, m.mailboxKey, a._id FROM Message AS m INNER JOIN Account AS a ON m.accountKey=a._id INNER JOIN HostAuth AS h ON a.hostAuthKeyRecv=h._id WHERE m._id=?"
        //  1154: iconst_1       
        //  1155: anewarray       Ljava/lang/String;
        //  1158: dup            
        //  1159: iconst_0       
        //  1160: aload           12
        //  1162: aastore        
        //  1163: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //  1166: astore          58
        //  1168: aload           58
        //  1170: ifnull          2870
        //  1173: aload           58
        //  1175: invokeinterface android/database/Cursor.moveToFirst:()Z
        //  1180: istore          86
        //  1182: iconst_0       
        //  1183: istore          87
        //  1185: iload           86
        //  1187: ifeq            1239
        //  1190: aload           58
        //  1192: iconst_0       
        //  1193: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //  1198: astore          88
        //  1200: aload           8
        //  1202: ldc_w           2131297000
        //  1205: invokevirtual   android/content/Context.getString:(I)Ljava/lang/String;
        //  1208: aload           88
        //  1210: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  1213: istore          87
        //  1215: aload           58
        //  1217: iconst_1       
        //  1218: invokeinterface android/database/Cursor.getLong:(I)J
        //  1223: lstore          54
        //  1225: aload           58
        //  1227: iconst_2       
        //  1228: invokeinterface android/database/Cursor.getLong:(I)J
        //  1233: lstore          89
        //  1235: lload           89
        //  1237: lstore          56
        //  1239: aload           58
        //  1241: invokeinterface android/database/Cursor.close:()V
        //  1246: lload           56
        //  1248: lstore          59
        //  1250: iload           87
        //  1252: istore          61
        //  1254: iload           61
        //  1256: ifeq            1826
        //  1259: aload_2        
        //  1260: ldc             "mailboxKey"
        //  1262: invokevirtual   android/content/ContentValues.getAsLong:(Ljava/lang/String;)Ljava/lang/Long;
        //  1265: astore          62
        //  1267: aload           62
        //  1269: ifnull          1367
        //  1272: aload           62
        //  1274: invokevirtual   java/lang/Long.longValue:()J
        //  1277: lstore          63
        //  1279: getstatic       java/util/Locale.US:Ljava/util/Locale;
        //  1282: astore          65
        //  1284: getstatic       com/android/email/provider/EmailProvider.SJ:Ljava/lang/String;
        //  1287: astore          66
        //  1289: bipush          8
        //  1291: anewarray       Ljava/lang/Object;
        //  1294: astore          67
        //  1296: aload           67
        //  1298: iconst_0       
        //  1299: ldc_w           "MessageMove"
        //  1302: aastore        
        //  1303: aload           67
        //  1305: iconst_1       
        //  1306: aload           12
        //  1308: aastore        
        //  1309: aload           67
        //  1311: iconst_2       
        //  1312: aload           12
        //  1314: aastore        
        //  1315: aload           67
        //  1317: iconst_3       
        //  1318: aload           12
        //  1320: aastore        
        //  1321: aload           67
        //  1323: iconst_4       
        //  1324: aload           12
        //  1326: aastore        
        //  1327: aload           67
        //  1329: iconst_5       
        //  1330: lload           63
        //  1332: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //  1335: aastore        
        //  1336: aload           67
        //  1338: bipush          6
        //  1340: aload           12
        //  1342: aastore        
        //  1343: aload           67
        //  1345: bipush          7
        //  1347: lload           63
        //  1349: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //  1352: aastore        
        //  1353: aload           9
        //  1355: aload           65
        //  1357: aload           66
        //  1359: aload           67
        //  1361: invokestatic    java/lang/String.format:(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //  1364: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //  1367: aload_2        
        //  1368: ldc_w           "flagRead"
        //  1371: invokevirtual   android/content/ContentValues.getAsInteger:(Ljava/lang/String;)Ljava/lang/Integer;
        //  1374: astore          68
        //  1376: aload_2        
        //  1377: ldc_w           "flagFavorite"
        //  1380: invokevirtual   android/content/ContentValues.getAsInteger:(Ljava/lang/String;)Ljava/lang/Integer;
        //  1383: astore          69
        //  1385: aload           68
        //  1387: ifnull          2922
        //  1390: aload           68
        //  1392: invokevirtual   java/lang/Integer.intValue:()I
        //  1395: istore          70
        //  1397: aload           69
        //  1399: ifnull          2928
        //  1402: aload           69
        //  1404: invokevirtual   java/lang/Integer.intValue:()I
        //  1407: istore          71
        //  1409: goto            2909
        //  1412: getstatic       java/util/Locale.US:Ljava/util/Locale;
        //  1415: astore          72
        //  1417: getstatic       com/android/email/provider/EmailProvider.SK:Ljava/lang/String;
        //  1420: astore          73
        //  1422: bipush          8
        //  1424: anewarray       Ljava/lang/Object;
        //  1427: astore          74
        //  1429: aload           74
        //  1431: iconst_0       
        //  1432: ldc_w           "MessageStateChange"
        //  1435: aastore        
        //  1436: aload           74
        //  1438: iconst_1       
        //  1439: aload           12
        //  1441: aastore        
        //  1442: aload           74
        //  1444: iconst_2       
        //  1445: aload           12
        //  1447: aastore        
        //  1448: aload           74
        //  1450: iconst_3       
        //  1451: aload           12
        //  1453: aastore        
        //  1454: aload           74
        //  1456: iconst_4       
        //  1457: aload           12
        //  1459: aastore        
        //  1460: aload           74
        //  1462: iconst_5       
        //  1463: iload           70
        //  1465: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1468: aastore        
        //  1469: aload           74
        //  1471: bipush          6
        //  1473: aload           12
        //  1475: aastore        
        //  1476: aload           74
        //  1478: bipush          7
        //  1480: iload           71
        //  1482: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1485: aastore        
        //  1486: aload           9
        //  1488: aload           72
        //  1490: aload           73
        //  1492: aload           74
        //  1494: invokestatic    java/lang/String.format:(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //  1497: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //  1500: aload_0        
        //  1501: invokespecial   com/android/email/provider/EmailProvider.kl:()Landroid/os/Handler;
        //  1504: astore          75
        //  1506: aload_0        
        //  1507: lload           59
        //  1509: invokespecial   com/android/email/provider/EmailProvider.u:(J)Landroid/accounts/Account;
        //  1512: astore          76
        //  1514: aload           76
        //  1516: ifnull          1792
        //  1519: new             Lcom/android/email/provider/v;
        //  1522: dup            
        //  1523: aload_0        
        //  1524: aload_1        
        //  1525: invokevirtual   android/net/Uri.getAuthority:()Ljava/lang/String;
        //  1528: aload           76
        //  1530: lload           54
        //  1532: iconst_0       
        //  1533: invokespecial   com/android/email/provider/v.<init>:(Lcom/android/email/provider/EmailProvider;Ljava/lang/String;Landroid/accounts/Account;JB)V
        //  1536: astore          77
        //  1538: aload_0        
        //  1539: getfield        com/android/email/provider/EmailProvider.Sy:Ljava/util/Set;
        //  1542: astore          78
        //  1544: aload           78
        //  1546: monitorenter   
        //  1547: aload_0        
        //  1548: getfield        com/android/email/provider/EmailProvider.Sy:Ljava/util/Set;
        //  1551: aload           77
        //  1553: invokeinterface java/util/Set.contains:(Ljava/lang/Object;)Z
        //  1558: ifne            1590
        //  1561: aload_0        
        //  1562: getfield        com/android/email/provider/EmailProvider.Sy:Ljava/util/Set;
        //  1565: aload           77
        //  1567: invokeinterface java/util/Set.add:(Ljava/lang/Object;)Z
        //  1572: pop            
        //  1573: aload           75
        //  1575: aload           75
        //  1577: iconst_0       
        //  1578: aload           77
        //  1580: invokevirtual   android/os/Handler.obtainMessage:(ILjava/lang/Object;)Landroid/os/Message;
        //  1583: ldc2_w          30000
        //  1586: invokevirtual   android/os/Handler.sendMessageDelayed:(Landroid/os/Message;J)Z
        //  1589: pop            
        //  1590: aload           78
        //  1592: monitorexit    
        //  1593: aload           9
        //  1595: aload           11
        //  1597: aload_2        
        //  1598: aload           12
        //  1600: aload_3        
        //  1601: invokestatic    com/android/email/provider/EmailProvider.i:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //  1604: aload           4
        //  1606: invokevirtual   android/database/sqlite/SQLiteDatabase.update:(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //  1609: istore          42
        //  1611: iload           7
        //  1613: sipush          8193
        //  1616: if_icmpeq       1627
        //  1619: iload           7
        //  1621: sipush          8194
        //  1624: if_icmpne       1898
        //  1627: aload_1        
        //  1628: ldc_w           "is_uiprovider"
        //  1631: iconst_0       
        //  1632: invokevirtual   android/net/Uri.getBooleanQueryParameter:(Ljava/lang/String;Z)Z
        //  1635: ifne            1643
        //  1638: aload_0        
        //  1639: aload_1        
        //  1640: invokespecial   com/android/email/provider/EmailProvider.e:(Landroid/net/Uri;)V
        //  1643: aload_0        
        //  1644: getstatic       com/android/email/provider/EmailProvider.SG:Landroid/net/Uri;
        //  1647: aload           12
        //  1649: invokespecial   com/android/email/provider/EmailProvider.b:(Landroid/net/Uri;Ljava/lang/String;)V
        //  1652: aload_2        
        //  1653: ldc_w           "flagRead"
        //  1656: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  1659: ifne            1671
        //  1662: aload_2        
        //  1663: ldc             "mailboxKey"
        //  1665: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  1668: ifeq            2934
        //  1671: aload_0        
        //  1672: getstatic       com/android/emailcommon/provider/g.CONTENT_URI:Landroid/net/Uri;
        //  1675: invokevirtual   android/net/Uri.buildUpon:()Landroid/net/Uri$Builder;
        //  1678: aload           12
        //  1680: invokevirtual   android/net/Uri$Builder.appendEncodedPath:(Ljava/lang/String;)Landroid/net/Uri$Builder;
        //  1683: invokevirtual   android/net/Uri$Builder.build:()Landroid/net/Uri;
        //  1686: getstatic       com/android/email/provider/EmailProvider.Td:[Ljava/lang/String;
        //  1689: aconst_null    
        //  1690: aconst_null    
        //  1691: aconst_null    
        //  1692: invokevirtual   com/android/email/provider/EmailProvider.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //  1695: astore          43
        //  1697: aload           43
        //  1699: ifnull          2934
        //  1702: aload           43
        //  1704: invokeinterface android/database/Cursor.moveToFirst:()Z
        //  1709: ifeq            1732
        //  1712: aload_0        
        //  1713: aload           43
        //  1715: iconst_0       
        //  1716: invokeinterface android/database/Cursor.getLong:(I)J
        //  1721: aload           43
        //  1723: iconst_1       
        //  1724: invokeinterface android/database/Cursor.getLong:(I)J
        //  1729: invokespecial   com/android/email/provider/EmailProvider.b:(JJ)V
        //  1732: aload           43
        //  1734: invokeinterface android/database/Cursor.close:()V
        //  1739: iload           42
        //  1741: istore          14
        //  1743: iload           14
        //  1745: ifle            45
        //  1748: aload_0        
        //  1749: iload           7
        //  1751: invokestatic    com/android/email/provider/EmailProvider.bb:(I)Landroid/net/Uri;
        //  1754: ldc_w           "update"
        //  1757: aload           12
        //  1759: invokespecial   com/android/email/provider/EmailProvider.a:(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
        //  1762: aload_0        
        //  1763: aload           6
        //  1765: aconst_null    
        //  1766: invokespecial   com/android/email/provider/EmailProvider.b:(Landroid/net/Uri;Ljava/lang/String;)V
        //  1769: iload           14
        //  1771: ireturn        
        //  1772: astore          85
        //  1774: aload           58
        //  1776: invokeinterface android/database/Cursor.close:()V
        //  1781: aload           85
        //  1783: athrow         
        //  1784: astore          79
        //  1786: aload           78
        //  1788: monitorexit    
        //  1789: aload           79
        //  1791: athrow         
        //  1792: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  1795: astore          82
        //  1797: iconst_1       
        //  1798: anewarray       Ljava/lang/Object;
        //  1801: astore          83
        //  1803: aload           83
        //  1805: iconst_0       
        //  1806: lload           59
        //  1808: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //  1811: aastore        
        //  1812: aload           82
        //  1814: ldc_w           "Attempted to start delayed sync for invalid account %d"
        //  1817: aload           83
        //  1819: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1822: pop            
        //  1823: goto            1593
        //  1826: aload           9
        //  1828: new             Ljava/lang/StringBuilder;
        //  1831: dup            
        //  1832: ldc_w           "insert or ignore into Message_Updates select * from Message where _id="
        //  1835: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1838: aload           12
        //  1840: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1843: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1846: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //  1849: goto            1593
        //  1852: iload           7
        //  1854: sipush          8193
        //  1857: if_icmpne       1593
        //  1860: aload           9
        //  1862: new             Ljava/lang/StringBuilder;
        //  1865: dup            
        //  1866: ldc_w           "delete from Message_Updates where _id="
        //  1869: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1872: aload           12
        //  1874: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1877: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1880: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //  1883: goto            1593
        //  1886: astore          44
        //  1888: aload           43
        //  1890: invokeinterface android/database/Cursor.close:()V
        //  1895: aload           44
        //  1897: athrow         
        //  1898: iload           7
        //  1900: sipush          12289
        //  1903: if_icmpne       2009
        //  1906: aload           12
        //  1908: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //  1911: i2l            
        //  1912: lstore          45
        //  1914: aload_2        
        //  1915: ldc_w           "flags"
        //  1918: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  1921: ifeq            1951
        //  1924: aload_2        
        //  1925: ldc_w           "flags"
        //  1928: invokevirtual   android/content/ContentValues.getAsInteger:(Ljava/lang/String;)Ljava/lang/Integer;
        //  1931: invokevirtual   java/lang/Integer.intValue:()I
        //  1934: istore          48
        //  1936: aload_0        
        //  1937: getfield        com/android/email/provider/EmailProvider.SN:Lcom/android/email/provider/t;
        //  1940: aload           8
        //  1942: lload           45
        //  1944: iload           48
        //  1946: invokeinterface com/android/email/provider/t.a:(Landroid/content/Context;JI)V
        //  1951: aload_2        
        //  1952: ldc_w           "uiState"
        //  1955: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  1958: ifne            1971
        //  1961: aload_2        
        //  1962: ldc_w           "uiDownloadedSize"
        //  1965: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  1968: ifeq            2941
        //  1971: aload_0        
        //  1972: getstatic       com/android/email/provider/EmailProvider.SD:Landroid/net/Uri;
        //  1975: aload           12
        //  1977: invokespecial   com/android/email/provider/EmailProvider.b:(Landroid/net/Uri;Ljava/lang/String;)V
        //  1980: aload           8
        //  1982: lload           45
        //  1984: invokestatic    com/android/emailcommon/provider/EmailContent$Attachment.o:(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;
        //  1987: astore          47
        //  1989: aload           47
        //  1991: ifnull          2941
        //  1994: aload_0        
        //  1995: getstatic       com/android/email/provider/EmailProvider.SE:Landroid/net/Uri;
        //  1998: aload           47
        //  2000: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yq:J
        //  2003: invokespecial   com/android/email/provider/EmailProvider.a:(Landroid/net/Uri;J)V
        //  2006: goto            2941
        //  2009: iload           7
        //  2011: sipush          4097
        //  2014: if_icmpne       2074
        //  2017: aload           8
        //  2019: aload           12
        //  2021: invokestatic    com/android/emailcommon/provider/Mailbox.q:(Landroid/content/Context;Ljava/lang/String;)J
        //  2024: lstore          49
        //  2026: aload_0        
        //  2027: aload           12
        //  2029: lload           49
        //  2031: invokespecial   com/android/email/provider/EmailProvider.c:(Ljava/lang/String;J)V
        //  2034: lload           49
        //  2036: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //  2039: astore          51
        //  2041: aload_2        
        //  2042: ldc_w           "syncLookback"
        //  2045: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  2048: ifne            2061
        //  2051: aload_2        
        //  2052: ldc_w           "syncInterval"
        //  2055: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  2058: ifeq            2948
        //  2061: aload           8
        //  2063: aload           9
        //  2065: aload           51
        //  2067: invokestatic    com/android/email/provider/EmailProvider.a:(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
        //  2070: pop            
        //  2071: goto            2948
        //  2074: iload           7
        //  2076: iconst_1       
        //  2077: if_icmpne       2863
        //  2080: aload_0        
        //  2081: aload           12
        //  2083: invokestatic    java/lang/Long.parseLong:(Ljava/lang/String;)J
        //  2086: aload_2        
        //  2087: invokespecial   com/android/email/provider/EmailProvider.a:(JLandroid/content/ContentValues;)V
        //  2090: aload_0        
        //  2091: getstatic       com/android/email/provider/EmailProvider.SC:Landroid/net/Uri;
        //  2094: aload           12
        //  2096: invokespecial   com/android/email/provider/EmailProvider.b:(Landroid/net/Uri;Ljava/lang/String;)V
        //  2099: aload_0        
        //  2100: getstatic       com/android/email/provider/EmailProvider.SF:Landroid/net/Uri;
        //  2103: aconst_null    
        //  2104: invokespecial   com/android/email/provider/EmailProvider.b:(Landroid/net/Uri;Ljava/lang/String;)V
        //  2107: aload_2        
        //  2108: ldc_w           "syncLookback"
        //  2111: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  2114: ifne            2127
        //  2117: aload_2        
        //  2118: ldc_w           "syncInterval"
        //  2121: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  2124: ifeq            2955
        //  2127: aload           8
        //  2129: aload           9
        //  2131: aload           12
        //  2133: invokestatic    com/android/email/provider/EmailProvider.a:(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
        //  2136: pop            
        //  2137: goto            2955
        //  2140: new             Landroid/content/ContentValues;
        //  2143: dup            
        //  2144: aload_2        
        //  2145: invokespecial   android/content/ContentValues.<init>:(Landroid/content/ContentValues;)V
        //  2148: astore          36
        //  2150: aload           36
        //  2152: ldc_w           "htmlContent"
        //  2155: invokevirtual   android/content/ContentValues.remove:(Ljava/lang/String;)V
        //  2158: aload           36
        //  2160: ldc_w           "textContent"
        //  2163: invokevirtual   android/content/ContentValues.remove:(Ljava/lang/String;)V
        //  2166: aload           9
        //  2168: aload           11
        //  2170: aload           36
        //  2172: aload           12
        //  2174: aload_3        
        //  2175: invokestatic    com/android/email/provider/EmailProvider.i:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //  2178: aload           4
        //  2180: invokevirtual   android/database/sqlite/SQLiteDatabase.update:(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //  2183: istore          37
        //  2185: aload_2        
        //  2186: ldc_w           "htmlContent"
        //  2189: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  2192: ifne            2205
        //  2195: aload_2        
        //  2196: ldc_w           "textContent"
        //  2199: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  2202: ifeq            2856
        //  2205: aload_2        
        //  2206: ldc_w           "messageKey"
        //  2209: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  2212: ifeq            2242
        //  2215: aload_2        
        //  2216: ldc_w           "messageKey"
        //  2219: invokevirtual   android/content/ContentValues.getAsLong:(Ljava/lang/String;)Ljava/lang/Long;
        //  2222: invokevirtual   java/lang/Long.longValue:()J
        //  2225: lstore          40
        //  2227: aload           8
        //  2229: lload           40
        //  2231: aload_2        
        //  2232: invokestatic    com/android/email/provider/EmailProvider.a:(Landroid/content/Context;JLandroid/content/ContentValues;)V
        //  2235: iload           37
        //  2237: istore          14
        //  2239: goto            1743
        //  2242: aload           12
        //  2244: invokestatic    java/lang/Long.parseLong:(Ljava/lang/String;)J
        //  2247: lstore          38
        //  2249: aload           9
        //  2251: new             Ljava/lang/StringBuilder;
        //  2254: dup            
        //  2255: ldc_w           "select messageKey from Body where _id="
        //  2258: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  2261: lload           38
        //  2263: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //  2266: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2269: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  2272: invokevirtual   android/database/sqlite/SQLiteDatabase.compileStatement:(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
        //  2275: invokevirtual   android/database/sqlite/SQLiteStatement.simpleQueryForLong:()J
        //  2278: lstore          40
        //  2280: goto            2227
        //  2283: new             Landroid/content/ContentValues;
        //  2286: dup            
        //  2287: aload_2        
        //  2288: invokespecial   android/content/ContentValues.<init>:(Landroid/content/ContentValues;)V
        //  2291: astore          17
        //  2293: aload           17
        //  2295: ldc_w           "htmlContent"
        //  2298: invokevirtual   android/content/ContentValues.remove:(Ljava/lang/String;)V
        //  2301: aload           17
        //  2303: ldc_w           "textContent"
        //  2306: invokevirtual   android/content/ContentValues.remove:(Ljava/lang/String;)V
        //  2309: aload           17
        //  2311: invokevirtual   android/content/ContentValues.size:()I
        //  2314: ifeq            2399
        //  2317: aload           9
        //  2319: aload           11
        //  2321: aload           17
        //  2323: aload_3        
        //  2324: aload           4
        //  2326: invokevirtual   android/database/sqlite/SQLiteDatabase.update:(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //  2329: istore          21
        //  2331: iload           21
        //  2333: ifne            2475
        //  2336: aload_3        
        //  2337: ldc_w           "messageKey=?"
        //  2340: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  2343: ifeq            2475
        //  2346: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  2349: ldc_w           "Body Update to non-existent row, morphing to insert"
        //  2352: iconst_0       
        //  2353: anewarray       Ljava/lang/Object;
        //  2356: invokestatic    com/android/mail/utils/E.d:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2359: pop            
        //  2360: new             Landroid/content/ContentValues;
        //  2363: dup            
        //  2364: aload_2        
        //  2365: invokespecial   android/content/ContentValues.<init>:(Landroid/content/ContentValues;)V
        //  2368: astore          33
        //  2370: aload           33
        //  2372: ldc_w           "messageKey"
        //  2375: aload           4
        //  2377: iconst_0       
        //  2378: aaload         
        //  2379: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  2382: aload_0        
        //  2383: getstatic       com/android/emailcommon/provider/e.CONTENT_URI:Landroid/net/Uri;
        //  2386: aload           33
        //  2388: invokevirtual   com/android/email/provider/EmailProvider.insert:(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
        //  2391: pop            
        //  2392: iload           21
        //  2394: istore          14
        //  2396: goto            1743
        //  2399: aload           9
        //  2401: aload           11
        //  2403: iconst_1       
        //  2404: anewarray       Ljava/lang/String;
        //  2407: dup            
        //  2408: iconst_0       
        //  2409: ldc             "_id"
        //  2411: aastore        
        //  2412: aload_3        
        //  2413: aload           4
        //  2415: aconst_null    
        //  2416: aconst_null    
        //  2417: aconst_null    
        //  2418: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //  2421: astore          20
        //  2423: aload           20
        //  2425: astore          19
        //  2427: aload           19
        //  2429: ifnull          2962
        //  2432: aload           19
        //  2434: invokeinterface android/database/Cursor.getCount:()I
        //  2439: istore          35
        //  2441: iload           35
        //  2443: istore          21
        //  2445: aload           19
        //  2447: ifnull          2331
        //  2450: aload           19
        //  2452: invokeinterface android/database/Cursor.close:()V
        //  2457: goto            2331
        //  2460: aload           19
        //  2462: ifnull          2472
        //  2465: aload           19
        //  2467: invokeinterface android/database/Cursor.close:()V
        //  2472: aload           18
        //  2474: athrow         
        //  2475: aload_2        
        //  2476: ldc_w           "htmlContent"
        //  2479: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  2482: ifne            2495
        //  2485: aload_2        
        //  2486: ldc_w           "textContent"
        //  2489: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  2492: ifeq            2849
        //  2495: aload_2        
        //  2496: ldc_w           "messageKey"
        //  2499: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  2502: ifeq            2552
        //  2505: iconst_1       
        //  2506: newarray        J
        //  2508: astore          25
        //  2510: aload           25
        //  2512: iconst_0       
        //  2513: aload_2        
        //  2514: ldc_w           "messageKey"
        //  2517: invokevirtual   android/content/ContentValues.getAsLong:(Ljava/lang/String;)Ljava/lang/Long;
        //  2520: invokevirtual   java/lang/Long.longValue:()J
        //  2523: lastore        
        //  2524: goto            2976
        //  2527: iload           28
        //  2529: aload           25
        //  2531: arraylength    
        //  2532: if_icmpge       2982
        //  2535: aload           8
        //  2537: aload           25
        //  2539: iload           28
        //  2541: laload         
        //  2542: aload_2        
        //  2543: invokestatic    com/android/email/provider/EmailProvider.a:(Landroid/content/Context;JLandroid/content/ContentValues;)V
        //  2546: iinc            28, 1
        //  2549: goto            2527
        //  2552: aload_2        
        //  2553: ldc             "_id"
        //  2555: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  2558: ifeq            2617
        //  2561: aload_2        
        //  2562: ldc             "_id"
        //  2564: invokevirtual   android/content/ContentValues.getAsLong:(Ljava/lang/String;)Ljava/lang/Long;
        //  2567: invokevirtual   java/lang/Long.longValue:()J
        //  2570: lstore          29
        //  2572: aload           9
        //  2574: new             Ljava/lang/StringBuilder;
        //  2577: dup            
        //  2578: ldc_w           "select messageKey from Body where _id="
        //  2581: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  2584: lload           29
        //  2586: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //  2589: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2592: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  2595: invokevirtual   android/database/sqlite/SQLiteDatabase.compileStatement:(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
        //  2598: astore          31
        //  2600: iconst_1       
        //  2601: newarray        J
        //  2603: astore          25
        //  2605: aload           25
        //  2607: iconst_0       
        //  2608: aload           31
        //  2610: invokevirtual   android/database/sqlite/SQLiteStatement.simpleQueryForLong:()J
        //  2613: lastore        
        //  2614: goto            2976
        //  2617: aload           9
        //  2619: ldc             "Body"
        //  2621: iconst_1       
        //  2622: anewarray       Ljava/lang/String;
        //  2625: dup            
        //  2626: iconst_0       
        //  2627: ldc_w           "messageKey"
        //  2630: aastore        
        //  2631: aload_3        
        //  2632: aload           4
        //  2634: aconst_null    
        //  2635: aconst_null    
        //  2636: aconst_null    
        //  2637: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //  2640: astore          22
        //  2642: aload           22
        //  2644: invokeinterface android/database/Cursor.getCount:()I
        //  2649: istore          24
        //  2651: iload           24
        //  2653: ifne            2679
        //  2656: new             Ljava/lang/IllegalStateException;
        //  2659: dup            
        //  2660: ldc_w           "Can't find body record"
        //  2663: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;)V
        //  2666: athrow         
        //  2667: astore          23
        //  2669: aload           22
        //  2671: invokeinterface android/database/Cursor.close:()V
        //  2676: aload           23
        //  2678: athrow         
        //  2679: iload           24
        //  2681: newarray        J
        //  2683: astore          25
        //  2685: iconst_0       
        //  2686: istore          26
        //  2688: aload           22
        //  2690: invokeinterface android/database/Cursor.moveToNext:()Z
        //  2695: ifeq            2724
        //  2698: iload           26
        //  2700: iconst_1       
        //  2701: iadd           
        //  2702: istore          27
        //  2704: aload           25
        //  2706: iload           26
        //  2708: aload           22
        //  2710: iconst_0       
        //  2711: invokeinterface android/database/Cursor.getLong:(I)J
        //  2716: lastore        
        //  2717: iload           27
        //  2719: istore          26
        //  2721: goto            2688
        //  2724: aload           22
        //  2726: invokeinterface android/database/Cursor.close:()V
        //  2731: goto            2976
        //  2734: aload_2        
        //  2735: invokestatic    com/android/email/provider/EmailProvider.a:(Landroid/content/ContentValues;)V
        //  2738: iload           7
        //  2740: sipush          12288
        //  2743: if_icmpne       2790
        //  2746: aload_2        
        //  2747: ldc_w           "location"
        //  2750: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //  2753: ifeq            2790
        //  2756: aload_2        
        //  2757: ldc_w           "location"
        //  2760: invokevirtual   android/content/ContentValues.getAsString:(Ljava/lang/String;)Ljava/lang/String;
        //  2763: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //  2766: ifeq            2790
        //  2769: getstatic       com/android/email/provider/EmailProvider.TAG:Ljava/lang/String;
        //  2772: new             Ljava/lang/Throwable;
        //  2775: dup            
        //  2776: invokespecial   java/lang/Throwable.<init>:()V
        //  2779: ldc_w           "attachment with blank location"
        //  2782: iconst_0       
        //  2783: anewarray       Ljava/lang/Object;
        //  2786: invokestatic    com/android/mail/utils/E.d:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2789: pop            
        //  2790: aload           9
        //  2792: aload           11
        //  2794: aload_2        
        //  2795: aload_3        
        //  2796: aload           4
        //  2798: invokevirtual   android/database/sqlite/SQLiteDatabase.update:(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //  2801: istore          14
        //  2803: goto            1743
        //  2806: aload           9
        //  2808: ldc_w           "MessageMove"
        //  2811: aload_2        
        //  2812: aload_3        
        //  2813: aload           4
        //  2815: invokevirtual   android/database/sqlite/SQLiteDatabase.update:(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //  2818: istore          14
        //  2820: goto            1743
        //  2823: aload           9
        //  2825: ldc_w           "MessageStateChange"
        //  2828: aload_2        
        //  2829: aload_3        
        //  2830: aload           4
        //  2832: invokevirtual   android/database/sqlite/SQLiteDatabase.update:(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
        //  2835: istore          13
        //  2837: iload           13
        //  2839: istore          14
        //  2841: goto            1743
        //  2844: astore          18
        //  2846: goto            2460
        //  2849: iload           21
        //  2851: istore          14
        //  2853: goto            1743
        //  2856: iload           37
        //  2858: istore          14
        //  2860: goto            1743
        //  2863: iload           42
        //  2865: istore          14
        //  2867: goto            1743
        //  2870: lload           56
        //  2872: lstore          59
        //  2874: iconst_0       
        //  2875: istore          61
        //  2877: goto            1254
        //  2880: iconst_1       
        //  2881: istore          14
        //  2883: goto            1006
        //  2886: iconst_0       
        //  2887: istore          119
        //  2889: goto            537
        //  2892: iload           103
        //  2894: iconst_2       
        //  2895: if_icmpeq       785
        //  2898: iload           103
        //  2900: iconst_4       
        //  2901: if_icmpne       904
        //  2904: goto            785
        //  2907: iconst_1       
        //  2908: ireturn        
        //  2909: aload           68
        //  2911: ifnonnull       1412
        //  2914: aload           69
        //  2916: ifnull          1500
        //  2919: goto            1412
        //  2922: iconst_m1      
        //  2923: istore          70
        //  2925: goto            1397
        //  2928: iconst_m1      
        //  2929: istore          71
        //  2931: goto            2909
        //  2934: iload           42
        //  2936: istore          14
        //  2938: goto            1743
        //  2941: iload           42
        //  2943: istore          14
        //  2945: goto            1743
        //  2948: iload           42
        //  2950: istore          14
        //  2952: goto            1743
        //  2955: iload           42
        //  2957: istore          14
        //  2959: goto            1743
        //  2962: iconst_0       
        //  2963: istore          21
        //  2965: goto            2445
        //  2968: astore          18
        //  2970: aconst_null    
        //  2971: astore          19
        //  2973: goto            2460
        //  2976: iconst_0       
        //  2977: istore          28
        //  2979: goto            2527
        //  2982: iload           21
        //  2984: istore          14
        //  2986: goto            1743
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  424    449    449    458    Landroid/database/sqlite/SQLiteException;
        //  458    469    449    458    Landroid/database/sqlite/SQLiteException;
        //  469    479    449    458    Landroid/database/sqlite/SQLiteException;
        //  479    511    449    458    Landroid/database/sqlite/SQLiteException;
        //  511    534    449    458    Landroid/database/sqlite/SQLiteException;
        //  537    544    449    458    Landroid/database/sqlite/SQLiteException;
        //  544    557    449    458    Landroid/database/sqlite/SQLiteException;
        //  559    568    449    458    Landroid/database/sqlite/SQLiteException;
        //  568    575    449    458    Landroid/database/sqlite/SQLiteException;
        //  575    601    449    458    Landroid/database/sqlite/SQLiteException;
        //  603    646    449    458    Landroid/database/sqlite/SQLiteException;
        //  649    658    449    458    Landroid/database/sqlite/SQLiteException;
        //  666    690    449    458    Landroid/database/sqlite/SQLiteException;
        //  697    713    449    458    Landroid/database/sqlite/SQLiteException;
        //  727    779    449    458    Landroid/database/sqlite/SQLiteException;
        //  785    806    449    458    Landroid/database/sqlite/SQLiteException;
        //  814    891    449    458    Landroid/database/sqlite/SQLiteException;
        //  891    901    449    458    Landroid/database/sqlite/SQLiteException;
        //  910    933    449    458    Landroid/database/sqlite/SQLiteException;
        //  936    943    449    458    Landroid/database/sqlite/SQLiteException;
        //  946    954    449    458    Landroid/database/sqlite/SQLiteException;
        //  954    960    449    458    Landroid/database/sqlite/SQLiteException;
        //  963    1002   1021   1038   Any
        //  1011   1018   449    458    Landroid/database/sqlite/SQLiteException;
        //  1028   1035   449    458    Landroid/database/sqlite/SQLiteException;
        //  1035   1038   449    458    Landroid/database/sqlite/SQLiteException;
        //  1038   1056   449    458    Landroid/database/sqlite/SQLiteException;
        //  1056   1089   1108   1120   Any
        //  1089   1096   449    458    Landroid/database/sqlite/SQLiteException;
        //  1099   1106   449    458    Landroid/database/sqlite/SQLiteException;
        //  1110   1120   449    458    Landroid/database/sqlite/SQLiteException;
        //  1120   1135   449    458    Landroid/database/sqlite/SQLiteException;
        //  1149   1168   449    458    Landroid/database/sqlite/SQLiteException;
        //  1173   1182   1772   1784   Any
        //  1190   1235   1772   1784   Any
        //  1239   1246   449    458    Landroid/database/sqlite/SQLiteException;
        //  1259   1267   449    458    Landroid/database/sqlite/SQLiteException;
        //  1272   1367   449    458    Landroid/database/sqlite/SQLiteException;
        //  1367   1385   449    458    Landroid/database/sqlite/SQLiteException;
        //  1390   1397   449    458    Landroid/database/sqlite/SQLiteException;
        //  1402   1409   449    458    Landroid/database/sqlite/SQLiteException;
        //  1412   1500   449    458    Landroid/database/sqlite/SQLiteException;
        //  1500   1514   449    458    Landroid/database/sqlite/SQLiteException;
        //  1519   1547   449    458    Landroid/database/sqlite/SQLiteException;
        //  1547   1590   1784   1792   Any
        //  1590   1593   1784   1792   Any
        //  1593   1611   449    458    Landroid/database/sqlite/SQLiteException;
        //  1627   1643   449    458    Landroid/database/sqlite/SQLiteException;
        //  1643   1671   449    458    Landroid/database/sqlite/SQLiteException;
        //  1671   1697   449    458    Landroid/database/sqlite/SQLiteException;
        //  1702   1732   1886   1898   Any
        //  1732   1739   449    458    Landroid/database/sqlite/SQLiteException;
        //  1774   1784   449    458    Landroid/database/sqlite/SQLiteException;
        //  1786   1792   449    458    Landroid/database/sqlite/SQLiteException;
        //  1792   1823   449    458    Landroid/database/sqlite/SQLiteException;
        //  1826   1849   449    458    Landroid/database/sqlite/SQLiteException;
        //  1860   1883   449    458    Landroid/database/sqlite/SQLiteException;
        //  1888   1898   449    458    Landroid/database/sqlite/SQLiteException;
        //  1906   1951   449    458    Landroid/database/sqlite/SQLiteException;
        //  1951   1971   449    458    Landroid/database/sqlite/SQLiteException;
        //  1971   1989   449    458    Landroid/database/sqlite/SQLiteException;
        //  1994   2006   449    458    Landroid/database/sqlite/SQLiteException;
        //  2017   2061   449    458    Landroid/database/sqlite/SQLiteException;
        //  2061   2071   449    458    Landroid/database/sqlite/SQLiteException;
        //  2080   2127   449    458    Landroid/database/sqlite/SQLiteException;
        //  2127   2137   449    458    Landroid/database/sqlite/SQLiteException;
        //  2140   2205   449    458    Landroid/database/sqlite/SQLiteException;
        //  2205   2227   449    458    Landroid/database/sqlite/SQLiteException;
        //  2227   2235   449    458    Landroid/database/sqlite/SQLiteException;
        //  2242   2280   449    458    Landroid/database/sqlite/SQLiteException;
        //  2283   2331   449    458    Landroid/database/sqlite/SQLiteException;
        //  2336   2392   449    458    Landroid/database/sqlite/SQLiteException;
        //  2399   2423   2968   2976   Any
        //  2432   2441   2844   2849   Any
        //  2450   2457   449    458    Landroid/database/sqlite/SQLiteException;
        //  2465   2472   449    458    Landroid/database/sqlite/SQLiteException;
        //  2472   2475   449    458    Landroid/database/sqlite/SQLiteException;
        //  2475   2495   449    458    Landroid/database/sqlite/SQLiteException;
        //  2495   2524   449    458    Landroid/database/sqlite/SQLiteException;
        //  2527   2546   449    458    Landroid/database/sqlite/SQLiteException;
        //  2552   2614   449    458    Landroid/database/sqlite/SQLiteException;
        //  2617   2642   449    458    Landroid/database/sqlite/SQLiteException;
        //  2642   2651   2667   2679   Any
        //  2656   2667   2667   2679   Any
        //  2669   2679   449    458    Landroid/database/sqlite/SQLiteException;
        //  2679   2685   2667   2679   Any
        //  2688   2698   2667   2679   Any
        //  2704   2717   2667   2679   Any
        //  2724   2731   449    458    Landroid/database/sqlite/SQLiteException;
        //  2734   2738   449    458    Landroid/database/sqlite/SQLiteException;
        //  2746   2790   449    458    Landroid/database/sqlite/SQLiteException;
        //  2790   2803   449    458    Landroid/database/sqlite/SQLiteException;
        //  2806   2820   449    458    Landroid/database/sqlite/SQLiteException;
        //  2823   2837   449    458    Landroid/database/sqlite/SQLiteException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 1238, Size: 1238
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
}
