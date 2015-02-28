package com.google.android.gm.provider;

import android.net.*;
import android.text.*;
import android.database.*;
import android.content.*;
import com.google.android.gm.provider.uiprovider.*;
import com.android.mail.providers.*;
import com.google.android.gm.persistence.*;
import com.google.android.gsf.*;
import java.util.concurrent.*;
import java.net.*;
import java.util.regex.*;
import android.util.*;
import org.json.*;
import java.io.*;
import com.google.common.collect.*;
import java.util.*;

public final class Gmail
{
    static String[] aCx;
    public static String[] aCy;
    public static String[] bai;
    public static final Set<String> bdE;
    public static final Pattern bdF;
    static Map<String, Map<String, Uri>> bdG;
    public static final Pattern bdH;
    public static final Pattern bdI;
    private static final Pattern bdJ;
    private static final Pattern bdK;
    private static final Set<String> bdL;
    private static final Set<String> bdM;
    public static final k<Long, String> bdN;
    public static final Set<String> bdO;
    private static final Set<String> bdP;
    private static final Set<String> bdQ;
    private static final Set<String> bdR;
    public static final String[] bdS;
    public static final String[] bdT;
    public static final String[] bdU;
    public static final String[] bdV;
    static final String[] bdW;
    public static String[] bdX;
    static final String[] bdY;
    private final ContentResolver mContentResolver;
    
    static {
        bdE = new z<String>().aH("^sq_ig_i_personal").aH("^sq_ig_i_social").aH("^sq_ig_i_promo").aH("^sq_ig_i_notification").aH("^sq_ig_i_group").Zy();
        bdF = Pattern.compile("\n");
        Gmail.bdG = (Map<String, Map<String, Uri>>)Maps.aan();
        bdH = Pattern.compile(" ");
        bdI = Pattern.compile(",");
        bdJ = Pattern.compile("\"(.*)\"");
        bdK = Pattern.compile("([^<]+)@");
        bdL = ImmutableSet.a("^all", "^b", "^r", "^g", "^i", "^f", "^s", "^t", "^k", "^u", "^io_im", "^iim", "^^cached", "^^out", "^sq_ig_i_personal", "^sq_ig_i_social", "^sq_ig_i_promo", "^sq_ig_i_notification", "^sq_ig_i_group", "^smartlabel_personal", "^smartlabel_social", "^smartlabel_promo", "^smartlabel_notification", "^smartlabel_group", "^^important", "^^unimportant", "^imi", "^imn", "^io_ns", "^im");
        bdM = ImmutableSet.b("^g", "^i", "^s", "^k");
        bdN = ImmutableBiMap.Zi().o(-500L, "^imi").o(-501L, "^imn").o(-499L, "^im").o(-502L, "^io_ns").Zn();
        bdO = ImmutableSet.b("^imi", "^imn", "^im", "^io_ns");
        bdP = ImmutableSet.a("^i", "^u", "^k", "^s", "^t", "^g", "^^important", "^^unimportant", "^imi", "^imn", "^io_ns", "^o");
        bdQ = ImmutableSet.b("^i", "^iim", "^k", "^s");
        bdR = ImmutableSet.b("^im", "^io_im", "^iim", "^p");
        bdS = new String[] { "_id", "event_id", "advertiser_name", "title", "line1", "visible_url", "redirect_url", "advertiser_image_data", "body", "expiration", "reason", "apm_extra_targeting_data", "starred", "view_status", "view", "slot", "apm_xsrf_token", "delete_status", "wta_data", "view_url", "click_url", "interaction_url", "obfuscated_data", "report_ad_server", "report_bow", "send_body", "click_id" };
        bdT = new String[] { "_id", "event_id", "advertiser_name", "title", "line1", "visible_url", "redirect_url", "advertiser_image_data", "expiration", "reason", "apm_extra_targeting_data", "starred", "view_status", "view", "slot", "apm_xsrf_token", "delete_status", "wta_data", "view_url", "click_url", "interaction_url", "obfuscated_data", "report_ad_server", "report_bow", "send_body", "click_id" };
        bdU = new String[] { "body" };
        bdV = new String[] { "_id", "domainTitle" };
        bdW = new String[] { "account_name" };
        Gmail.aCx = new String[] { "_id", "subject", "snippet", "fromAddress", "personalLevel", "labelIds", "numMessages", "maxMessageId", "hasAttachments", "hasMessagesWithErrors", "forceAllUnread", "fromProtoBuf", "fromCompact" };
        Gmail.aCy = new String[] { "_id", "messageId", "conversation", "subject", "snippet", "fromAddress", "customFromAddress", "toAddresses", "ccAddresses", "bccAddresses", "replyToAddresses", "dateSentMs", "dateReceivedMs", "listInfo", "personalLevel", "body", "bodyEmbedsExternalResources", "labelIds", "joinedAttachmentInfos", "refMessageId", "refAdEventId", "error", "forward", "includeQuotedText", "quoteStartPos", "spamDisplayedReasonType", "permalink", "clipped", "labelCount", "messageLabels", "isStarred", "isDraft", "isInOutbox", "isInRetry", "isInFailed", "isUnread" };
        Gmail.bai = new String[] { "_id", "canonicalName", "name", "numConversations", "numUnreadConversations", "numUnseenConversations", "color", "systemLabel", "hidden", "labelCountDisplayBehavior", "labelSyncPolicy", "lastTouched", "lastMessageTimestamp", "sortOrder" };
        Gmail.bdX = new String[] { "labelsIncluded", "labelsPartial", "conversationAgeDays", "maxAttachmentSize" };
        bdY = new String[] { "status", "account" };
    }
    
    public Gmail(final ContentResolver mContentResolver) {
        this.mContentResolver = mContentResolver;
    }
    
    public static TextUtils$StringSplitter DY() {
        return (TextUtils$StringSplitter)new TextUtils$SimpleStringSplitter(' ');
    }
    
    public static TextUtils$StringSplitter DZ() {
        return (TextUtils$StringSplitter)new A();
    }
    
    private static Uri M(final String s, final String s2) {
        final Map<String, Uri> dt = dT(s);
        Uri parse = dt.get(s2);
        if (parse == null) {
            parse = Uri.parse("content://gmail-ls/" + s + s2);
            dt.put(s2, parse);
        }
        return parse;
    }
    
    public static Gmail$Settings P(final Context context, final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            throw new IllegalArgumentException("account is empty");
        }
        final Cursor query = context.getContentResolver().query(M(s, "/settings/"), Gmail.bdX, (String)null, (String[])null, (String)null);
        try {
            return c(context, query);
        }
        finally {
            if (query != null) {
                query.close();
            }
        }
    }
    
    public static Gmail$Settings Q(final Context context, final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            throw new IllegalArgumentException("account is empty");
        }
        final Cursor c = MailEngine.V(context, s).C(Gmail.bdX);
        try {
            return c(context, c);
        }
        finally {
            if (c != null) {
                c.close();
            }
        }
    }
    
    private static ContentValues a(final Gmail$Settings gmail$Settings) {
        final ContentValues contentValues = new ContentValues();
        if (gmail$Settings.EF()) {
            contentValues.put("labelsIncluded", TextUtils.join((CharSequence)" ", (Iterable)gmail$Settings.mLabelsIncluded));
        }
        if (gmail$Settings.EG()) {
            contentValues.put("labelsPartial", TextUtils.join((CharSequence)" ", (Iterable)gmail$Settings.mLabelsPartial));
        }
        if (gmail$Settings.EC()) {
            contentValues.put("conversationAgeDays", gmail$Settings.mConversationAgeDays);
        }
        if (gmail$Settings.EE()) {
            contentValues.put("maxAttachmentSize", gmail$Settings.mMaxAttachmentSizeMb);
        }
        return contentValues;
    }
    
    public static Uri a(final String s, final long n, final GmailAttachment gmailAttachment, final int n2) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            throw new IllegalArgumentException("account is empty");
        }
        if (gmailAttachment.bom == 1 && gmailAttachment.bla == 1) {
            return Uri.parse(gmailAttachment.Ib());
        }
        return a(s, n, gmailAttachment.partId, n2, false);
    }
    
    static Uri a(final String s, final long n, final String s2) {
        return M(s, "/conversation/").buildUpon().appendEncodedPath(Long.toString(n)).appendEncodedPath("labels").appendEncodedPath(dY(s2)).build();
    }
    
    public static Uri a(final String s, final long n, final String s2, final int n2, final boolean b) {
        return M(s, "/messages/").buildUpon().appendPath(Long.toString(n)).appendPath("attachments").appendPath(s2).appendPath(F.toString(n2)).appendPath(Boolean.toString(b)).build();
    }
    
    public static Set<Long> a(final TextUtils$StringSplitter textUtils$StringSplitter) {
        final HashSet<Long> set = new HashSet<Long>();
        final Iterator iterator = textUtils$StringSplitter.iterator();
        while (iterator.hasNext()) {
            set.add(Long.valueOf(iterator.next()));
        }
        return set;
    }
    
    public static void a(final Context context, final String s, final Gmail$Settings gmail$Settings) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            throw new IllegalArgumentException("account is empty");
        }
        final Gmail$Settings gmail$Settings2 = new Gmail$Settings();
        gmail$Settings2.y(gmail$Settings.EA());
        gmail$Settings2.z(gmail$Settings.EB());
        gmail$Settings2.ai(gmail$Settings.Ey());
        gmail$Settings2.aj(gmail$Settings.Ez());
        final MailEngine v = MailEngine.V(context, s);
        final ContentValues a = a(gmail$Settings2);
        if (a.size() > 0) {
            v.f(a);
        }
    }
    
    public static void a(final String s, final Gmail$Settings gmail$Settings, final ContentResolver contentResolver) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            throw new IllegalArgumentException("account is empty");
        }
        final ContentValues a = a(gmail$Settings);
        if (a.size() > 0) {
            contentResolver.update(M(s, "/settings/"), a, (String)null, (String[])null);
            GmailBackupAgent.dataChanged("Sync settings ");
        }
    }
    
    public static int b(final ContentResolver contentResolver) {
        return c.getInt(contentResolver, "gmail-ads-number-to-display", 1);
    }
    
    static Uri b(final String s, final long n, final String s2) {
        return M(s, "/messages/").buildUpon().appendEncodedPath(Long.toString(n)).appendEncodedPath("labels").appendEncodedPath(dY(s2)).build();
    }
    
    public static long bY(final Context context) {
        String s;
        long n;
        if (bZ(context)) {
            s = "gmail_default_label_sync_days_large_data_partition";
            n = 30L;
        }
        else {
            s = "gmail_default_label_sync_days";
            n = 4L;
        }
        return c.getLong(context.getContentResolver(), s, n);
    }
    
    public static boolean bZ(final Context context) {
        return context.getFilesDir().getTotalSpace() >= c.getLong(context.getContentResolver(), "gmail_large_data_partition_min_threshold_bytes", 1000000000L);
    }
    
    static Gmail$Settings c(final Context context, final Cursor cursor) {
        final Gmail$Settings gmail$Settings = new Gmail$Settings();
        cursor.moveToNext();
        gmail$Settings.mLabelsIncluded = Sets.p(TextUtils.split(cursor.getString(0), Gmail.bdH));
        gmail$Settings.mLabelsPartial = Sets.p(TextUtils.split(cursor.getString(1), Gmail.bdH));
        final String string = cursor.getString(2);
        long n;
        if (string != null) {
            n = Long.parseLong(string);
        }
        else {
            n = Long.valueOf(bY(context));
        }
        gmail$Settings.mConversationAgeDays = n;
        final String string2 = cursor.getString(3);
        long n2;
        if (string2 != null) {
            n2 = Long.parseLong(string2);
        }
        else {
            n2 = Long.valueOf(0L);
        }
        gmail$Settings.mMaxAttachmentSizeMb = n2;
        return gmail$Settings;
    }
    
    public static boolean c(final ContentResolver contentResolver) {
        return c.getInt(contentResolver, "gmail-ads-number-to-display", 1) > 0;
    }
    
    private static Map<String, Uri> dT(final String s) {
        synchronized (Gmail.class) {
            Map<String, Uri> map = Gmail.bdG.get(s);
            if (map == null) {
                map = new ConcurrentHashMap<String, Uri>();
                Gmail.bdG.put(s, map);
            }
            return map;
        }
    }
    
    public static Uri dU(final String s) {
        final Map<String, Uri> dt = dT(s);
        Uri parse = dt.get("baseUri");
        if (parse == null) {
            parse = Uri.parse("content://gmail-ls/" + s);
            dt.put("baseUri", parse);
        }
        return parse;
    }
    
    static Uri dV(final String s) {
        return M(s, "/labels/");
    }
    
    public static Uri dW(final String s) {
        return M(s, "/label/");
    }
    
    public static Uri dX(final String s) {
        return M(s, "/status/");
    }
    
    private static String dY(final String s) {
        try {
            return URLEncoder.encode(s, "utf-8");
        }
        catch (UnsupportedEncodingException ex) {
            throw new RuntimeException(ex);
        }
    }
    
    public static boolean dZ(final String s) {
        return Gmail.bdL.contains(s);
    }
    
    public static boolean ea(final String s) {
        return s.startsWith("^sq_ig_i_");
    }
    
    public static boolean eb(final String s) {
        return Gmail.bdM.contains(s);
    }
    
    public static String ec(String substring) {
        final Matcher matcher = Gmail.bdJ.matcher(substring);
        Label_0045: {
            if (!matcher.find()) {
                break Label_0045;
            }
            final String group = matcher.group(1);
            if (group.length() <= 0) {
                substring = substring.substring(matcher.end(), substring.length());
                break Label_0045;
            }
            substring = group;
            return substring;
        }
        final Matcher matcher2 = Gmail.bdK.matcher(substring);
        if (matcher2.find()) {
            return matcher2.group(1);
        }
        return substring;
    }
    
    public static String ed(String substring) {
        final Matcher matcher = Patterns.EMAIL_ADDRESS.matcher(substring);
        if (matcher.find()) {
            substring = substring.substring(matcher.start(), matcher.end());
        }
        return substring;
    }
    
    public static boolean ee(final String s) {
        return s != null && !s.startsWith("^");
    }
    
    public static boolean ef(final String s) {
        return Gmail.bdP.contains(s) || ee(s) || s.startsWith("^sq_ig_i_");
    }
    
    public static boolean eg(final String s) {
        return Gmail.bdQ.contains(s) || ee(s) || s.startsWith("^sq_ig_i_");
    }
    
    public static boolean eh(final String s) {
        return Gmail.bdR.contains(s) || ef(s);
    }
    
    public static String ei(final String s) {
        return "^^unseen-" + s;
    }
    
    static Uri g(final String s, final long n) {
        return M(s, "/conversations/").buildUpon().appendEncodedPath(Long.toString(n)).appendEncodedPath("attachments").build();
    }
    
    public static Uri h(final String s, final long n) {
        return M(s, "/messages/").buildUpon().appendEncodedPath(Long.toString(n)).build();
    }
    
    public static boolean i(final Map<String, T> map) {
        return map.containsKey("^io_im");
    }
    
    public static String j(final Set<Long> set) {
        final StringBuilder sb = new StringBuilder();
        sb.append(',');
        final Iterator<Long> iterator = set.iterator();
        while (iterator.hasNext()) {
            sb.append(iterator.next());
            sb.append(',');
        }
        return sb.toString();
    }
    
    public static Set<Long> j(final Map<String, T> map) {
        final HashSet<Long> set = new HashSet<Long>();
        final Iterator<T> iterator = map.values().iterator();
        while (iterator.hasNext()) {
            set.add(iterator.next().getId());
        }
        return set;
    }
    
    public final void a(final String s, final ContentValues[] array, final boolean b) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            throw new IllegalArgumentException("account is empty");
        }
        Uri uri = M(s, "/conversations/labels");
        if (b) {
            uri = uri.buildUpon().appendQueryParameter("suppressUINotifications", Boolean.TRUE.toString()).build();
        }
        this.mContentResolver.bulkInsert(uri, array);
    }
    
    final void b(final String s, final ContentValues[] array, final boolean b) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            throw new IllegalArgumentException("account is empty");
        }
        Uri uri = M(s, "/messages/").buildUpon().appendEncodedPath("labels").build();
        if (b) {
            uri = uri.buildUpon().appendQueryParameter("suppressUINotifications", Boolean.TRUE.toString()).build();
        }
        this.mContentResolver.bulkInsert(uri, array);
    }
}
