package com.google.android.gm.provider;

import com.google.android.gsf.*;
import android.database.*;
import android.net.*;
import android.util.*;
import com.google.android.gm.*;
import org.json.*;
import com.android.mail.utils.*;
import java.io.*;
import java.util.concurrent.*;
import com.android.emailcommon.mail.*;
import android.text.*;
import com.google.common.collect.*;
import android.accounts.*;
import android.os.*;
import android.content.*;
import java.util.*;
import com.google.android.gm.provider.uiprovider.*;
import com.android.mail.a.*;
import com.android.mail.providers.*;

public class GmailProvider extends ContentProvider implements SharedPreferences$OnSharedPreferenceChangeListener, aM
{
    private static final UriMatcher ajR;
    private static final Map<String, Map<String, String>> bdG;
    private static final Map<String, a> bfC;
    private static final Map<String, Integer> bfD;
    private static Set<String> bfE;
    private static final Integer bfg;
    private static final String[] bfh;
    private static final Uri bfi;
    private static final Uri bfj;
    private static final Uri bfk;
    private static final Uri bfl;
    private static final String[] bfm;
    private static final ImmutableSet<String> bfn;
    private static final int bfo;
    private static final ImmutableSet<String> bfp;
    private static Map<String, CharSequence> bfu;
    private static int bfw;
    private static GmailProvider bfx;
    private static String bfy;
    private static String bfz;
    private int Sp;
    private final List<L> bfA;
    private Account[] bfB;
    private Gmail bfq;
    private boolean bfr;
    private volatile boolean bfs;
    private final Set<String> bft;
    private final Map<String, J> bfv;
    private ContentResolver mContentResolver;
    
    static {
        bfg = 7864319;
        bfh = new String[] { "^^out" };
        bfi = Uri.parse("content://com.android.gmail.ui/accounts");
        bfj = Uri.parse("setting://gmail/");
        bfk = Uri.parse("auth://gmail/");
        bfl = Uri.parse("gview://preview");
        bfm = new String[] { "SELECTION_ARGUMENT_DO_NOT_BECOME_ACTIVE_NETWORK_CURSOR" };
        bfn = ImmutableSet.aG("null");
        bfo = "search".hashCode();
        ajR = new UriMatcher(-1);
        bfp = ImmutableSet.b("^u", "^t", "^o");
        GmailProvider.ajR.addURI("com.android.gmail.ui", "accounts", 1);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/account", 2);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/labels", 3);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/label/*", 18);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/conversations/*", 4);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/conversationsForLabel/*", 5);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/conversationMessages/#", 6);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/messageAttachments/#/#", 22);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/messageAttachment/#/#/*", 23);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/messages", 7);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/sendNewMessage", 8);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/saveNewMessage", 9);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/expungeMessage", 24);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/message/#", 10);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/message/save", 11);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/message/send", 12);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/undo", 15);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/refresh", 17);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/refresh/*", 16);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/conversation/#", 13);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/conversationInlineResource/#/*", 14);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/search", 19);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/searchConversations", 20);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/recentFolders", 21);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/defaultRecentFolders", 25);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/cookie", 26);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/settings", 27);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/messageserverid/#", 28);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/ads", 29);
        GmailProvider.ajR.addURI("com.android.gmail.ui", "*/ad/*", 30);
        bdG = Maps.aan();
        bfC = Maps.aan();
        bfD = new y<String, Integer>().p("^t", 128).p("^i", 2).p("^iim", 2).p("^r", 4).p("^^out", 8).p("^f", 16).p("^k", 32).p("^s", 64).p("^all", 512).p("^im", 256).p("^sq_ig_i_personal", 1026).p("^sq_ig_i_social", 1026).p("^sq_ig_i_promo", 1026).p("^sq_ig_i_notification", 1026).p("^sq_ig_i_group", 1026).Zo();
        GmailProvider.bfE = ImmutableSet.a("application/pdf", "application/vnd.ms-powerpoint", "image/tiff", "application/msword", "application/vnd.openxmlformats-officedocument.wordprocessingml.document", "application/vnd.openxmlformats-officedocument.presentationml.presentation", new String[0]);
    }
    
    public GmailProvider() {
        this.bfr = false;
        this.bfs = false;
        this.bft = new HashSet<String>();
        this.bfv = (Map<String, J>)Maps.aan();
        this.Sp = -1;
        this.bfA = new ArrayList<L>();
    }
    
    public static String EH() {
        return GmailProvider.bfz;
    }
    
    private void EI() {
        if (this.bft.size() == 0) {
            this.bfs = true;
            ca(this.getContext());
        }
    }
    
    private static String N(final String s, final String s2) {
        final Map<String, String> dt = dT(s);
        String string = dt.get(s2);
        if (string == null) {
            string = "content://com.android.gmail.ui/" + s + "/" + s2;
            dt.put(s2, string);
        }
        return string;
    }
    
    public static Uri O(final String s, final String s2) {
        return Uri.parse(N(s, "label") + "/" + Uri.encode(s2));
    }
    
    private static Uri P(final String s, final String s2) {
        return Uri.parse(N(s, "account") + "/label/" + s2);
    }
    
    public static Uri Q(final String s, final String s2) {
        return Uri.parse(N(s, "conversationsForLabel") + "/" + Uri.encode(s2));
    }
    
    public static Uri R(final String s, final String s2) {
        return Uri.parse(N(s, "ad") + "/" + s2);
    }
    
    public static void R(final Context context, final String s) {
        E.d(ad.TAG, "notifyAccountChanged", new Object[0]);
        context.getContentResolver().notifyChange(en(s), (ContentObserver)null, false);
        ca(context);
    }
    
    static void S(final Context context, final String s) {
        final GmailProvider bfx = GmailProvider.bfx;
        if (bfx == null) {
            return;
        }
        final Handler handler = new Handler(Looper.getMainLooper());
        synchronized (bfx.bfv) {
            J j = bfx.bfv.get(s);
            if (j == null) {
                j = new J(context, handler.getLooper(), s);
                bfx.bfv.put(s, j);
            }
            // monitorexit(bfx.bfv)
            j.AP();
        }
    }
    
    private static CharSequence T(final Context context, final String s) {
        if (!Gmail.dZ(s)) {
            return null;
        }
        synchronized (GmailProvider.class) {
            if (GmailProvider.bfu == null) {
                GmailProvider.bfu = T.cc(context);
            }
            return GmailProvider.bfu.get(s);
        }
    }
    
    private int a(final MailEngine mailEngine, final String s, final ContentValues contentValues) {
        final Set keySet = contentValues.keySet();
        final ContentValues contentValues2 = new ContentValues(contentValues.size());
        final long currentTimeMillis = System.currentTimeMillis();
        final Iterator<String> iterator = keySet.iterator();
        while (iterator.hasNext()) {
            contentValues2.put(Uri.parse((String)iterator.next()).getLastPathSegment(), currentTimeMillis);
        }
        final Set keySet2 = contentValues2.keySet();
        if (E.isLoggable("Gmail", 2)) {
            E.b("Gmail", "Updating last touched for labels: %s", ad.l(keySet2));
        }
        final int e = mailEngine.e(contentValues2);
        this.mContentResolver.notifyChange(er(s), (ContentObserver)null, false);
        return e;
    }
    
    private int a(final String[] array, final String s, final U u, final L l) {
        if (u.CW() == 0) {
            return 0;
        }
        final MailEngine eu = this.eu(s);
        final ArrayList<ContentValues> list = new ArrayList<ContentValues>();
        final ArrayList<ContentValues> list2 = new ArrayList<ContentValues>();
        final ArrayList<ConversationInfo> list3 = new ArrayList<ConversationInfo>();
        for (int length = array.length, i = 0; i < length; ++i) {
            final ConversationInfo a = eu.a(Gmail.aCx, array[i], s);
            if (a != null) {
                list3.add(a);
            }
        }
    Label_1011_Outer:
        for (final ConversationInfo conversationInfo : list3) {
            final long cd = conversationInfo.CD();
            final long ce = conversationInfo.CE();
            final long cf = conversationInfo.CF();
            final long zc = conversationInfo.zC();
            final Map<String, T> x = eu.X(this.getContext(), String.valueOf(zc));
            final List<V> cz = u.CZ();
            boolean b;
            if (cz.size() == 2 && cz.get(0).aKh != cz.get(1).aKh) {
                b = true;
            }
            else {
                b = false;
            }
            V v;
            if (b) {
                if (cz.get(0).aKh) {
                    v = cz.get(0);
                }
                else {
                    v = cz.get(1);
                }
            }
            else {
                v = null;
            }
            V v2;
            if (b) {
                if (cz.get(0).aKh) {
                    v2 = cz.get(1);
                }
                else {
                    v2 = cz.get(0);
                }
            }
            else {
                v2 = null;
            }
            if (l != null && b && v != null) {
                final String canonicalName = v.aYm.getCanonicalName();
                if (x.containsKey(canonicalName)) {
                    E.d("Gmail", "Move operation to a label we already have. Removing it from the undo operation.", new Object[0]);
                    l.remove(canonicalName);
                }
            }
            Label_1744: {
                if (eu.Fw()) {
                    if (b && v != null && v2 != null && Gmail.bdE.contains(v2.aYm.getCanonicalName()) && !Gmail.bdE.contains(v.aYm.getCanonicalName())) {
                        E.d("Gmail", "Moving from section to non-inbox label. Remove ^i/^iim.", new Object[0]);
                        final String[] array2 = { "^i", "^iim" };
                        for (int length2 = array2.length, j = 0; j < length2; ++j) {
                            final T v3 = Y.v(this.getContext(), s, array2[j]);
                            u.a(v3, false);
                            if (l != null) {
                                l.a(v3, true);
                            }
                        }
                    }
                    if (u.dA("^i")) {
                        for (final String s2 : x.keySet()) {
                            if (Gmail.bdE.contains(s2) && !u.dA(s2)) {
                                final T t = x.get(s2);
                                u.a(t, false);
                                if (l == null) {
                                    continue Label_1011_Outer;
                                }
                                l.a(t, true);
                            }
                        }
                    }
                    if (!u.dA("^i")) {
                        final HashSet<String> set = new HashSet<String>();
                        for (final String s3 : Gmail.bdE) {
                            if (x.containsKey(s3)) {
                                set.add(s3);
                            }
                        }
                        if (!set.isEmpty()) {
                            for (final V v4 : u.CZ()) {
                                final String canonicalName2 = v4.aYm.getCanonicalName();
                                if (set.contains(canonicalName2) && !v4.aKh) {
                                    set.remove(canonicalName2);
                                }
                                else {
                                    if (!Gmail.bdE.contains(canonicalName2) || !v4.aKh) {
                                        continue Label_1011_Outer;
                                    }
                                    set.add(canonicalName2);
                                }
                            }
                            if (set.isEmpty()) {
                                E.d("Gmail", "Removing all sections, so also remove ^i/^iim", new Object[0]);
                                final String[] array3 = { "^i", "^iim" };
                                for (int length3 = array3.length, k = 0; k < length3; ++k) {
                                    final T v5 = Y.v(this.getContext(), s, array3[k]);
                                    u.a(v5, false);
                                    if (l != null) {
                                        l.a(v5, true);
                                    }
                                }
                            }
                        }
                    }
                    while (true) {
                        for (final V v6 : u.CZ()) {
                            final String canonicalName3 = v6.aYm.getCanonicalName();
                            if (v6.aKh && Gmail.bdE.contains(canonicalName3)) {
                                if (canonicalName3 != null) {
                                    E.d("Gmail", "Moving to an inbox section, removing other sections", new Object[0]);
                                    for (final String s4 : x.keySet()) {
                                        if (Gmail.bdE.contains(s4) && !canonicalName3.equals(s4)) {
                                            final T v7 = Y.v(this.getContext(), s, s4);
                                            u.a(v7, false);
                                            if (l == null) {
                                                continue Label_1011_Outer;
                                            }
                                            l.a(v7, true);
                                        }
                                    }
                                }
                                if (eu.Fv() && x.containsKey("^t") && !u.dA("^t")) {
                                    final HashSet<String> set2 = new HashSet<String>();
                                    for (final String s5 : Gmail.bdE) {
                                        if (x.containsKey(s5)) {
                                            set2.add(s5);
                                        }
                                    }
                                    final Iterator<V> iterator8 = u.CZ().iterator();
                                    int n = 0;
                                    while (iterator8.hasNext()) {
                                        final V v8 = iterator8.next();
                                        final String canonicalName4 = v8.aYm.getCanonicalName();
                                        while (true) {
                                            Label_2671: {
                                                if (!Gmail.bdE.contains(canonicalName4)) {
                                                    break Label_2671;
                                                }
                                                if (v8.aKh) {
                                                    set2.add(canonicalName4);
                                                    continue Label_1011_Outer;
                                                }
                                                set2.remove(canonicalName4);
                                                if (!"^sq_ig_i_personal".equals(canonicalName4)) {
                                                    break Label_2671;
                                                }
                                                final int n2 = 1;
                                                n = n2;
                                                continue Label_1011_Outer;
                                            }
                                            final int n2 = n;
                                            continue;
                                        }
                                    }
                                    if (n != 0 && !set2.isEmpty()) {
                                        E.d("Gmail", "Trying to remove Primary from starred message that still has other sections. Keeping Primary.", new Object[0]);
                                        u.remove("^sq_ig_i_personal");
                                        if (l != null) {
                                            l.remove("^sq_ig_i_personal");
                                        }
                                        final Iterator<ContentValues> iterator9 = list2.iterator();
                                        while (iterator9.hasNext()) {
                                            final ContentValues contentValues = iterator9.next();
                                            if ("^sq_ig_i_personal".equals(contentValues.get("canonicalName")) && Boolean.FALSE.equals(contentValues.getAsBoolean("add_label_action"))) {
                                                iterator9.remove();
                                            }
                                        }
                                        final Iterator<ContentValues> iterator10 = list.iterator();
                                        while (iterator10.hasNext()) {
                                            final ContentValues contentValues2 = iterator10.next();
                                            if ("^sq_ig_i_personal".equals(contentValues2.get("canonicalName")) && Boolean.FALSE.equals(contentValues2.getAsBoolean("add_label_action"))) {
                                                iterator10.remove();
                                            }
                                        }
                                    }
                                }
                                if (!eu.Fv() || !u.dz("^t")) {
                                    break Label_1744;
                                }
                                final HashSet<String> set3 = new HashSet<String>();
                                for (final String s6 : Gmail.bdE) {
                                    if (x.containsKey(s6)) {
                                        set3.add(s6);
                                    }
                                }
                                for (final V v9 : u.CZ()) {
                                    final String canonicalName5 = v9.aYm.getCanonicalName();
                                    if (Gmail.bdE.contains(canonicalName5)) {
                                        if (v9.aKh) {
                                            set3.add(canonicalName5);
                                        }
                                        else {
                                            set3.remove(canonicalName5);
                                        }
                                    }
                                }
                                if (!set3.isEmpty() && !set3.contains("^sq_ig_i_personal")) {
                                    E.d("Gmail", "Adding star, so also adding primary", new Object[0]);
                                    eu.a(zc, cf, "^sq_ig_i_personal", true, Operations$RecordHistory.bmN);
                                }
                                break Label_1744;
                            }
                        }
                        final String canonicalName3 = null;
                        continue;
                    }
                }
            }
            final List<V> cz2 = u.CZ();
            for (int size = cz2.size(), n3 = 0; n3 < size; ++n3) {
                final T aYm = cz2.get(n3).aYm;
                final boolean aKh = cz2.get(n3).aKh;
                final HashMap<String, Object> aan = Maps.aan();
                final String canonicalName6 = aYm.getCanonicalName();
                aan.put(canonicalName6, aKh);
                if ("^k".equals(canonicalName6) || "^g".equals(canonicalName6)) {
                    aan.put("^i", !aKh);
                }
                if ("^p".equals(canonicalName6) && aKh) {
                    aan.put("^i", Boolean.FALSE);
                    aan.put("^s", Boolean.TRUE);
                }
                if ("^i".equals(canonicalName6) && aKh) {
                    aan.put("^s", Boolean.FALSE);
                    aan.put("^k", Boolean.FALSE);
                }
                int n4;
                if (("^^important".equals(canonicalName6) && aKh) || ("^^unimportant".equals(canonicalName6) && !aKh)) {
                    n4 = 1;
                }
                else {
                    n4 = 0;
                }
                final boolean b2 = ("^^unimportant".equals(canonicalName6) && aKh) || ("^^important".equals(canonicalName6) && !aKh);
                if (n4 != 0) {
                    aan.put("^im", Boolean.TRUE);
                    aan.put("^io_im", Boolean.TRUE);
                    aan.put("^imi", Boolean.TRUE);
                    aan.put("^imn", Boolean.FALSE);
                    aan.put("^^unimportant", Boolean.FALSE);
                    aan.put("^io_ns", Boolean.FALSE);
                    if (x.containsKey("^i")) {
                        aan.put("^iim", Boolean.TRUE);
                    }
                }
                else if (b2) {
                    aan.put("^imn", Boolean.TRUE);
                    aan.put("^im", Boolean.FALSE);
                    aan.put("^io_im", Boolean.FALSE);
                    aan.put("^iim", Boolean.FALSE);
                    aan.put("^imi", Boolean.FALSE);
                    aan.put("^^important", Boolean.FALSE);
                    aan.put("^io_ns", Boolean.FALSE);
                }
                if (aan.containsKey("^i") && conversationInfo.uE()) {
                    aan.put("^iim", (boolean)aan.get("^i"));
                }
                final int size2 = aan.size();
                for (final String s7 : aan.keySet().toArray(new String[size2])) {
                    final boolean booleanValue = aan.get(s7);
                    if (cd != 0L) {
                        final ContentValues contentValues3 = new ContentValues(5);
                        contentValues3.put("canonicalName", s7);
                        contentValues3.put("_id", cd);
                        contentValues3.put("messageId", ce);
                        contentValues3.put("conversation", zc);
                        contentValues3.put("add_label_action", booleanValue);
                        list2.add(contentValues3);
                    }
                    else {
                        final ContentValues contentValues4 = new ContentValues(4);
                        contentValues4.put("_id", zc);
                        contentValues4.put("canonicalName", s7);
                        contentValues4.put("maxMessageId", conversationInfo.CF());
                        contentValues4.put("add_label_action", booleanValue);
                        list.add(contentValues4);
                    }
                }
            }
        }
        final boolean da = u.Da();
        if (list.size() > 0) {
            this.bfq.a(s, list.toArray(new ContentValues[list.size()]), !da);
        }
        if (list2.size() > 0) {
            this.bfq.b(s, list2.toArray(new ContentValues[list2.size()]), !da);
        }
        return list3.size();
    }
    
    private long a(final MailEngine mailEngine, final long n, final boolean b, final ContentValues contentValues, final Bundle bundle) {
        final ContentValues contentValues2 = new ContentValues(contentValues);
        final long longValue = contentValues2.getAsLong("refMessageId");
        contentValues2.remove("refMessageId");
        final long a = mailEngine.a(n, b, longValue, contentValues2, bundle);
        final bm ax = mailEngine.ax(a);
        if (ax != null) {
            this.mContentResolver.notifyChange(k(mailEngine.FP(), ax.bku), (ContentObserver)null, false);
        }
        return a;
    }
    
    public static Cursor a(final MailEngine mailEngine, final String s, final String[] array, final Cursor cursor, final String s2) {
        if (cursor == null) {
            return null;
        }
        return (Cursor)new j(cursor, mailEngine, s, array, s2);
    }
    
    private Cursor a(final String s, final long n, final long n2, final long n3, final String[] array, final List<GmailAttachment> list) {
        final K k = new K(this, s, n, array, list.size());
        m(s, n).r((Cursor)k);
        for (final GmailAttachment gmailAttachment : list) {
            E.c("Gmail", "adding attachment to cursor %s", gmailAttachment);
            final MatrixCursor$RowBuilder row = k.newRow();
            final String partId = gmailAttachment.partId;
            final String contentType = gmailAttachment.getContentType();
            for (final String s2 : array) {
                if (TextUtils.equals((CharSequence)s2, (CharSequence)"uri")) {
                    row.add((Object)a(s, n, n2, n3, partId, contentType));
                }
                else if (TextUtils.equals((CharSequence)s2, (CharSequence)"_display_name")) {
                    row.add((Object)gmailAttachment.getName());
                }
                else if (TextUtils.equals((CharSequence)s2, (CharSequence)"_size")) {
                    row.add((Object)gmailAttachment.size);
                }
                else if (TextUtils.equals((CharSequence)s2, (CharSequence)"contentType")) {
                    row.add((Object)contentType);
                }
                else if (TextUtils.equals((CharSequence)s2, (CharSequence)"state")) {
                    if (gmailAttachment.bom == 1) {
                        row.add((Object)3);
                    }
                    else {
                        row.add((Object)gmailAttachment.state);
                    }
                }
                else if (TextUtils.equals((CharSequence)s2, (CharSequence)"destination")) {
                    row.add((Object)gmailAttachment.ayN);
                }
                else if (TextUtils.equals((CharSequence)s2, (CharSequence)"downloadedSize")) {
                    row.add((Object)gmailAttachment.ayO);
                }
                else if (TextUtils.equals((CharSequence)s2, (CharSequence)"contentUri")) {
                    Uri uri;
                    if (gmailAttachment.uv()) {
                        if (gmailAttachment.bor != null) {
                            uri = Uri.parse(gmailAttachment.bor);
                        }
                        else {
                            uri = Uri.EMPTY;
                        }
                    }
                    else {
                        uri = Gmail.a(s, n3, partId, 1, false);
                    }
                    row.add((Object)uri);
                }
                else if (TextUtils.equals((CharSequence)s2, (CharSequence)"thumbnailUri")) {
                    row.add((Object)Gmail.a(s, n3, gmailAttachment, 0));
                }
                else if (TextUtils.equals((CharSequence)s2, (CharSequence)"previewIntentUri")) {
                    final String string = c.getString(this.getContext().getContentResolver(), "gmail_gview_supported_types");
                    if (string != null) {
                        GmailProvider.bfE = ImmutableSet.j(TextUtils.split(string, ","));
                    }
                    if (GmailProvider.bfE.contains(contentType)) {
                        row.add((Object)GmailProvider.bfl.buildUpon().appendQueryParameter("account", s).appendQueryParameter("serverMessageId", Long.toHexString(n2)).appendQueryParameter("attId", partId).appendQueryParameter("mimeType", contentType).build().toString());
                    }
                    else {
                        row.add((Object)null);
                    }
                }
                else if (TextUtils.equals((CharSequence)s2, (CharSequence)"providerData")) {
                    gmailAttachment.HY();
                    row.add((Object)gmailAttachment.ayS);
                }
                else if (TextUtils.equals((CharSequence)s2, (CharSequence)"supportsDownloadAgain")) {
                    row.add((Object)1);
                }
                else if (TextUtils.equals((CharSequence)s2, (CharSequence)"type")) {
                    row.add((Object)gmailAttachment.type);
                }
            }
        }
        if (k.getCount() > 0) {
            m(s, n).HV();
        }
        return (Cursor)k;
    }
    
    private Cursor a(final String s, final Uri uri, final long n, final String s2, final String[] array, final Integer n2, final boolean b, final boolean b2) {
        return this.a(s, uri, null, null, n, s2, array, n2, b, b2);
    }
    
    private Cursor a(final String s, final Uri uri, final String s2, final String s3, final long n, final String s4, final String[] array, final Integer n2, final boolean b, final boolean b2) {
        final MailEngine eu = this.eu(s);
        final String[] q = H.q(array);
        String[] bfm;
        if (b) {
            bfm = null;
        }
        else {
            bfm = GmailProvider.bfm;
        }
        String ei;
        if (b2 && !TextUtils.isEmpty((CharSequence)s4)) {
            ei = Gmail.ei(s4);
        }
        else {
            ei = s4;
        }
        final Cursor a = eu.a(ay.G(s2, ei), bfm, n2, false, s3);
        g g;
        if (a == null) {
            g = null;
        }
        else {
            g = new g(a, s, en(s).toString(), q);
            if (uri != null && b) {
                ex(s).a(a(n, s4, s2), g);
                return (Cursor)g;
            }
        }
        return (Cursor)g;
    }
    
    private Cursor a(final String s, final String[] array, final String s2) {
        return this.eu(s).d(array, s2);
    }
    
    public static Uri a(final String s, final long n, final long n2, final long n3) {
        return Uri.parse(N(s, "messageAttachments") + "/" + n + "/" + n3).buildUpon().appendQueryParameter("serverMessageId", Long.toString(n2)).build();
    }
    
    public static Uri a(final String s, final long n, final long n2, final long n3, final String s2, final String s3) {
        final StringBuilder append = new StringBuilder().append(N(s, "messageAttachment")).append("/").append(n).append("/").append(n3).append("/");
        String s4;
        if (!TextUtils.isEmpty((CharSequence)s2)) {
            s4 = s2;
        }
        else {
            s4 = "empty";
        }
        final Uri$Builder buildUpon = Uri.parse(append.append(s4).toString()).buildUpon();
        buildUpon.appendQueryParameter("serverMessageId", Long.toString(n2));
        if (!TextUtils.isEmpty((CharSequence)s3)) {
            buildUpon.appendQueryParameter("mimeType", s3);
        }
        final Uri build = buildUpon.build();
        if (TextUtils.isEmpty((CharSequence)s2)) {
            E.f("Gmail", "Constructed message attachment uri %s with empty partId", build);
        }
        return build;
    }
    
    private static final Pair<Long, CharSequence> a(final Context context, final D d, final String s, final String s2, final boolean b) {
        CharSequence charSequence = null;
        if (b) {
            charSequence = T(context, s2);
        }
        if (d != null) {
            try {
                final long ej = d.ej(s2);
                if (charSequence == null) {
                    charSequence = d.ag(ej);
                }
                return (Pair<Long, CharSequence>)Pair.create((Object)ej, (Object)charSequence);
            }
            catch (IllegalArgumentException ex) {}
        }
        final T v = Y.v(context, s, s2);
        if (v != null) {
            final long id = v.getId();
            if (charSequence == null) {
                charSequence = v.getName();
            }
            return (Pair<Long, CharSequence>)Pair.create((Object)id, (Object)charSequence);
        }
        E.f("Gmail", "Couldn't find label: %s", ad.eD(s2));
        return (Pair<Long, CharSequence>)Pair.create((Object)(-1L), (Object)charSequence);
    }
    
    private L a(final String s, final long n, List<Folder> list, final List<String> list2, final boolean b) {
        final L l = new L(this, s, n, b, (byte)0);
        final HashSet<String> set = new HashSet<String>();
        final Iterator<String> iterator = list2.iterator();
        while (iterator.hasNext()) {
            set.add(iterator.next());
        }
        final HashSet<String> set2 = new HashSet<String>();
        int n2;
        if (list2.size() == 0) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        if (list == null) {
            list = new ArrayList<Folder>();
        }
        final Iterator<Object> iterator2 = list.iterator();
        while (iterator2.hasNext()) {
            final String s2 = iterator2.next().azZ.aPj.getPathSegments().get(2);
            set2.add(s2);
            boolean b2;
            if (n2 != 0 || !set.contains(s2)) {
                b2 = true;
            }
            else {
                b2 = false;
            }
            if (b2 && et(s2)) {
                final T v = Y.v(this.getContext(), s, s2);
                if (v != null) {
                    l.a(v, true);
                }
                else {
                    E.f("Gmail", "Couldn't create label for canonical name: %s", s2);
                }
            }
            else {
                if (et(s2)) {
                    continue;
                }
                E.e("Gmail", "Couldn't create label operation for canonical name: %s", s2);
            }
        }
        int n3;
        if (list.size() == 0) {
            n3 = 1;
        }
        else {
            n3 = 0;
        }
        for (final String s3 : list2) {
            boolean b3;
            if (n3 != 0 || !set2.contains(s3)) {
                b3 = true;
            }
            else {
                b3 = false;
            }
            if (b3 && et(s3)) {
                final T v2 = Y.v(this.getContext(), s, s3);
                if (v2 != null) {
                    l.a(v2, false);
                }
                else {
                    E.f("Gmail", "Couldn't create label for canonical name: %s", s3);
                }
            }
            else {
                if (et(s3)) {
                    continue;
                }
                E.e("Gmail", "Couldn't create label operation for canonical name: %s", s3);
            }
        }
        return l;
    }
    
    public static GmailAttachment a(final String s, final long n, final long n2, final String s2) {
        final b m = m(s, n);
        if (m != null) {
            final f av = m.aV(n2);
            if (av != null) {
                return av.fq(s2);
            }
        }
        return null;
    }
    
    private static String a(final long n, final String s, final String s2) {
        if (n != -1L) {
            return Long.toString(n);
        }
        String s3;
        if (!TextUtils.isEmpty((CharSequence)s)) {
            s3 = "label:" + s;
        }
        else {
            if (TextUtils.isEmpty((CharSequence)s2)) {
                throw new IllegalStateException("no canonicalName or query specified");
            }
            s3 = "query:" + s2;
        }
        return Uri.encode(s3);
    }
    
    public static List<GmailAttachment> a(final String s, final long n, final long n2) {
        final b m = m(s, n);
        if (m != null) {
            final f av = m.aV(n2);
            if (av != null) {
                return av.Ic();
            }
        }
        return null;
    }
    
    public static List<GmailAttachment> a(final String s, final long n, final long n2, final List<GmailAttachment> list) {
        final b m = m(s, n);
        if (m != null) {
            final f av = m.aV(n2);
            if (av != null) {
                av.L(list);
                return av.Ic();
            }
        }
        return null;
    }
    
    public static List<Folder> a(final String s, final Map<String, T> map, final android.support.v4.f.f<Folder> f, final Map<String, String[]> map2) {
        final ArrayList<Folder> list = new ArrayList<Folder>(map.size());
        for (final T t : map.values()) {
            final long id = t.getId();
            final String canonicalName = t.getCanonicalName();
            if (!Gmail.eb(canonicalName)) {
                int n;
                if (!TextUtils.isEmpty((CharSequence)canonicalName) && canonicalName.charAt(0) != '^') {
                    n = 1;
                }
                else {
                    n = 0;
                }
                if (n == 0) {
                    continue;
                }
            }
            Folder folder = null;
            if (f != null) {
                folder = f.get(id);
            }
            Folder vd;
            if (folder == null) {
                String string;
                String string2;
                if (map2 != null && map2.containsKey(canonicalName)) {
                    final String[] array = map2.get(canonicalName);
                    string = array[0];
                    string2 = array[1];
                }
                else {
                    string = new StringBuilder().append(t.getBackgroundColor()).toString();
                    string2 = new StringBuilder().append(t.EV()).toString();
                    if (map2 != null) {
                        map2.put(canonicalName, new String[] { string, string2 });
                    }
                }
                final int n2 = (int)id;
                vd = new m().cC(n2).bP(t.getCanonicalName()).s(O(s, t.getCanonicalName())).bQ(t.getName()).t(i(s, n2)).ve().vf().cD(ey(t.getCanonicalName())).bR(string).bS(string2).vd();
                if (f != null) {
                    f.put(id, vd);
                }
            }
            else {
                vd = folder;
            }
            list.add(vd);
        }
        return list;
    }
    
    private static Map<String, Object> a(final Context context, final Account account, final String s, final MailEngine mailEngine, final com.android.mail.i.g g, final com.google.android.gm.persistence.b b) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("_id", (String)account.hashCode());
        hashMap.put("name", s);
        hashMap.put("senderName", null);
        hashMap.put("accountManagerName", s);
        final String dr = i.aT(context).dr(s);
        hashMap.put("accountId", dr);
        hashMap.put("type", account.type);
        hashMap.put("providerVersion", 0);
        hashMap.put("accountUri", en(s));
        hashMap.put("capabilities", GmailProvider.bfg);
        final Uri ep = ep(s);
        hashMap.put("folderListUri", (String)ep);
        hashMap.put("fullFolderListUri", (String)ep);
        hashMap.put("allFolderListUri", (String)ep);
        hashMap.put("searchUri", eq(s));
        final List<ReplyFromAccount> h = com.google.android.gm.c.b.H(en(s));
        String string;
        if (h != null) {
            final JSONArray jsonArray = new JSONArray();
            final Iterator<ReplyFromAccount> iterator = h.iterator();
            while (iterator.hasNext()) {
                jsonArray.put((Object)iterator.next().vG());
            }
            string = jsonArray.toString();
        }
        else {
            string = null;
        }
        hashMap.put("accountFromAddresses", string);
        hashMap.put("expungeMessageUri", N(s, "expungeMessage"));
        hashMap.put("undoUri", N(s, "undo"));
        hashMap.put("accountSettingsIntentUri", GmailProvider.bfj.buildUpon().appendQueryParameter("account", s).build());
        hashMap.put("helpIntentUri", Uri.parse(c.a(context.getContentResolver(), "gmail_context_sensitive_help_url", "http://support.google.com/mail")));
        hashMap.put("sendFeedbackIntentUri", GmailProvider.bfj.buildUpon().appendQueryParameter("account", s).appendQueryParameter("reporting_problem", Boolean.TRUE.toString()).build());
        hashMap.put("reauthenticationUri", GmailProvider.bfk.buildUpon().appendQueryParameter("account", s).build());
        int n;
        if (mailEngine != null) {
            final boolean gi = mailEngine.Gi();
            n = 0;
            if (gi) {
                n = 4;
            }
            if (mailEngine.Gj()) {
                n |= 0x2;
            }
            if (mailEngine.Gk()) {
                n |= 0x1;
            }
            int n2;
            if (!mailEngine.Ee() || !b(mailEngine)) {
                n2 = 1;
            }
            else {
                n2 = 0;
            }
            if (n2 != 0) {
                n |= 0x8;
            }
            if (!mailEngine.Ef()) {
                n |= 0x20;
            }
            if (!ContentResolver.getMasterSyncAutomatically() || !mailEngine.FQ()) {
                E.d(ad.TAG, "master sync=%b, engine sync=%b", ContentResolver.getMasterSyncAutomatically(), mailEngine.FQ());
                n |= 0x10;
            }
            int n3;
            if (mailEngine.Gt()) {
                n3 = 1;
            }
            else {
                n3 = 0;
            }
            hashMap.put("importance_markers_enabled", n3);
            int n4;
            if (mailEngine.Gu()) {
                n4 = 1;
            }
            else {
                n4 = 0;
            }
            hashMap.put("show_chevrons_enabled", n4);
            hashMap.put("welcome_tour_shown_version", mailEngine.FZ().FG());
        }
        else {
            hashMap.put("importance_markers_enabled", 1);
            hashMap.put("show_chevrons_enabled", 0);
            hashMap.put("welcome_tour_shown_version", 0);
            n = 0;
        }
        hashMap.put("syncStatus", n);
        hashMap.put("composeUri", Uri.parse("gmail2from://gmail-ls/account/" + s));
        hashMap.put("mimeType", "application/gmail-ls");
        hashMap.put("recentFolderListUri", er(s));
        hashMap.put("defaultRecentFolderListUri", N(s, "defaultRecentFolders"));
        hashMap.put("manualSyncUri", N(s, "refresh"));
        hashMap.put("viewProxyUri", "content://com.android.gmail.ui/proxy");
        hashMap.put("accountCookieUri", N(s, "cookie"));
        hashMap.put("color", 0);
        hashMap.put("updateSettingsUri", N(s, "settings"));
        hashMap.put("enableMessageTransforms", c.getInt(context.getContentResolver(), "gmail-msg-transforms-enabled", 1));
        hashMap.put("syncAuthority", "gmail-ls");
        hashMap.put("quickResponseUri", Uri.EMPTY);
        hashMap.put("settingsFragmentClass", com.google.android.gm.preference.a.class.getName());
        String b2 = b.B(context, dr);
        if (TextUtils.isEmpty((CharSequence)b2)) {
            b2 = null;
        }
        hashMap.put("signature", b2);
        hashMap.put("auto_advance", g.tP());
        hashMap.put("snap_headers", g.tS());
        int n5;
        if (g.tz()) {
            n5 = 1;
        }
        else {
            n5 = 0;
        }
        hashMap.put("reply_behavior", n5);
        int n6;
        if (g.tI()) {
            n6 = 1;
        }
        else {
            n6 = 2;
        }
        hashMap.put("conversation_list_icon", n6);
        int n7;
        if (g.tM()) {
            n7 = 1;
        }
        else {
            n7 = 0;
        }
        hashMap.put("confirm_delete", n7);
        int n8;
        if (g.tN()) {
            n8 = 1;
        }
        else {
            n8 = 0;
        }
        hashMap.put("confirm_archive", n8);
        int n9;
        if (g.tO()) {
            n9 = 1;
        }
        else {
            n9 = 0;
        }
        hashMap.put("confirm_send", n9);
        hashMap.put("default_inbox", O(s, com.google.android.gm.persistence.b.I(context, dr)));
        final String i = com.google.android.gm.persistence.b.I(context, dr);
        D fn;
        if (mailEngine != null) {
            fn = mailEngine.Fn();
        }
        else {
            fn = null;
        }
        hashMap.put("default_inbox_name", (String)a(context, fn, s, i, Gmail.dZ(i)).second);
        int n10;
        if (com.google.android.gm.c.b.I(en(s))) {
            n10 = 1;
        }
        else {
            n10 = 0;
        }
        hashMap.put("force_reply_from_default", n10);
        hashMap.put("max_attachment_size", c.getInt(context.getContentResolver(), "gmail_max_attachment_size_bytes", 20971520));
        hashMap.put("swipe", g.bb(true));
        hashMap.put("setup_intent_uri", Uri.EMPTY);
        int n11;
        if (g.tR()) {
            if (g.tQ()) {
                n11 = 0;
            }
            else {
                n11 = 1;
            }
        }
        else {
            n11 = -1;
        }
        hashMap.put("conversation_view_mode", n11);
        hashMap.put("veiled_address_pattern", com.google.android.gm.persistence.b.bA(context));
        hashMap.put("move_to_inbox", O(s, "^i"));
        if (mailEngine != null) {
            int n12;
            if (mailEngine.bdv.FC()) {
                n12 = 0;
            }
            else {
                n12 = 1;
            }
            hashMap.put("show_images", n12);
        }
        else {
            hashMap.put("show_images", 1);
        }
        hashMap.put("securityHold", 0);
        hashMap.put("accountSecurityUri", "");
        return (Map<String, Object>)hashMap;
    }
    
    private void a(final int sp, final L l) {
        final List<L> bfA = this.bfA;
        // monitorenter(bfA)
        Label_0087: {
            if (sp == -1) {
                break Label_0087;
            }
            try {
                if (sp > this.Sp) {
                    E.e("Gmail", "About to clean %d undo operations. sequenceNum:%d mLastSequence: %d", this.bfA.size(), sp, this.Sp);
                    this.bfA.clear();
                    this.Sp = sp;
                }
                this.bfA.add(l);
            }
            finally {
            }
            // monitorexit(bfA)
        }
    }
    
    static void a(final Context context, final D d, final String s, final Set<Long> set) {
        final ContentResolver contentResolver = context.getContentResolver();
        for (final Long n : set) {
            if (n != null) {
                final String af = d.af(n);
                if (af == null) {
                    continue;
                }
                contentResolver.notifyChange(P(s, af), (ContentObserver)null, false);
            }
        }
        if (set.size() > 0) {
            contentResolver.notifyChange(ep(s), (ContentObserver)null, false);
            contentResolver.notifyChange(er(s), (ContentObserver)null, false);
        }
    }
    
    public static void a(final Context context, final String s, final long n) {
        context.getContentResolver().notifyChange(k(s, n), (ContentObserver)null, false);
    }
    
    public static void a(final Context context, final String s, final long n, final long n2, final long n3, final Set<String> set) {
        final ContentResolver contentResolver = context.getContentResolver();
        contentResolver.notifyChange(a(s, n, n2, n3), (ContentObserver)null, false);
        final Iterator<String> iterator = set.iterator();
        while (iterator.hasNext()) {
            contentResolver.notifyChange(a(s, n, n2, n3, iterator.next(), null), (ContentObserver)null, false);
        }
    }
    
    private static void a(final Context context, final String s, final MailEngine mailEngine, final String[] array, final MatrixCursor$RowBuilder matrixCursor$RowBuilder) {
        final Map<String, Object> a = a(context, new Account(s, "com.google"), s, mailEngine, com.android.mail.i.g.ao(context), com.google.android.gm.persistence.b.DD());
        for (final String s2 : array) {
            if (!a.containsKey(s2)) {
                throw new IllegalStateException("Unexpected column: " + s2);
            }
            matrixCursor$RowBuilder.add(a.get(s2));
        }
    }
    
    public static void a(final Context context, final String s, final Set<String> set) {
        final ContentResolver contentResolver = context.getContentResolver();
        final Iterator<String> iterator = set.iterator();
        while (iterator.hasNext()) {
            contentResolver.notifyChange(P(s, iterator.next()), (ContentObserver)null, false);
        }
        if (set.size() > 0) {
            contentResolver.notifyChange(ep(s), (ContentObserver)null, false);
            contentResolver.notifyChange(er(s), (ContentObserver)null, false);
        }
    }
    
    static void a(final Context context, final String s, final boolean b, final String s2) {
        final ContentResolver contentResolver = context.getContentResolver();
        if (b) {
            contentResolver.notifyChange(eq(s), (ContentObserver)null, false);
            return;
        }
        contentResolver.notifyChange(P(s, s2), (ContentObserver)null, false);
    }
    
    private final void a(final MailEngine mailEngine, final String s) {
        E.c("Gmail", "GmailProvider.populateRecentLabels()", new Object[0]);
        final String[] array = { "^t", "^f", "^r" };
        final long currentTimeMillis = System.currentTimeMillis();
        final ContentValues contentValues = new ContentValues(array.length);
        for (final String s2 : array) {
            E.c("Gmail", "Marking %s with %d", s2, currentTimeMillis);
            contentValues.put(s2, currentTimeMillis);
        }
        mailEngine.e(contentValues);
        this.mContentResolver.notifyChange(er(s), (ContentObserver)null, false);
    }
    
    static void a(final String s, final long n, final long n2, final String s2, final int ayN, final int bop, final String s3) {
        final GmailAttachment a = a(s, n, n2, s2);
        if (a == null) {
            final List<GmailAttachment> a2 = a(s, n, n2);
            final Object[] array = { n2, s2, null };
            String string;
            if (a2 != null) {
                string = Arrays.toString(a2.toArray(new GmailAttachment[a2.size()]));
            }
            else {
                string = null;
            }
            array[2] = string;
            E.f("Gmail", "couldn't find attachment %d %s in update AttachmentState.  attachments: %s", array);
            return;
        }
        if (bop == 404 && a.state == 3 && !TextUtils.isEmpty((CharSequence)a.bor)) {
            E.f("Gmail", "Attempt to make successful download a failure", new Object[0]);
            return;
        }
        final int ea = GmailAttachment.ea(bop);
        E.c("Gmail", "Updating attachment state %d/%d/%s", ea, ayN, s3);
        a.setState(ea);
        a.ayN = ayN;
        a.boq = -1L;
        a.bop = bop;
        if (a.state == 3 && !TextUtils.isEmpty((CharSequence)s3) && !TextUtils.isEmpty((CharSequence)a.bor)) {
            final File file = new File(com.google.android.gm.provider.g.dQ(a.bor));
            if (!file.equals(new File(com.google.android.gm.provider.g.dQ(s3)))) {
                file.delete();
            }
        }
        a.aw(s3);
    }
    
    public static GmailAttachment b(final String s, final long n, final long n2, final String s2) {
        final b as = ex(s).aS(n);
        if (as != null) {
            final f au = as.aU(n2);
            if (au != null) {
                return au.fq(s2);
            }
        }
        return null;
    }
    
    private static boolean b(final MailEngine mailEngine) {
        final D fn = mailEngine.Fn();
        final String[] bfh = GmailProvider.bfh;
        for (int length = bfh.length, i = 0; i < length; ++i) {
            if (!fn.ek(bfh[i])) {
                return false;
            }
        }
        return true;
    }
    
    private Cursor c(final String s, final String[] array) {
        int i;
        MailEngine eu;
        String[] p2;
        String cm;
        String ae;
        G g = null;
        MatrixCursor$RowBuilder row = null;
        Label_0039_Outer:Label_0090_Outer:
        while (true) {
            i = 0;
            eu = this.eu(s);
            p2 = H.p(array);
            while (true) {
            Label_0150:
                while (true) {
                    while (true) {
                        try {
                            cm = eu.Cm();
                            if (cm != null) {
                                ae = bG.ae(s, cm);
                                g = new G(p2, 1);
                                row = g.newRow();
                                while (i < p2.length) {
                                    if (!TextUtils.equals((CharSequence)p2[i], (CharSequence)"cookie")) {
                                        break Label_0150;
                                    }
                                    row.add((Object)ae);
                                    ++i;
                                }
                                break;
                            }
                        }
                        catch (IOException ex) {
                            E.e("Gmail", ex, "IOException retrieving auth token", new Object[0]);
                            cm = null;
                            continue Label_0039_Outer;
                        }
                        catch (MailEngine$AuthenticationException ex2) {
                            E.e("Gmail", ex2, "AuthenticationException retrieving auth token", new Object[0]);
                            cm = null;
                            continue Label_0039_Outer;
                        }
                        break;
                    }
                    ae = null;
                    continue Label_0090_Outer;
                }
                row.add((Object)null);
                continue;
            }
        }
        return (Cursor)g;
    }
    
    private Cursor c(final String[] array, final List<MailEngine> list) {
        final String[] n = H.n(array);
        final Bundle bundle = new Bundle();
        int n2;
        if (this.bfs) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        bundle.putInt("accounts_loaded", n2);
        final com.android.mail.utils.H h = new com.android.mail.utils.H(n, list.size(), bundle);
        for (final MailEngine mailEngine : list) {
            final MatrixCursor$RowBuilder row = h.newRow();
            final String fp = mailEngine.FP();
            if (ew(fp)) {
                E.c("Gmail", "populateAccountCursorRow %s", fp);
                a(this.getContext(), fp, mailEngine, n, row);
            }
            else {
                E.f("Gmail", "Invalid MailEngine account name: %s", fp);
            }
        }
        return (Cursor)h;
    }
    
    public static String c(final String s, final long n, final String s2, final String s3) {
        return N(s, "refresh") + "/" + a(n, s2, s3);
    }
    
    public static void ca(final Context context) {
        context.getContentResolver().notifyChange(GmailProvider.bfi, (ContentObserver)null, false);
    }
    
    private static Map<String, String> dT(final String s) {
        synchronized (GmailProvider.bdG) {
            Map<String, String> map = GmailProvider.bdG.get(s);
            if (map == null) {
                map = new ConcurrentHashMap<String, String>();
                GmailProvider.bdG.put(s, map);
            }
            return map;
        }
    }
    
    private static Uri em(final String s) {
        return Uri.parse("content://com.android.gmail.uiinternal/" + s + "/notification");
    }
    
    public static Uri en(final String s) {
        return Uri.parse(N(s, "account"));
    }
    
    public static Uri eo(final String s) {
        return Uri.parse(bG.fh(s));
    }
    
    public static Uri ep(final String s) {
        return Uri.parse(N(s, "labels"));
    }
    
    private static Uri eq(final String s) {
        return Uri.parse(N(s, "search"));
    }
    
    private static Uri er(final String s) {
        return Uri.parse(N(s, "recentFolders"));
    }
    
    public static Uri es(final String s) {
        return Uri.parse(N(s, "ads"));
    }
    
    private static final boolean et(final String s) {
        return Gmail.ef(s) && !GmailProvider.bfp.contains(s);
    }
    
    private MailEngine eu(final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            throw new IllegalArgumentException("account is empty");
        }
        return MailEngine.V(this.getContext(), s);
    }
    
    private static String ev(final String s) {
        if (s == null) {
            return null;
        }
        return TextUtils.join((CharSequence)"\n", (Object[])Message.cb(s));
    }
    
    private static boolean ew(final String s) {
        return !TextUtils.isEmpty((CharSequence)s) && !GmailProvider.bfn.contains(s.toLowerCase());
    }
    
    private static a ex(final String s) {
        synchronized (GmailProvider.bfC) {
            a a;
            if (GmailProvider.bfC.containsKey(s)) {
                a = GmailProvider.bfC.get(s);
            }
            else {
                a = new a(s, GmailProvider.bfx.eu(s));
                GmailProvider.bfC.put(s, a);
            }
            return a;
        }
    }
    
    public static int ey(final String s) {
        if (GmailProvider.bfD.containsKey(s)) {
            return GmailProvider.bfD.get(s);
        }
        if (!Gmail.ee(s)) {
            return 256;
        }
        return 1;
    }
    
    public static com.android.mail.providers.Account g(final Context context, final String s) {
        final G g = new G(com.android.mail.providers.E.aCr, 1);
        a(context, s, null, com.android.mail.providers.E.aCr, g.newRow());
        g.moveToFirst();
        com.android.mail.providers.Account.ue();
        return com.android.mail.providers.c.j((Cursor)g);
    }
    
    public static Uri h(final String s, final long n) {
        return Uri.parse(N(s, "message") + "/" + n);
    }
    
    public static Uri i(final String s, final long n) {
        return Uri.parse(N(s, "conversations") + "/" + n);
    }
    
    public static String j(final String s, final long n) {
        return N(s, "conversation") + "/" + n;
    }
    
    public static Uri k(final String s, final long n) {
        return Uri.parse(N(s, "conversationMessages") + "/" + n);
    }
    
    public static String l(final String s, final long n) {
        return N(s, "messageserverid") + "/" + n;
    }
    
    private static b m(final String s, final long n) {
        return ex(s).F(GmailProvider.bfx.getContext(), n);
    }
    
    static void n(final String s, final long n) {
        synchronized (GmailProvider.bfC) {
            final a a = GmailProvider.bfC.get(s);
            // monitorexit(GmailProvider.bfC)
            if (a != null) {
                a.aT(n);
            }
        }
    }
    
    private static ContentValues s(final Bundle bundle) {
        boolean b = true;
        long long1 = 0L;
        long long2;
        if (bundle.containsKey("_id")) {
            long2 = bundle.getLong("_id");
        }
        else {
            long2 = long1;
        }
        final ContentValues contentValues = new ContentValues();
        contentValues.put("toAddresses", ev(bundle.getString("toAddresses")));
        contentValues.put("ccAddresses", ev(bundle.getString("ccAddresses")));
        contentValues.put("bccAddresses", ev(bundle.getString("bccAddresses")));
        contentValues.put("subject", bundle.getString("subject"));
        contentValues.put("snippet", bundle.getString("snippet"));
        contentValues.put("replyToAddresses", bundle.getString("replyToAddress"));
        contentValues.put("fromAddress", bundle.getString("fromAddress"));
        final Address am = Address.am(bundle.getString("customFrom"));
        String address;
        if (am != null) {
            address = am.getAddress();
        }
        else {
            address = null;
        }
        contentValues.put("customFromAddress", address);
        final String string = bundle.getString("attachments");
        if (!TextUtils.isEmpty((CharSequence)string)) {
            final ArrayList<String> list = new ArrayList<String>();
            final Iterator<Attachment> iterator = GmailAttachment.bK(string).iterator();
            int n = 0;
            while (iterator.hasNext()) {
                final Attachment attachment = iterator.next();
                if (TextUtils.isEmpty((CharSequence)attachment.partId)) {
                    attachment.partId = "local" + n;
                }
                list.add(attachment.uC());
                ++n;
            }
            contentValues.put("joinedAttachmentInfos", TextUtils.join((CharSequence)"\n", (Iterable)list));
        }
        String s = bundle.getString("bodyHtml");
        if (TextUtils.isEmpty((CharSequence)s)) {
            final String string2 = bundle.getString("bodyText");
            if (!TextUtils.isEmpty((CharSequence)string2)) {
                s = Html.toHtml((Spanned)new SpannedString((CharSequence)string2));
            }
        }
        contentValues.put("body", s);
        contentValues.put("includeQuotedText", bundle.getInt("appendRefMessageContent", 0) != 0 && b);
        if (bundle.containsKey("quotedTextStartPos")) {
            contentValues.put("quoteStartPos", bundle.getInt("quotedTextStartPos"));
        }
        if (long2 == long1 && bundle.containsKey("refMessageId")) {
            long1 = Long.parseLong(Uri.parse(bundle.getString("refMessageId")).getLastPathSegment());
            if (bundle.getInt("draftType") != 4) {
                b = false;
            }
            contentValues.put("forward", b);
        }
        contentValues.put("refMessageId", long1);
        if (bundle.containsKey("refAdEventId")) {
            contentValues.put("refAdEventId", bundle.getString("refAdEventId"));
        }
        return contentValues;
    }
    
    public static Folder u(final Context p0, final String p1, final String p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Lcom/android/mail/utils/G;
        //     3: dup            
        //     4: getstatic       com/google/android/gm/provider/Gmail.bai:[Ljava/lang/String;
        //     7: iconst_1       
        //     8: invokespecial   com/android/mail/utils/G.<init>:([Ljava/lang/String;I)V
        //    11: astore_3       
        //    12: aload_2        
        //    13: invokestatic    com/google/android/gm/provider/Gmail.dZ:(Ljava/lang/String;)Z
        //    16: istore          4
        //    18: aload_0        
        //    19: aconst_null    
        //    20: aload_1        
        //    21: aload_2        
        //    22: iload           4
        //    24: invokestatic    com/google/android/gm/provider/GmailProvider.a:(Landroid/content/Context;Lcom/google/android/gm/provider/D;Ljava/lang/String;Ljava/lang/String;Z)Landroid/util/Pair;
        //    27: astore          5
        //    29: aload_3        
        //    30: invokevirtual   android/database/MatrixCursor.newRow:()Landroid/database/MatrixCursor$RowBuilder;
        //    33: astore          6
        //    35: getstatic       com/google/android/gm/provider/Gmail.bai:[Ljava/lang/String;
        //    38: astore          7
        //    40: aload           7
        //    42: arraylength    
        //    43: istore          8
        //    45: iconst_0       
        //    46: istore          9
        //    48: iload           9
        //    50: iload           8
        //    52: if_icmpge       208
        //    55: aload           7
        //    57: iload           9
        //    59: aaload         
        //    60: astore          15
        //    62: ldc_w           "_id"
        //    65: aload           15
        //    67: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    70: ifeq            90
        //    73: aload           6
        //    75: aload           5
        //    77: getfield        android/util/Pair.first:Ljava/lang/Object;
        //    80: invokevirtual   android/database/MatrixCursor$RowBuilder.add:(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
        //    83: pop            
        //    84: iinc            9, 1
        //    87: goto            48
        //    90: ldc_w           "canonicalName"
        //    93: aload           15
        //    95: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    98: ifeq            111
        //   101: aload           6
        //   103: aload_2        
        //   104: invokevirtual   android/database/MatrixCursor$RowBuilder.add:(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
        //   107: pop            
        //   108: goto            84
        //   111: ldc_w           "systemLabel"
        //   114: aload           15
        //   116: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   119: ifeq            150
        //   122: iload           4
        //   124: ifeq            144
        //   127: iconst_1       
        //   128: istore          19
        //   130: aload           6
        //   132: iload           19
        //   134: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   137: invokevirtual   android/database/MatrixCursor$RowBuilder.add:(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
        //   140: pop            
        //   141: goto            84
        //   144: iconst_0       
        //   145: istore          19
        //   147: goto            130
        //   150: ldc_w           "name"
        //   153: aload           15
        //   155: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   158: ifeq            175
        //   161: aload           6
        //   163: aload           5
        //   165: getfield        android/util/Pair.second:Ljava/lang/Object;
        //   168: invokevirtual   android/database/MatrixCursor$RowBuilder.add:(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
        //   171: pop            
        //   172: goto            84
        //   175: ldc_w           "color"
        //   178: aload           15
        //   180: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   183: ifeq            198
        //   186: aload           6
        //   188: ldc_w           "2147483647"
        //   191: invokevirtual   android/database/MatrixCursor$RowBuilder.add:(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
        //   194: pop            
        //   195: goto            84
        //   198: aload           6
        //   200: aconst_null    
        //   201: invokevirtual   android/database/MatrixCursor$RowBuilder.add:(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
        //   204: pop            
        //   205: goto            84
        //   208: aconst_null    
        //   209: aload_1        
        //   210: getstatic       com/android/mail/providers/E.aCv:[Ljava/lang/String;
        //   213: aload_3        
        //   214: aconst_null    
        //   215: invokestatic    com/google/android/gm/provider/GmailProvider.a:(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;[Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
        //   218: astore          12
        //   220: aload           12
        //   222: astore          11
        //   224: aload           11
        //   226: invokeinterface android/database/Cursor.moveToFirst:()Z
        //   231: pop            
        //   232: new             Lcom/android/mail/providers/Folder;
        //   235: dup            
        //   236: aload           11
        //   238: invokespecial   com/android/mail/providers/Folder.<init>:(Landroid/database/Cursor;)V
        //   241: astore          14
        //   243: aload           11
        //   245: ifnull          255
        //   248: aload           11
        //   250: invokeinterface android/database/Cursor.close:()V
        //   255: aload           14
        //   257: areturn        
        //   258: astore          10
        //   260: aconst_null    
        //   261: astore          11
        //   263: aload           11
        //   265: ifnull          275
        //   268: aload           11
        //   270: invokeinterface android/database/Cursor.close:()V
        //   275: aload           10
        //   277: athrow         
        //   278: astore          10
        //   280: goto            263
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  208    220    258    263    Any
        //  224    243    278    283    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0255:
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
    
    public static String u(final Folder folder) {
        return folder.azZ.aPj.getLastPathSegment();
    }
    
    private Cursor x(final String[] array) {
        Label_0219: {
            final ImmutableList<Object> j;
            final HashSet<String> set;
            synchronized (this.bfA) {
                j = ImmutableList.J((Collection<?>)this.bfA);
                this.bfA.clear();
                // monitorexit(this.bfA)
                set = new HashSet<String>();
                if (j.isEmpty()) {
                    break Label_0219;
                }
                for (final L l : j) {
                    set.add(l.mAccount);
                    l.bfF.a(new String[] { Long.toString(l.aPP) }, l.mAccount, l, null);
                }
            }
            E.e("Gmail", "Performed undo on %d operations", j.size());
            final Iterator<Object> iterator2 = set.iterator();
            while (iterator2.hasNext()) {
                this.mContentResolver.notifyChange(Gmail.dU(iterator2.next()), (ContentObserver)null, false);
            }
            return (Cursor)new G(array, 0);
        }
        E.f("Gmail", "Requested to perform an undo when with no saved undo operations", new Object[0]);
        return (Cursor)new G(array, 0);
    }
    
    private Cursor y(final String[] array) {
        E.d(ad.TAG, "getAccountsCursor", new Object[0]);
        AccountManager.get(this.getContext()).getAccountsByTypeAndFeatures("com.google", com.google.android.gm.a.aWC, (AccountManagerCallback)new com.google.android.gm.provider.H(this), (Handler)null);
        if (this.bfB != null) {
            final Cursor c = this.c(array, MailEngine.b(this.getContext(), this.bfB));
            synchronized (this) {
                if (!this.bfr) {
                    final Context context = this.getContext();
                    new com.google.android.gm.a(context).a(new I(this, context));
                    this.bfr = true;
                }
                return c;
            }
        }
        return this.c(array, new ArrayList<MailEngine>());
    }
    
    public final void a(final MailEngine mailEngine) {
        this.bft.remove(mailEngine.FP());
        this.EI();
    }
    
    public ContentProviderResult[] applyBatch(final ArrayList<ContentProviderOperation> list) {
        final HashSet<String> set = new HashSet<String>();
        final Iterator<ContentProviderOperation> iterator = list.iterator();
        while (iterator.hasNext()) {
            set.add((String)iterator.next().getUri().getPathSegments().get(0));
        }
        final int size = set.size();
        MailEngine mailEngine = null;
        Label_0151: {
            while (true) {
                Label_0111: {
                    if (size != 1) {
                        break Label_0111;
                    }
                    final Iterator<Object> iterator2 = set.iterator();
                    if (!iterator2.hasNext()) {
                        break Label_0151;
                    }
                    final MailEngine eu = this.eu(iterator2.next());
                    mailEngine = eu;
                }
                if (mailEngine != null) {
                    mailEngine.Gz();
                }
                try {
                    final ContentProviderResult[] applyBatch = super.applyBatch((ArrayList)list);
                    if (mailEngine != null) {
                        mailEngine.setTransactionSuccessful();
                    }
                    return applyBatch;
                    final MailEngine eu = null;
                    continue;
                }
                finally {
                    if (mailEngine != null) {
                        mailEngine.endTransaction();
                    }
                }
                break;
            }
        }
    }
    
    public Bundle call(final String s, final String s2, final Bundle bundle) {
        long n = 0L;
        final String bfz = Uri.parse(s2).getPathSegments().get(0);
        final MailEngine eu = this.eu(bfz);
        MailIndexerService.eY(bfz);
        long n2;
        if (TextUtils.equals((CharSequence)s, (CharSequence)"send_message")) {
            if (bundle.containsKey("_id")) {
                n = bundle.getLong("_id");
            }
            n2 = this.a(eu, n, false, s(bundle), (Bundle)bundle.getParcelable("opened_fds"));
        }
        else if (TextUtils.equals((CharSequence)s, (CharSequence)"save_message")) {
            if (bundle.containsKey("_id")) {
                n = bundle.getLong("_id");
            }
            n2 = this.a(eu, n, true, s(bundle), (Bundle)bundle.getParcelable("opened_fds"));
        }
        else if (TextUtils.equals((CharSequence)s, (CharSequence)"set_current_account")) {
            GmailProvider.bfz = bfz;
            n2 = -1L;
        }
        else {
            E.g("Gmail", "Unexpected Content provider method: %s", s);
            n2 = -1L;
        }
        if (n2 != -1L) {
            final Bundle bundle2 = new Bundle();
            bundle2.putParcelable("messageUri", (Parcelable)h(bfz, n2));
            return bundle2;
        }
        return null;
    }
    
    public int delete(final Uri uri, final String s, final String[] array) {
        if (E.isLoggable("Gmail", 3)) {
            E.c("Gmail", "GmailProvider.delete: %s", E.A(uri));
        }
        final int match = GmailProvider.ajR.match(uri);
        final String s2 = uri.getPathSegments().get(0);
        switch (match) {
            default: {
                return 0;
            }
            case 13: {
                final String s3 = uri.getPathSegments().get(2);
                final String queryParameter = uri.getQueryParameter("seq");
                int int1;
                if (queryParameter != null) {
                    int1 = Integer.parseInt(queryParameter);
                }
                else {
                    int1 = -1;
                }
                final String queryParameter2 = uri.getQueryParameter("forceUiNotifications");
                final L l = new L(this, s2, Long.parseLong(s3), queryParameter2 != null && Boolean.valueOf(queryParameter2), (byte)0);
                l.a(Y.v(this.getContext(), s2, "^k"), true);
                final L i = (L)l.CX();
                this.a(int1, i);
                return this.a(new String[] { s3 }, s2, l, i);
            }
        }
    }
    
    public String getType(final Uri uri) {
        if (E.isLoggable("Gmail", 3)) {
            E.c("Gmail", "GmailProvider.getType: %s", E.A(uri));
        }
        switch (GmailProvider.ajR.match(uri)) {
            default: {
                return null;
            }
            case 23: {
                return uri.getQueryParameter("mimeType");
            }
        }
    }
    
    public Uri insert(final Uri uri, final ContentValues contentValues) {
        if (E.isLoggable("Gmail", 3)) {
            E.c("Gmail", "GmailProvider.insert: %s(%s)", E.A(uri), contentValues);
        }
        E.g("Gmail", "Unexpected GmailProvider.insert: %s(%s)", E.A(uri), contentValues);
        return null;
    }
    
    public boolean onCreate() {
        final Context context = this.getContext();
        this.mContentResolver = context.getContentResolver();
        this.bfq = new Gmail(this.mContentResolver);
        GmailProvider.bfw = context.getResources().getInteger(2131427400);
        GmailProvider.bfy = context.getResources().getString(2131296610);
        GmailProvider.bfx = this;
        com.android.mail.i.g.ao(context).registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        return true;
    }
    
    public void onSharedPreferenceChanged(final SharedPreferences sharedPreferences, final String s) {
        if ("removal-action".equals(s) || "conversation-list-swipe".equals(s) || "conversation-list-sender-image".equals(s) || "default-reply-all".equals(s) || "conversation-overview-mode".equals(s) || "auto-advance-mode".equals(s) || "snap-header-mode".equals(s) || "confirm-delete".equals(s) || "confirm-archive".equals(s) || "confirm-send".equals(s)) {
            ca(this.getContext());
        }
    }
    
    public Cursor query(final Uri uri, final String[] array, final String s, final String[] array2, final String s2) {
        if (E.isLoggable("Gmail", 3)) {
            E.c("Gmail", "GmailProvider.query: %s(%s, %s)", E.A(uri), s, Arrays.toString(array2));
        }
        final int match = GmailProvider.ajR.match(uri);
        Object o;
        if (match == 1) {
            o = this.y(array);
            ((Cursor)o).setNotificationUri(this.mContentResolver, GmailProvider.bfi);
        }
        else {
            final String s3 = uri.getPathSegments().get(0);
            o = null;
            boolean b = false;
        Label_2507_Outer:
            while (true) {
            Label_1533_Outer:
                while (true) {
                Label_1259_Outer:
                    while (true) {
                    Label_2009_Outer:
                        while (true) {
                        Label_2558_Outer:
                            while (true) {
                            Label_2522_Outer:
                                while (true) {
                                Label_1071_Outer:
                                    while (true) {
                                    Label_2091_Outer:
                                        while (true) {
                                        Label_1344_Outer:
                                            while (true) {
                                            Label_1933_Outer:
                                                while (true) {
                                                Label_1442_Outer:
                                                    while (true) {
                                                        while (true) {
                                                            switch (match) {
                                                                default: {
                                                                    b = true;
                                                                    break;
                                                                }
                                                                case 2: {
                                                                    final MailEngine eu = this.eu(s3);
                                                                    if (eu != null && ew(eu.FP())) {
                                                                        final Cursor c = this.c(array, Collections.singletonList(eu));
                                                                        final String i = com.google.android.gm.persistence.b.I(this.getContext(), s3);
                                                                        final d oq = com.android.mail.a.a.oq();
                                                                        String s4;
                                                                        if ("^iim".equals(i)) {
                                                                            s4 = "priority_inbox";
                                                                        }
                                                                        else {
                                                                            s4 = "inbox";
                                                                        }
                                                                        oq.f(5, s4);
                                                                        com.android.mail.a.a.oq().f(6, Boolean.toString(com.google.android.gm.persistence.b.DD().E(this.getContext(), s3)));
                                                                        o = c;
                                                                    }
                                                                    else {
                                                                        final Object[] array3 = { null };
                                                                        String fp;
                                                                        if (eu == null) {
                                                                            fp = "null MailEngine";
                                                                        }
                                                                        else {
                                                                            fp = eu.FP();
                                                                        }
                                                                        array3[0] = fp;
                                                                        E.f("Gmail", "Invalid mailEngine. %s", array3);
                                                                        o = null;
                                                                    }
                                                                    ((Cursor)o).setNotificationUri(this.mContentResolver, uri);
                                                                    b = false;
                                                                    break;
                                                                }
                                                                case 3: {
                                                                    final MailEngine eu2 = this.eu(s3);
                                                                    final Cursor a = a(eu2, s3, H.o(array), eu2.B(Gmail.bai).bU(false).Fl(), null);
                                                                    a.setNotificationUri(this.mContentResolver, ep(s3));
                                                                    o = a;
                                                                    b = false;
                                                                    break;
                                                                }
                                                                case 18: {
                                                                    final String lastPathSegment = uri.getLastPathSegment();
                                                                    final boolean boolean1 = Boolean.parseBoolean(uri.getQueryParameter("inboxFallback"));
                                                                    final boolean b2 = uri.getQueryParameterNames().contains("allowHiddenFolders") && Boolean.parseBoolean(uri.getQueryParameter("allowHiddenFolders"));
                                                                    String queryParameter;
                                                                    if (uri.getQueryParameterNames().contains("defaultParent")) {
                                                                        queryParameter = uri.getQueryParameter("defaultParent");
                                                                    }
                                                                    else {
                                                                        queryParameter = null;
                                                                    }
                                                                    final MailEngine eu3 = this.eu(s3);
                                                                    final String[] o2 = H.o(array);
                                                                    Cursor cursor = eu3.B(Gmail.bai).F(Collections.singletonList(lastPathSegment)).bU(b2).Fl();
                                                                    if (cursor.getCount() == 0 && boolean1) {
                                                                        cursor.close();
                                                                        cursor = eu3.B(Gmail.bai).F(Collections.singletonList(com.google.android.gm.persistence.b.I(this.getContext(), s3))).bU(false).Fl();
                                                                    }
                                                                    final Cursor a2 = a(eu3, s3, o2, cursor, queryParameter);
                                                                    a2.setNotificationUri(this.mContentResolver, P(s3, lastPathSegment));
                                                                    o = a2;
                                                                    b = false;
                                                                    break;
                                                                }
                                                                case 4:
                                                                case 5: {
                                                                    Object a4 = null;
                                                                Label_0807_Outer:
                                                                    while (true) {
                                                                        final String queryParameter2 = uri.getQueryParameter("limit");
                                                                        while (true) {
                                                                        Label_2307:
                                                                            while (true) {
                                                                                Integer value;
                                                                                boolean boolean2;
                                                                                String queryParameter3;
                                                                                String queryParameter4;
                                                                                int boolean3;
                                                                                String queryParameter5;
                                                                                boolean b3 = false;
                                                                                String s5;
                                                                                long long1;
                                                                                String af;
                                                                                Cursor a3;
                                                                                Object o3;
                                                                                Object o4;
                                                                                Iterator<String> iterator;
                                                                                String s6;
                                                                                GmailAttachment gmailAttachment;
                                                                                String contentType;
                                                                                String partId;
                                                                                List<GmailAttachment> list;
                                                                                Iterator<GmailAttachment> iterator2;
                                                                                String blK;
                                                                                long bku;
                                                                                long bol;
                                                                                long blL;
                                                                                String[] s7;
                                                                                List<GmailAttachment> list2;
                                                                                Cursor a5;
                                                                                Iterator<GmailAttachment> iterator3;
                                                                                String queryParameter6;
                                                                                String queryParameter7;
                                                                                a ex2;
                                                                                Uri$Builder buildUpon;
                                                                                Uri build;
                                                                                G g;
                                                                                MatrixCursor$RowBuilder row;
                                                                                long long2;
                                                                                MailEngine eu4;
                                                                                com.android.mail.i.g ao;
                                                                                Cursor b4;
                                                                                Cursor wrappedCursor;
                                                                                MailEngine eu5;
                                                                                String[] o5;
                                                                                aa bu;
                                                                                Cursor a6;
                                                                                String lastPathSegment2;
                                                                                MailEngine eu6;
                                                                                String lastPathSegment3;
                                                                                Cursor a7;
                                                                                boolean b5;
                                                                                g fl;
                                                                                Cursor a8;
                                                                                String encode;
                                                                                String s8;
                                                                                long long3;
                                                                                boolean aat;
                                                                                String queryParameter8;
                                                                                ListParams bt;
                                                                                String queryParameter9;
                                                                                MailEngine eu7;
                                                                                com.android.mail.i.g ao2;
                                                                                String[] r;
                                                                                Cursor a9;
                                                                                Object o6;
                                                                                GmailAttachment gmailAttachment2;
                                                                                e g2;
                                                                                List<String> bos;
                                                                                long long4;
                                                                                MailEngine eu8;
                                                                                com.android.mail.i.g ao3;
                                                                                Cursor c2;
                                                                                String queryParameter10;
                                                                                Label_0913_Outer:Label_1390_Outer:Label_1305_Outer:
                                                                                while (true) {
                                                                                    try {
                                                                                        value = Integer.parseInt(queryParameter2);
                                                                                        boolean2 = true;
                                                                                        queryParameter3 = uri.getQueryParameter("use_network");
                                                                                        if (queryParameter3 != null) {
                                                                                            boolean2 = Boolean.parseBoolean(queryParameter3);
                                                                                        }
                                                                                        queryParameter4 = uri.getQueryParameter("all_notifications");
                                                                                        if (queryParameter4 == null) {
                                                                                            break Label_2307;
                                                                                        }
                                                                                        boolean3 = (Boolean.parseBoolean(queryParameter4) ? 1 : 0);
                                                                                        queryParameter5 = uri.getQueryParameter("seen");
                                                                                        while (true) {
                                                                                            while (true) {
                                                                                                Label_0838: {
                                                                                                    if (queryParameter5 != null && Boolean.FALSE.toString().equals(queryParameter5)) {
                                                                                                        b3 = true;
                                                                                                        break Label_0838;
                                                                                                    }
                                                                                                    Label_0974: {
                                                                                                        break Label_0974;
                                                                                                        while (true) {
                                                                                                            s5 = uri.getPathSegments().get(2);
                                                                                                            while (true) {
                                                                                                                Label_1013: {
                                                                                                                    try {
                                                                                                                        long1 = Long.parseLong(s5);
                                                                                                                        af = this.eu(s3).Fn().af(long1);
                                                                                                                        if (af != null) {
                                                                                                                            break Label_1013;
                                                                                                                        }
                                                                                                                        E.f("Gmail", "Unknown canonical name: %s", af);
                                                                                                                        a3 = null;
                                                                                                                        a4 = a3;
                                                                                                                        if (a4 == null) {
                                                                                                                            E.f("Gmail", "Returning an empty cursor instead of a null cursor", new Object[0]);
                                                                                                                            a4 = new G(array, 0);
                                                                                                                        }
                                                                                                                        if (boolean3 != 0) {
                                                                                                                            ((Cursor)a4).setNotificationUri(this.mContentResolver, Gmail.dU(s3));
                                                                                                                            o = a4;
                                                                                                                            b = false;
                                                                                                                            break Label_2507_Outer;
                                                                                                                        }
                                                                                                                        break Label_0807_Outer;
                                                                                                                        b3 = false;
                                                                                                                        break;
                                                                                                                    }
                                                                                                                    catch (NumberFormatException ex) {
                                                                                                                        E.e("Gmail", ex, "Unable to parse label id %s", s5);
                                                                                                                        return (Cursor)new G(array, 0);
                                                                                                                    }
                                                                                                                }
                                                                                                                a3 = this.a(s3, uri, long1, af, array, value, boolean2, b3);
                                                                                                                continue Label_0913_Outer;
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                                if (match == 4) {
                                                                                                    continue Label_0913_Outer;
                                                                                                }
                                                                                                break;
                                                                                            }
                                                                                            a4 = this.a(s3, uri, -1L, uri.getPathSegments().get(2), array, value, boolean2, b3);
                                                                                            continue Label_1390_Outer;
                                                                                        }
                                                                                        o = this.x(array);
                                                                                        b = true;
                                                                                        break Label_2507_Outer;
                                                                                        // iftrue(Label_2398:, contentType == null || !contentType.startsWith(s6))
                                                                                        // iftrue(Label_2467:, !iterator3.hasNext())
                                                                                        // iftrue(Label_1902:, 24 == com.android.mail.providers.E.aCv.length)
                                                                                        // iftrue(Label_1315:, b4 != null)
                                                                                        // iftrue(Label_2611:, !iterator2.hasNext())
                                                                                        // iftrue(Label_1527:, encode == null)
                                                                                        // iftrue(Label_2258:, !partId.equalsIgnoreCase(gmailAttachment2.partId))
                                                                                        // iftrue(Label_2212:, list != null)
                                                                                        // iftrue(Label_2455:, gmailAttachment2 == null)
                                                                                        // iftrue(Label_2463:, list == null || list.size() <= 0 || bos == null || bos.isEmpty())
                                                                                        // iftrue(Label_1400:, c2 != null)
                                                                                        // iftrue(Label_2367:, !iterator.hasNext())
                                                                                        // iftrue(Label_1521:, fl == null)
                                                                                        // iftrue(Label_2319:, list.size() <= 0 || TextUtils.isEmpty((CharSequence)partId))
                                                                                        // iftrue(Label_1515:, match != 16)
                                                                                        Block_32: {
                                                                                            Label_1902: {
                                                                                                while (true) {
                                                                                                Label_1455:
                                                                                                    while (true) {
                                                                                                    Block_26_Outer:
                                                                                                        while (true) {
                                                                                                        Label_2212:
                                                                                                            while (true) {
                                                                                                                Block_25: {
                                                                                                                    while (true) {
                                                                                                                    Label_1212:
                                                                                                                        while (true) {
                                                                                                                        Label_1305:
                                                                                                                            while (true) {
                                                                                                                                while (true) {
                                                                                                                                    b = true;
                                                                                                                                    o = o3;
                                                                                                                                    break Label_2507_Outer;
                                                                                                                                    b = true;
                                                                                                                                    o = o4;
                                                                                                                                    break Label_2507_Outer;
                                                                                                                                    s6 = iterator.next();
                                                                                                                                    contentType = gmailAttachment.getContentType();
                                                                                                                                    Block_38: {
                                                                                                                                        while (true) {
                                                                                                                                            while (true) {
                                                                                                                                                Label_2319: {
                                                                                                                                                Label_2367_Outer:
                                                                                                                                                    while (true) {
                                                                                                                                                        Block_31: {
                                                                                                                                                            while (true) {
                                                                                                                                                                Label_1154: {
                                                                                                                                                                Label_1499:
                                                                                                                                                                    while (true) {
                                                                                                                                                                        while (true) {
                                                                                                                                                                            Block_41: {
                                                                                                                                                                                break Block_41;
                                                                                                                                                                                o = this.c(s3, array);
                                                                                                                                                                                b = true;
                                                                                                                                                                                break Label_2507_Outer;
                                                                                                                                                                                E.c("Gmail", "Looking for attachment partId: %s", partId);
                                                                                                                                                                                iterator2 = list.iterator();
                                                                                                                                                                                Block_27: {
                                                                                                                                                                                    Label_2258: {
                                                                                                                                                                                        break Label_2258;
                                                                                                                                                                                        a5 = this.a(blK, bku, bol, blL, s7, list2);
                                                                                                                                                                                        a5.setNotificationUri(this.mContentResolver, uri);
                                                                                                                                                                                        o = a5;
                                                                                                                                                                                        b = false;
                                                                                                                                                                                        break Label_2507_Outer;
                                                                                                                                                                                        break Block_38;
                                                                                                                                                                                        queryParameter6 = uri.getQueryParameter("query");
                                                                                                                                                                                        queryParameter7 = uri.getQueryParameter("query_identifier");
                                                                                                                                                                                        ex2 = ex(s3);
                                                                                                                                                                                        buildUpon = Uri.parse(N(s3, "searchConversations")).buildUpon();
                                                                                                                                                                                        buildUpon.appendQueryParameter("query", queryParameter6);
                                                                                                                                                                                        buildUpon.appendQueryParameter("query_identifier", queryParameter7);
                                                                                                                                                                                        build = buildUpon.build();
                                                                                                                                                                                        g = new G(com.android.mail.providers.E.aCv, 1);
                                                                                                                                                                                        row = g.newRow();
                                                                                                                                                                                        row.add((Object)GmailProvider.bfo);
                                                                                                                                                                                        row.add((Object)null);
                                                                                                                                                                                        row.add((Object)uri);
                                                                                                                                                                                        row.add((Object)"search");
                                                                                                                                                                                        row.add((Object)0);
                                                                                                                                                                                        row.add((Object)66144);
                                                                                                                                                                                        row.add((Object)0);
                                                                                                                                                                                        row.add((Object)build);
                                                                                                                                                                                        row.add((Object)null);
                                                                                                                                                                                        row.add((Object)0);
                                                                                                                                                                                        row.add((Object)0);
                                                                                                                                                                                        row.add((Object)ex2.fk(queryParameter6));
                                                                                                                                                                                        row.add((Object)c(s3, -1L, null, queryParameter6));
                                                                                                                                                                                        row.add((Object)0);
                                                                                                                                                                                        row.add((Object)0);
                                                                                                                                                                                        row.add((Object)4097);
                                                                                                                                                                                        row.add((Object)0);
                                                                                                                                                                                        row.add((Object)0);
                                                                                                                                                                                        row.add((Object)null);
                                                                                                                                                                                        row.add((Object)null);
                                                                                                                                                                                        row.add((Object)null);
                                                                                                                                                                                        row.add((Object)"search");
                                                                                                                                                                                        row.add((Object)0L);
                                                                                                                                                                                        row.add((Object)null);
                                                                                                                                                                                        break Block_27;
                                                                                                                                                                                        long2 = Long.parseLong(uri.getLastPathSegment());
                                                                                                                                                                                        eu4 = this.eu(s3);
                                                                                                                                                                                        ao = com.android.mail.i.g.ao(this.getContext());
                                                                                                                                                                                        b4 = eu4.b(Gmail.aCy, long2);
                                                                                                                                                                                        Block_22: {
                                                                                                                                                                                            break Block_22;
                                                                                                                                                                                            o3 = null;
                                                                                                                                                                                            continue Label_1305_Outer;
                                                                                                                                                                                        }
                                                                                                                                                                                        o4 = null;
                                                                                                                                                                                        continue Label_1305;
                                                                                                                                                                                        Label_1527: {
                                                                                                                                                                                            wrappedCursor = null;
                                                                                                                                                                                        }
                                                                                                                                                                                        break Label_1499;
                                                                                                                                                                                        eu5 = this.eu(s3);
                                                                                                                                                                                        o5 = H.o(array);
                                                                                                                                                                                        bu = eu5.B(Gmail.bai).bU(false);
                                                                                                                                                                                        bu.g(System.currentTimeMillis(), 10);
                                                                                                                                                                                        a6 = a(eu5, s3, o5, bu.Fl(), null);
                                                                                                                                                                                        a6.setNotificationUri(this.mContentResolver, er(s3));
                                                                                                                                                                                        o = a6;
                                                                                                                                                                                        b = false;
                                                                                                                                                                                        break Label_2507_Outer;
                                                                                                                                                                                        Label_1515:
                                                                                                                                                                                        lastPathSegment2 = null;
                                                                                                                                                                                        break Label_1455;
                                                                                                                                                                                        eu6.p(wrappedCursor);
                                                                                                                                                                                        b = true;
                                                                                                                                                                                        o = null;
                                                                                                                                                                                        break Label_2507_Outer;
                                                                                                                                                                                    }
                                                                                                                                                                                    break Block_31;
                                                                                                                                                                                }
                                                                                                                                                                                E.g("Gmail", "unexpected number of columns. Projection specifies %d items, while only %d columns added", com.android.mail.providers.E.aCv.length, 24);
                                                                                                                                                                                break Label_1902;
                                                                                                                                                                                Label_2455: {
                                                                                                                                                                                    list = Collections.emptyList();
                                                                                                                                                                                }
                                                                                                                                                                                break Label_2319;
                                                                                                                                                                                lastPathSegment3 = uri.getLastPathSegment();
                                                                                                                                                                                a7 = this.a(s3, array, lastPathSegment3);
                                                                                                                                                                                a7.setNotificationUri(this.mContentResolver, R(s3, lastPathSegment3));
                                                                                                                                                                                o = a7;
                                                                                                                                                                                b = false;
                                                                                                                                                                                break Label_2507_Outer;
                                                                                                                                                                                list2 = new ArrayList<GmailAttachment>();
                                                                                                                                                                                iterator3 = list.iterator();
                                                                                                                                                                                continue Label_1533_Outer;
                                                                                                                                                                                b5 = false;
                                                                                                                                                                                break Label_1154;
                                                                                                                                                                            }
                                                                                                                                                                            list2.add(gmailAttachment);
                                                                                                                                                                            continue Label_1533_Outer;
                                                                                                                                                                        }
                                                                                                                                                                        wrappedCursor = fl.getWrappedCursor();
                                                                                                                                                                        continue Label_1499;
                                                                                                                                                                        Label_1521: {
                                                                                                                                                                            wrappedCursor = null;
                                                                                                                                                                        }
                                                                                                                                                                        continue Label_1499;
                                                                                                                                                                    }
                                                                                                                                                                    a8 = this.a(s3, array, null);
                                                                                                                                                                    a8.setNotificationUri(this.mContentResolver, es(s3));
                                                                                                                                                                    o = a8;
                                                                                                                                                                    b = false;
                                                                                                                                                                    break Label_2507_Outer;
                                                                                                                                                                    encode = Uri.encode(lastPathSegment2);
                                                                                                                                                                    eu6 = this.eu(s3);
                                                                                                                                                                    break Block_25;
                                                                                                                                                                    s8 = uri.getPathSegments().get(2);
                                                                                                                                                                    try {
                                                                                                                                                                        long3 = Long.parseLong(s8);
                                                                                                                                                                        aat = true;
                                                                                                                                                                        queryParameter8 = uri.getQueryParameter("listParams");
                                                                                                                                                                        if (queryParameter8 != null) {
                                                                                                                                                                            bt = ListParams.bT(queryParameter8);
                                                                                                                                                                            if (bt != null) {
                                                                                                                                                                                aat = bt.aAT;
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                        queryParameter9 = uri.getQueryParameter("label");
                                                                                                                                                                        eu7 = this.eu(s3);
                                                                                                                                                                        if (!aat) {
                                                                                                                                                                            b5 = true;
                                                                                                                                                                            ao2 = com.android.mail.i.g.ao(this.getContext());
                                                                                                                                                                            r = H.r(array);
                                                                                                                                                                            a9 = eu7.a(Gmail.aCy, long3, b5, false);
                                                                                                                                                                            if (a9 == null) {
                                                                                                                                                                                o6 = null;
                                                                                                                                                                                o = o6;
                                                                                                                                                                                b = false;
                                                                                                                                                                                break Label_2507_Outer;
                                                                                                                                                                            }
                                                                                                                                                                            break Label_1212;
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                    catch (NumberFormatException ex3) {
                                                                                                                                                                        return null;
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                                continue Block_26_Outer;
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        gmailAttachment2 = iterator2.next();
                                                                                                                                                        break Block_32;
                                                                                                                                                        Label_2463: {
                                                                                                                                                            list2 = list;
                                                                                                                                                        }
                                                                                                                                                        continue Label_2367_Outer;
                                                                                                                                                    }
                                                                                                                                                    while (true) {
                                                                                                                                                        E.e("Gmail", "getAttachments failed with account: %s, conversationId: %d, serverMessageId: %d", blK, bku, bol);
                                                                                                                                                        list = new ArrayList<GmailAttachment>();
                                                                                                                                                        break Label_2212;
                                                                                                                                                        g2 = e.G(uri);
                                                                                                                                                        bku = g2.bku;
                                                                                                                                                        blK = g2.blK;
                                                                                                                                                        partId = g2.partId;
                                                                                                                                                        bol = g2.bol;
                                                                                                                                                        blL = g2.blL;
                                                                                                                                                        bos = g2.bos;
                                                                                                                                                        s7 = H.s(array);
                                                                                                                                                        list = a(blK, bku, bol);
                                                                                                                                                        continue Label_2091_Outer;
                                                                                                                                                    }
                                                                                                                                                    list = Collections.singletonList(gmailAttachment2);
                                                                                                                                                }
                                                                                                                                                continue Block_26_Outer;
                                                                                                                                            }
                                                                                                                                            long4 = Long.parseLong(uri.getLastPathSegment());
                                                                                                                                            eu8 = this.eu(s3);
                                                                                                                                            ao3 = com.android.mail.i.g.ao(this.getContext());
                                                                                                                                            c2 = eu8.c(Gmail.aCy, long4);
                                                                                                                                            continue Label_2009_Outer;
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    gmailAttachment = iterator3.next();
                                                                                                                                    iterator = bos.iterator();
                                                                                                                                    break Label_1305;
                                                                                                                                    Label_1400: {
                                                                                                                                        o3 = new k(this.getContext(), c2, s3, null, ao3, GmailProvider.bfy, com.android.mail.providers.E.aCy);
                                                                                                                                    }
                                                                                                                                    continue Label_1305_Outer;
                                                                                                                                }
                                                                                                                                Label_1315: {
                                                                                                                                    o4 = new k(this.getContext(), b4, s3, null, ao, GmailProvider.bfy, com.android.mail.providers.E.aCy);
                                                                                                                                }
                                                                                                                                continue Label_1305;
                                                                                                                            }
                                                                                                                            continue Label_2507_Outer;
                                                                                                                        }
                                                                                                                        o6 = new k(this.getContext(), a9, s3, queryParameter9, ao2, GmailProvider.bfy, r);
                                                                                                                        ((Cursor)o6).setNotificationUri(this.mContentResolver, k(s3, long3));
                                                                                                                        continue Label_2091_Outer;
                                                                                                                    }
                                                                                                                }
                                                                                                                fl = ex(s3).fl(encode);
                                                                                                                continue Label_2522_Outer;
                                                                                                            }
                                                                                                            continue Label_1533_Outer;
                                                                                                        }
                                                                                                        lastPathSegment2 = uri.getLastPathSegment();
                                                                                                        continue Label_1455;
                                                                                                    }
                                                                                                    queryParameter10 = uri.getQueryParameter("query");
                                                                                                    o = this.a(s3, uri, queryParameter10, uri.getQueryParameter("query_identifier"), -1L, null, array, null, true, false);
                                                                                                    ex(s3).h(queryParameter10, ((Cursor)o).getCount());
                                                                                                    this.mContentResolver.notifyChange(eq(s3), (ContentObserver)null, false);
                                                                                                    b = true;
                                                                                                    break Label_2507_Outer;
                                                                                                    continue Label_1933_Outer;
                                                                                                }
                                                                                            }
                                                                                            ((Cursor)g).setNotificationUri(this.mContentResolver, uri.buildUpon().clearQuery().build());
                                                                                            o = g;
                                                                                            b = false;
                                                                                            break Label_2507_Outer;
                                                                                        }
                                                                                        E.c("Gmail", "Found attachment", new Object[0]);
                                                                                        continue Label_2307;
                                                                                    }
                                                                                    catch (NumberFormatException ex4) {
                                                                                        value = null;
                                                                                        continue Label_0807_Outer;
                                                                                    }
                                                                                    break;
                                                                                }
                                                                                Label_2611: {
                                                                                    gmailAttachment2 = null;
                                                                                }
                                                                                continue Label_2307;
                                                                            }
                                                                            int boolean3 = 0;
                                                                            continue Label_2507_Outer;
                                                                        }
                                                                    }
                                                                    b = true;
                                                                    o = a4;
                                                                    break;
                                                                }
                                                                case 6: {
                                                                    continue Label_2091_Outer;
                                                                }
                                                                case 10: {
                                                                    continue Label_2009_Outer;
                                                                }
                                                                case 28: {
                                                                    continue Label_1933_Outer;
                                                                }
                                                                case 15: {
                                                                    continue Label_2507_Outer;
                                                                }
                                                                case 16:
                                                                case 17: {
                                                                    continue;
                                                                }
                                                                case 19: {
                                                                    continue Label_1259_Outer;
                                                                }
                                                                case 20: {
                                                                    continue Label_1442_Outer;
                                                                }
                                                                case 21: {
                                                                    continue Label_2558_Outer;
                                                                }
                                                                case 22:
                                                                case 23: {
                                                                    continue Label_1344_Outer;
                                                                }
                                                                case 26: {
                                                                    continue Label_1533_Outer;
                                                                }
                                                                case 29: {
                                                                    continue Label_1071_Outer;
                                                                }
                                                                case 30: {
                                                                    continue Label_2522_Outer;
                                                                }
                                                            }
                                                            break;
                                                        }
                                                        break;
                                                    }
                                                    break;
                                                }
                                                break;
                                            }
                                            break;
                                        }
                                        break;
                                    }
                                    break;
                                }
                                break;
                            }
                            break;
                        }
                        break;
                    }
                    break;
                }
                break;
            }
            if (o != null && b) {
                ((Cursor)o).setNotificationUri(this.mContentResolver, em(s3));
                return (Cursor)o;
            }
        }
        return (Cursor)o;
    }
    
    public void shutdown() {
        com.android.mail.i.g.ao(this.getContext()).unregisterOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        GmailProvider.bfx = null;
        GmailProvider.bfC.clear();
    }
    
    public int update(final Uri uri, final ContentValues contentValues, final String s, final String[] array) {
        if (E.isLoggable("Gmail", 3)) {
            E.c("Gmail", "GmailProvider.update: %s(%s)", E.A(uri), contentValues);
        }
        final int match = GmailProvider.ajR.match(uri);
        final String s2 = uri.getPathSegments().get(0);
        final MailEngine eu = this.eu(s2);
        MailIndexerService.eY(s2);
        switch (match) {
            default: {
                E.g("Gmail", "Unexpected GmailProvider.update: %s", E.A(uri) + " and values are : " + contentValues.toString());
                break;
            }
            case 13: {
                final String s3 = uri.getPathSegments().get(2);
                final String queryParameter = uri.getQueryParameter("seq");
                int int1;
                if (queryParameter != null) {
                    int1 = Integer.parseInt(queryParameter);
                }
                else {
                    int1 = -1;
                }
                final String queryParameter2 = uri.getQueryParameter("forceUiNotifications");
                final boolean b = queryParameter2 != null && Boolean.valueOf(queryParameter2);
                E.d("Gmail", "GmailProvider.updateConversation for conversation %s", s3);
                final MailEngine eu2 = this.eu(s2);
                final long long1 = Long.parseLong(s3);
                int n;
                int n2;
                U a;
                if (contentValues.containsKey("operation")) {
                    final String asString = contentValues.getAsString("operation");
                    if ("discard_drafts".equals(asString)) {
                        n = 0;
                        n2 = 1;
                        a = null;
                    }
                    else if ("move_failed_to_drafts".equals(asString)) {
                        n = 1;
                        a = null;
                        n2 = 0;
                    }
                    else {
                        E.c("Gmail", "Received operation %s for conversation %d", asString, long1);
                        a = new L(this, s2, long1, b, (byte)0);
                        if ("archive".equals(asString)) {
                            a.a(Y.v(this.getContext(), s2, "^i"), false);
                        }
                        else if ("mute".equals(asString)) {
                            a.a(Y.v(this.getContext(), s2, "^g"), true);
                        }
                        else if ("report_spam".equals(asString) || "report_not_spam".equals(asString)) {
                            a.a(Y.v(this.getContext(), s2, "^s"), "report_spam".equals(asString));
                        }
                        else if ("report_phishing".equals(asString)) {
                            final T v = Y.v(this.getContext(), s2, "^p");
                            if (v != null) {
                                a.a(v, true);
                            }
                        }
                        n = 0;
                        n2 = 0;
                    }
                }
                else if (contentValues.containsKey("folders_updated")) {
                    a = new L(this, s2, long1, b, (byte)0);
                    final String asString2 = contentValues.getAsString("folders_updated");
                    if (!TextUtils.isEmpty((CharSequence)asString2)) {
                        final String[] split = TextUtils.split(asString2, ",");
                        for (int length = split.length, i = 0; i < length; ++i) {
                            final Uri parse = Uri.parse(split[i]);
                            final String s4 = parse.getPathSegments().get(2);
                            if (et(s4)) {
                                final T v2 = Y.v(this.getContext(), s2, s4);
                                if (v2 != null) {
                                    a.a(v2, Boolean.valueOf(parse.getPathSegments().get(3)));
                                }
                            }
                        }
                    }
                    n = 0;
                    n2 = 0;
                }
                else if (contentValues.containsKey("rawFolders")) {
                    a = this.a(s2, long1, FolderList.d(contentValues.getAsByteArray("rawFolders")).aAL, new ArrayList<String>(eu2.X(this.getContext(), s3).keySet()), b);
                    n = 0;
                    n2 = 0;
                }
                else {
                    a = null;
                    n = 0;
                    n2 = 0;
                }
                U u;
                if (a == null) {
                    u = new L(this, s2, long1, b, (byte)0);
                }
                else {
                    u = a;
                }
                if (contentValues.containsKey("starred")) {
                    u.a(Y.v(this.getContext(), s2, "^t"), contentValues.getAsBoolean("starred"));
                }
                if (contentValues.containsKey("read")) {
                    u.a(Y.v(this.getContext(), s2, "^u"), !contentValues.getAsBoolean("read"));
                }
                if (contentValues.containsKey("viewed")) {
                    u.a(Y.v(this.getContext(), s2, "^o"), true);
                }
                if (contentValues.containsKey("priority")) {
                    int n3;
                    if (contentValues.getAsInteger("priority") == 1) {
                        n3 = 1;
                    }
                    else {
                        n3 = 0;
                    }
                    String s5;
                    if (n3 != 0) {
                        s5 = "^^important";
                    }
                    else {
                        s5 = "^^unimportant";
                    }
                    u.a(Y.v(this.getContext(), s2, s5), true);
                }
                int n4;
                if (n2 != 0) {
                    n4 = eu2.aB(long1);
                }
                else if (n != 0) {
                    n4 = eu2.aC(long1);
                }
                else {
                    n4 = 0;
                }
                final Boolean asBoolean = contentValues.getAsBoolean("suppress_undo");
                L l;
                if (asBoolean == null || !asBoolean) {
                    l = (L)u.CX();
                    this.a(int1, l);
                }
                else {
                    l = null;
                }
                return n4 + this.a(new String[] { s3 }, s2, u, l);
            }
            case 25: {
                E.c("Gmail", "update: running populateRecentLabels.", new Object[0]);
                this.a(eu, s2);
                break;
            }
            case 21: {
                return this.a(eu, s2, contentValues);
            }
            case 23: {
                final Integer asInteger = contentValues.getAsInteger("state");
                final Integer asInteger2 = contentValues.getAsInteger("destination");
                final Integer asInteger3 = contentValues.getAsInteger("rendition");
                final Integer asInteger4 = contentValues.getAsInteger("additionalPriority");
                final Boolean asBoolean2 = contentValues.getAsBoolean("delayDownload");
                if (asInteger != null || asInteger2 != null) {
                    final e g = e.G(uri);
                    final MailEngine eu3 = this.eu(g.blK);
                    if (asInteger != null) {
                        final GmailAttachment a2 = a(g.blK, g.bku, g.bol, g.partId);
                        if (a2 == null) {
                            E.f("Gmail", "couldn't find attachment in updateAttachmentState", new Object[0]);
                        }
                        else {
                            int intValue;
                            if (asInteger3 != null) {
                                intValue = asInteger3;
                            }
                            else {
                                intValue = 1;
                            }
                            final int intValue2 = asInteger;
                            switch (intValue2) {
                                case 0: {
                                    return eu3.FX().c(g.bku, g.bol, g.partId, intValue, false);
                                }
                                case 2:
                                case 4: {
                                    int intValue3;
                                    if (asInteger2 != null) {
                                        intValue3 = asInteger2;
                                    }
                                    else {
                                        intValue3 = 0;
                                    }
                                    final boolean b2 = intValue3 == 1;
                                    int intValue4;
                                    if (asInteger4 != null) {
                                        intValue4 = asInteger4;
                                    }
                                    else {
                                        intValue4 = 0;
                                    }
                                    final boolean b3 = asBoolean2 != null && asBoolean2;
                                    final com.google.android.gm.provider.g fx = eu3.FX();
                                    if (intValue2 == 4) {
                                        a2.setState(5);
                                        fx.c(g.bku, g.bol, g.partId, intValue, true);
                                    }
                                    else if (intValue2 == 2 && a2.state == 3 && a2.ayN == intValue3) {
                                        if (a2.bla == intValue) {
                                            break;
                                        }
                                    }
                                    a2.ayN = intValue3;
                                    if (b3) {
                                        a2.setState(5);
                                        fx.a(g.bku, g.bol, a2, intValue, b2, false, intValue4 + 1);
                                        break;
                                    }
                                    a2.setState(2);
                                    fx.a(g.bku, g.bol, a2, intValue, b2, intValue4 + 1);
                                    break;
                                }
                            }
                        }
                    }
                }
                return 0;
            }
            case 22: {
                return 0;
            }
            case 10: {
                final MailEngine eu4 = this.eu(s2);
                final long long2 = Long.parseLong(uri.getLastPathSegment());
                final Integer asInteger5 = contentValues.getAsInteger("read");
                final Integer asInteger6 = contentValues.getAsInteger("starred");
                final Integer asInteger7 = contentValues.getAsInteger("alwaysShowImages");
                if (asInteger7 != null || asInteger5 != null || asInteger6 != null) {
                    final bm ax = eu4.ax(long2);
                    if (ax == null) {
                        E.f("Gmail", "Error finding message for localMessageId: %d", long2);
                    }
                    else {
                        boolean b4 = false;
                        if (asInteger5 != null) {
                            final boolean b5 = asInteger5 == 0;
                            final ContentValues contentValues2 = new ContentValues();
                            contentValues2.put("canonicalName", "^u");
                            contentValues2.put("_id", long2);
                            contentValues2.put("messageId", ax.bkt);
                            contentValues2.put("conversation", ax.bku);
                            contentValues2.put("add_label_action", b5);
                            this.bfq.b(s2, new ContentValues[] { contentValues2 }, true);
                            b4 = true;
                        }
                        if (asInteger6 != null) {
                            final boolean b6 = asInteger6 != 0;
                            final ContentValues contentValues3 = new ContentValues();
                            contentValues3.put("canonicalName", "^t");
                            contentValues3.put("_id", long2);
                            contentValues3.put("messageId", ax.bkt);
                            contentValues3.put("conversation", ax.bku);
                            contentValues3.put("add_label_action", b6);
                            this.bfq.b(s2, new ContentValues[] { contentValues3 }, true);
                            b4 = true;
                        }
                        if (asInteger7 != null && asInteger7 != 0) {
                            com.google.android.gm.persistence.b.DD();
                            com.android.mail.i.g.ao(this.getContext()).a(com.android.mail.d.aY(ax.blC).getAddress(), com.google.android.gm.persistence.b.bz(this.getContext()));
                            b4 = true;
                        }
                        if (b4) {
                            return 1;
                        }
                    }
                }
                return 0;
            }
            case 24: {
                if (!contentValues.containsKey("_id")) {
                    return 0;
                }
                final MailEngine eu5 = this.eu(s2);
                final long longValue = contentValues.getAsLong("_id");
                final bm ax2 = eu5.ax(longValue);
                final int aa = eu5.aA(longValue);
                if (ax2 != null) {
                    this.mContentResolver.notifyChange(k(eu5.FP(), ax2.bku), (ContentObserver)null, false);
                    return aa;
                }
                return aa;
            }
            case 27: {
                final com.android.mail.i.g ao = com.android.mail.i.g.ao(this.getContext());
                if (contentValues.containsKey("auto_advance")) {
                    ao.cu(contentValues.getAsInteger("auto_advance"));
                }
                else if (contentValues.containsKey("conversation_view_mode")) {
                    ao.bg(contentValues.getAsInteger("conversation_view_mode") == 0);
                }
                this.mContentResolver.notifyChange(Uri.parse("content://com.android.gmail.ui/"), (ContentObserver)null, false);
                return 1;
            }
            case 18: {
                final String lastPathSegment = uri.getLastPathSegment();
                if (contentValues.containsKey("seen") && contentValues.getAsInteger("seen") == 1) {
                    final MailEngine w = MailEngine.W(this.getContext(), s2);
                    final af[] a3 = w.A(new String[] { lastPathSegment });
                    final af[] a4 = w.A(new String[] { Gmail.ei(lastPathSegment) });
                    if (a3.length > 0 && a4.length > 0) {
                        final af af = a3[0];
                        final af af2 = a4[0];
                        if (af2 != null) {
                            w.a(af, af2);
                        }
                    }
                }
                return 1;
            }
        }
        return 0;
    }
}
