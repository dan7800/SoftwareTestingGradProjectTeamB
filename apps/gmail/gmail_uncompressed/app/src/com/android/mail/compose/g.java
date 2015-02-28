package com.android.mail.compose;

import android.database.*;
import android.support.v7.app.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.*;
import android.graphics.*;
import android.net.*;
import com.android.b.*;
import android.text.util.*;
import android.content.res.*;
import com.android.emailcommon.mail.*;
import android.view.inputmethod.*;
import java.net.*;
import android.annotation.*;
import java.util.*;
import com.google.common.collect.*;
import java.io.*;
import android.os.*;
import android.support.v4.app.*;
import com.android.ex.chips.*;
import android.widget.*;
import android.text.*;
import com.android.mail.ui.*;
import android.app.*;
import android.content.*;
import android.view.*;
import com.android.mail.providers.*;
import com.google.android.mail.common.html.parser.*;
import com.android.mail.utils.*;

public class g extends android.support.v7.app.g implements LoaderManager$LoaderCallbacks<Cursor>, d, TextWatcher, View$OnClickListener, View$OnFocusChangeListener, TextView$OnEditorActionListener, Z, A, d, x
{
    private static final Random Wp;
    static final String[] avk;
    private static v avl;
    private static final ConcurrentHashMap<Integer, Long> avm;
    private static final Handler avn;
    public static final AtomicInteger avo;
    private static final String avp;
    private static final String avq;
    private static final String mW;
    protected Account Nc;
    private String XI;
    private ScrollView aeO;
    private final Rect aea;
    private TextView avA;
    private n avB;
    protected int avC;
    private boolean avD;
    private QuotedTextView avE;
    protected EditText avF;
    private View avG;
    private TextView avH;
    private View avI;
    protected FromAddressSpinner avJ;
    protected boolean avK;
    private boolean avL;
    private boolean avM;
    private boolean avN;
    private MenuItem avO;
    protected Message avP;
    private long avQ;
    private Message avR;
    private ReplyFromAccount avS;
    private final Object avT;
    private boolean avU;
    private t avV;
    private t avW;
    private t avX;
    private Uri avY;
    private boolean avZ;
    private RecipientEditTextView avr;
    private RecipientEditTextView avs;
    private RecipientEditTextView avt;
    private View avu;
    private CcBccView avv;
    private AttachmentsView avw;
    protected ReplyFromAccount avx;
    private Settings avy;
    private a avz;
    protected Bundle awa;
    private ContentValues awb;
    private int awc;
    private Account[] awd;
    private boolean awe;
    private boolean awf;
    private final View$OnKeyListener awg;
    private final com.google.android.mail.common.html.parser.t awh;
    
    static {
        avk = new String[] { "subject", "body", "to", "cc", "bcc", "quotedText" };
        g.avl = null;
        avm = new ConcurrentHashMap<Integer, Long>(10);
        Wp = new Random(System.currentTimeMillis());
        mW = D.AU();
        avo = new AtomicInteger(0);
        final HandlerThread handlerThread = new HandlerThread("Send Message Task Thread");
        handlerThread.start();
        avn = new Handler(handlerThread.getLooper());
        avp = Environment.getDataDirectory().toString();
        avq = g.avp + g.avp;
    }
    
    public g() {
        this.aea = new Rect();
        this.avC = -1;
        this.avQ = -1L;
        this.avT = new Object();
        this.avU = false;
        this.avZ = false;
        this.awb = null;
        this.awf = false;
        this.awg = (View$OnKeyListener)new h(this);
        this.awh = new i(this);
    }
    
    private int A(final String s, final String s2) {
        if (!TextUtils.isEmpty((CharSequence)s) && !TextUtils.isEmpty((CharSequence)s2)) {
            final int length = s2.length();
            final int length2 = s.length();
            final String bv = this.bv(s);
            final int length3 = bv.length();
            if (length >= length3 && s2.substring(length - length3).equals(bv)) {
                return length - length3;
            }
            if (length >= length2 && s2.substring(length - length2).equals(s)) {
                return length - length2;
            }
        }
        return -1;
    }
    
    public static String[] A(final RecipientEditTextView recipientEditTextView) {
        int i = 0;
        String[] array;
        if (recipientEditTextView == null) {
            array = new String[0];
        }
        else {
            final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize((CharSequence)recipientEditTextView.getText());
            final int length = tokenize.length;
            array = new String[length];
            while (i < length) {
                array[i] = tokenize[i].toString();
                ++i;
            }
        }
        return array;
    }
    
    public static Intent a(final Context context, final Account account, final Uri uri, final boolean b) {
        int n;
        if (b) {
            n = 1;
        }
        else {
            n = 0;
        }
        final Intent intent = new Intent("com.android.mail.intent.action.LAUNCH_COMPOSE");
        intent.setPackage(context.getPackageName());
        intent.putExtra("fromemail", true);
        intent.putExtra("action", n);
        intent.putExtra("account", (Parcelable)account);
        intent.putExtra("in-reference-to-message-uri", (Parcelable)uri);
        return intent;
    }
    
    private static Bundle a(final ContentResolver contentResolver, final Account account, final String s, final w w) {
        final Bundle bundle = new Bundle(w.ams.size());
        for (final Map.Entry<K, Object> entry : w.ams.valueSet()) {
            final Long value = entry.getValue();
            final String s2 = (String)entry.getKey();
            if (value instanceof String) {
                bundle.putString(s2, (String)value);
            }
            else if (value instanceof Boolean) {
                bundle.putBoolean(s2, (boolean)(Boolean)(Object)value);
            }
            else if (value instanceof Integer) {
                bundle.putInt(s2, (int)(Integer)(Object)value);
            }
            else if (value instanceof Long) {
                bundle.putLong(s2, (long)value);
            }
            else {
                E.g(g.mW, "Unexpected object type: %s", value.getClass().getName());
            }
        }
        final Bundle sn = w.sN();
        if (sn != null) {
            bundle.putParcelable("opened_fds", (Parcelable)sn);
        }
        return contentResolver.call(account.uri, s, account.uri.toString(), bundle);
    }
    
    private static Bundle a(final Context context, final List<Attachment> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        final Bundle bundle = new Bundle(list.size());
        final ContentResolver contentResolver = context.getContentResolver();
    Label_0098_Outer:
        for (final Attachment attachment : list) {
            if (attachment != null && !ag.D(attachment.ayP)) {
                while (true) {
                    try {
                        final Object openFileDescriptor = contentResolver.openFileDescriptor(attachment.ayP, "r");
                        if (openFileDescriptor != null) {
                            bundle.putParcelable(attachment.ayP.toString(), (Parcelable)openFileDescriptor);
                            continue Label_0098_Outer;
                        }
                        continue Label_0098_Outer;
                    }
                    catch (FileNotFoundException ex) {
                        E.e(g.mW, ex, "Exception attempting to open attachment", new Object[0]);
                        final Object openFileDescriptor = null;
                        continue;
                    }
                    catch (SecurityException ex2) {
                        E.e(g.mW, ex2, "Security Exception attempting to open attachment", new Object[0]);
                        final Object openFileDescriptor = null;
                        continue;
                    }
                    break;
                }
                break;
            }
        }
        return bundle;
    }
    
    private Message a(final ReplyFromAccount replyFromAccount, final Message message, final int n, final Spanned spanned) {
        int ayX = 1;
        final Message message2 = new Message();
        message2.id = -1L;
        message2.aBd = null;
        message2.uri = null;
        message2.aBe = null;
        message2.ayV = this.avA.getText().toString();
        message2.abh = null;
        message2.bX(bn(this.avr.getText().toString()));
        message2.bY(bn(this.avs.getText().toString()));
        message2.bZ(bn(this.avt.getText().toString()));
        message2.ca(null);
        message2.aBf = 0L;
        final z a = this.a(spanned);
        message2.aBg = this.a(Html.toHtml(a.awJ), a.awK);
        message2.aBh = spanned.toString();
        final String cg = ag.cG(message2.aBg);
        if (message2.aBh != null && message2.aBh.trim().length() > 0 && TextUtils.isEmpty((CharSequence)cg)) {
            final String mw = g.mW;
            final Object[] array = { message2.aBh.length(), null };
            array[ayX] = cg.length();
            E.e(mw, "FAILED HTML CONVERSION: from %d to %d", array);
            com.android.mail.a.a.oq().a("errors", "failed_html_conversion", null, 0L);
            message2.aBg = "<p>" + message2.aBh + "</p>";
        }
        message2.aBi = false;
        Uri uri;
        if (this.avP != null) {
            uri = this.avP.uri;
        }
        else {
            uri = null;
        }
        message2.aBj = uri;
        boolean aBl;
        if (this.avE.sT() != null) {
            aBl = (ayX != 0);
        }
        else {
            aBl = false;
        }
        message2.aBl = aBl;
        final ArrayList<Attachment> sc = this.avw.sc();
        if (sc == null || sc.size() <= 0) {
            ayX = 0;
        }
        message2.ayX = (ayX != 0);
        message2.aBm = null;
        message2.aBo = 0L;
        message2.aBp = false;
        message2.aBr = Attachment.n(sc);
        final CharSequence su = this.avE.sU();
        message2.aBq = -1;
        if (message != null && !TextUtils.isEmpty(su)) {
            if (!TextUtils.isEmpty((CharSequence)message.aBg)) {
                message2.aBq = QuotedTextView.bz(su.toString());
            }
            else if (!TextUtils.isEmpty((CharSequence)message.aBh)) {
                message2.aBq = QuotedTextView.t(su);
            }
        }
        message2.azj = null;
        message2.bW(this.a(replyFromAccount));
        message2.aBk = co(n);
        return message2;
    }
    
    private static ReplyFromAccount a(final Account account, final List<String> list) {
        int n = 0;
        ReplyFromAccount replyFromAccount = null;
        final HashSet<String> set = new HashSet<String>();
        final Iterator<String> iterator = list.iterator();
        while (iterator.hasNext()) {
            final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize((CharSequence)iterator.next());
            for (int length = tokenize.length, i = 0; i < length; ++i) {
                set.add(tokenize[i].getAddress());
            }
        }
        final List<ReplyFromAccount> uk = account.uk();
        ReplyFromAccount e;
        if (uk != null) {
            for (final ReplyFromAccount replyFromAccount2 : uk) {
                ReplyFromAccount replyFromAccount3;
                int n3;
                if (set.contains(replyFromAccount2.address)) {
                    final int n2 = n + 1;
                    replyFromAccount3 = replyFromAccount2;
                    n3 = n2;
                }
                else {
                    n3 = n;
                    replyFromAccount3 = replyFromAccount;
                }
                replyFromAccount = replyFromAccount3;
                n = n3;
            }
            e = replyFromAccount;
        }
        else {
            e = null;
            n = 0;
        }
        if (n > 1) {
            e = e(account);
        }
        return e;
    }
    
    public static String a(final Resources resources, final String s, final int n) {
        String s2;
        if (n == -1) {
            s2 = "";
        }
        else if (n == 2) {
            s2 = resources.getString(2131296393);
        }
        else {
            s2 = resources.getString(2131296392);
        }
        if (TextUtils.isEmpty((CharSequence)s)) {
            return s2;
        }
        if (s.toLowerCase().startsWith(s2.toLowerCase())) {
            return s;
        }
        return String.format(resources.getString(2131296391), s2, s);
    }
    
    private Collection<String> a(final String s, final String[] array, final String[] array2) {
        int i = 0;
        final HashSet<String> set = new HashSet<String>();
        for (final String s2 : array) {
            if (!TextUtils.isEmpty((CharSequence)s2) && !this.br(s2)) {
                set.add(s2);
            }
        }
        if (set.size() == 0) {
            if (array2.length == 1 && this.br(s) && this.br(array2[0])) {
                set.add(array2[0]);
            }
            else {
                while (i < array2.length) {
                    final String s3 = array2[i];
                    if (!this.br(s3)) {
                        set.add(s3);
                    }
                    ++i;
                }
            }
        }
        return set;
    }
    
    private void a(final int n, final boolean b, final ArrayList<String> list) {
        u.b(n, b, list).show(this.getFragmentManager(), "send confirm");
    }
    
    public static void a(final Context context, final Account account, final Uri uri) {
        final Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setPackage(context.getPackageName());
        intent.putExtra("fromemail", true);
        intent.putExtra("account", (Parcelable)account);
        if (uri != null) {
            intent.setData(ag.C(uri));
        }
        context.startActivity(intent);
    }
    
    public static void a(final Context context, final Account account, final Message message) {
        a(context, account, message, 3, null, null, null, null);
    }
    
    private static void a(final Context context, final Account account, final Message message, final int n, final String s, final String s2, final String s3, final ContentValues contentValues) {
        final Intent intent = new Intent("com.android.mail.intent.action.LAUNCH_COMPOSE");
        intent.setPackage(context.getPackageName());
        intent.putExtra("fromemail", true);
        intent.putExtra("action", n);
        intent.putExtra("account", (Parcelable)account);
        if (n == 3) {
            intent.putExtra("original-draft-message", (Parcelable)message);
        }
        else {
            intent.putExtra("in-reference-to-message", (Parcelable)message);
        }
        if (s != null) {
            intent.putExtra("to", s);
        }
        if (s2 != null) {
            intent.putExtra("body", s2);
        }
        if (s3 != null) {
            intent.putExtra("subject", s3);
        }
        if (contentValues != null) {
            E.c(g.mW, "Launching with extraValues: %s", contentValues.toString());
            intent.putExtra("extra-values", (Parcelable)contentValues);
        }
        if (n == -1) {
            intent.setFlags(134742016);
        }
        else if (message != null) {
            intent.setData(ag.C(message.uri));
        }
        context.startActivity(intent);
    }
    
    public static void a(final Context context, final Account account, final Message message, final String s) {
        a(context, account, message, 2, "android-gmail-readability@google.com", s, null, null);
    }
    
    public static void a(final Context context, final Account account, final String s) {
        a(context, account, null, -1, s, null, null, null);
    }
    
    public static void a(final Context context, final Account account, final String s, final ContentValues contentValues) {
        a(context, account, null, -1, null, null, s, contentValues);
    }
    
    private static void a(final SpannableString spannableString, final Class<?> clazz) {
        int i = 0;
        for (Object[] spans = spannableString.getSpans(0, spannableString.length(), (Class)clazz); i < spans.length; ++i) {
            spannableString.removeSpan(spans[i]);
        }
    }
    
    private static void a(final w w) {
        final Bundle sn = w.sN();
        if (sn != null) {
            final Iterator iterator = sn.keySet().iterator();
            while (iterator.hasNext()) {
                final ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor)sn.getParcelable((String)iterator.next());
                if (parcelFileDescriptor != null) {
                    try {
                        parcelFileDescriptor.close();
                    }
                    catch (IOException ex) {}
                }
            }
        }
    }
    
    private void a(final Message message, final int n) {
        boolean b = true;
        if (this.avP != null && (n == 0 || n == (b ? 1 : 0) || n == 2)) {
            final QuotedTextView avE = this.avE;
            if (n == 2) {
                b = false;
            }
            avE.a(n, message, b);
        }
    }
    
    private static void a(final Collection<String> collection, final RecipientEditTextView recipientEditTextView) {
        for (final String s : collection) {
            if (s != null && recipientEditTextView != null) {
                final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize((CharSequence)s);
                for (int length = tokenize.length, i = 0; i < length; ++i) {
                    recipientEditTextView.append((CharSequence)(tokenize[i] + ", "));
                }
            }
        }
    }
    
    private void a(final Collection<String> collection, final Collection<String> collection2) {
        final List<Rfc822Token[]> m = m(collection);
        List<Rfc822Token[]> i;
        if (collection2 != null) {
            i = m(collection2);
        }
        else {
            i = null;
        }
        final RecipientEditTextView avs = this.avs;
        if (i == null) {
            for (final Rfc822Token[] array : m) {
                for (int length = array.length, j = 0; j < length; ++j) {
                    avs.append((CharSequence)(array[j].toString() + ", "));
                }
            }
        }
        else {
            final HashSet<String> o = o(i);
            for (final Rfc822Token[] array2 : m) {
                for (final Rfc822Token rfc822Token : array2) {
                    final String string = rfc822Token.toString();
                    if (!o.contains(rfc822Token.getAddress())) {
                        avs.append((CharSequence)(string + ", "));
                    }
                }
            }
        }
    }
    
    private void a(final Set<String> set, final String[] array) {
        for (final String s : array) {
            if (!this.br(Address.ah(s).getAddress())) {
                set.add(s.replace("\"\"", ""));
            }
        }
    }
    
    private void aQ(final boolean b) {
        if (!com.android.mail.a.a.or() || this.avw == null) {
            return;
        }
        String s;
        if (b) {
            s = "message_save";
        }
        else {
            s = "message_send";
        }
        final int size = this.avw.sc().size();
        final String cp = cp(this.avC);
        String string;
        long n;
        if (this.avC == -1) {
            string = Integer.toString(size);
            n = size;
        }
        else {
            n = 0L;
            string = null;
        }
        com.android.mail.a.a.oq().a(s, cp, string, n);
    }
    
    private void aR(final boolean enabled) {
        if (this.avO != null) {
            this.avO.setEnabled(enabled);
        }
    }
    
    private static SpannableString b(final Spanned spanned) {
        final SpannableString spannableString = new SpannableString((CharSequence)spanned);
        BaseInputConnection.removeComposingSpans((Spannable)spannableString);
        a(spannableString, SpanWatcher.class);
        a(spannableString, TextWatcher.class);
        return spannableString;
    }
    
    public static void b(final Context context, final Account account) {
        a(context, account, null, -1, null, null, null, null);
    }
    
    public static void b(final Context context, final Account account, final Message message) {
        a(context, account, message, 0, null, null, null, null);
    }
    
    private static void b(final List<String> list, final String s) {
        if (list == null) {
            throw new IllegalArgumentException("recipientList cannot be null");
        }
        if (!TextUtils.isEmpty((CharSequence)s)) {
            final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize((CharSequence)s);
            for (int length = tokenize.length, i = 0; i < length; ++i) {
                list.add(tokenize[i].getAddress());
            }
        }
    }
    
    private void b(final String[] array, final List<String> list) {
        if (this.avz != null) {
            for (final String s : array) {
                if (!this.avz.isValid(s)) {
                    list.add(s);
                }
            }
        }
    }
    
    private static String bn(String substring) {
        if (!TextUtils.isEmpty((CharSequence)substring) && substring.charAt(-1 + substring.length()) == ',') {
            substring = substring.substring(0, -1 + substring.length());
        }
        return substring;
    }
    
    private static String bo(final String s) {
        try {
            return URLDecoder.decode(s.replace("+", "%2B"), "UTF-8");
        }
        catch (IllegalArgumentException ex) {
            if (E.isLoggable(g.mW, 2)) {
                E.f(g.mW, "%s while decoding '%s'", ex.getMessage(), s);
            }
            else {
                E.e(g.mW, ex, "Exception  while decoding mailto address", new Object[0]);
            }
            return null;
        }
    }
    
    private static String bp(final String s) {
        try {
            return URLDecoder.decode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException ex) {
            E.f(g.mW, "%s while decoding '%s'", ex.getMessage(), s);
            return "";
        }
        catch (IllegalArgumentException ex2) {
            E.f(g.mW, "Given string is not url encoded: '%s'", s);
            return s;
        }
    }
    
    private void bq(final String text) {
        final Toast text2 = Toast.makeText((Context)this, (CharSequence)text, 1);
        text2.setText((CharSequence)text);
        text2.setGravity(1, 0, this.getResources().getDimensionPixelSize(2131493027));
        text2.show();
    }
    
    private boolean br(final String s) {
        return ReplyFromAccount.a(this.Nc, s, this.Nc.uk());
    }
    
    private void bs(final String s) {
        r.bw(s).show(this.getFragmentManager(), "recipient error");
    }
    
    @SuppressLint({ "NewApi" })
    private void bt(final String type) {
        final Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.addFlags(524288);
        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        intent.setType(type);
        this.avK = true;
        this.startActivityForResult(Intent.createChooser(intent, this.getText(2131296398)), 1);
    }
    
    private String bv(String s) {
        final String string = this.getResources().getString(2131296409);
        if (s == null) {
            s = "";
        }
        return String.format(string, s);
    }
    
    public static void c(final Context context, final Account account, final Message message) {
        a(context, account, message, 1, null, null, null, null);
    }
    
    private boolean c(final Intent p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: invokevirtual   android/content/Intent.getData:()Landroid/net/Uri;
        //     4: astore_2       
        //     5: aload_2        
        //     6: ifnull          231
        //     9: ldc_w           "mailto"
        //    12: aload_2        
        //    13: invokevirtual   android/net/Uri.getScheme:()Ljava/lang/String;
        //    16: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    19: ifeq            544
        //    22: aload_2        
        //    23: invokevirtual   android/net/Uri.toString:()Ljava/lang/String;
        //    26: astore          17
        //    28: aload           17
        //    30: ldc_w           "?"
        //    33: invokevirtual   java/lang/String.indexOf:(Ljava/lang/String;)I
        //    36: istore          18
        //    38: iload           18
        //    40: iconst_m1      
        //    41: if_icmpne       396
        //    44: aload           17
        //    46: bipush          7
        //    48: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //    51: invokestatic    com/android/mail/compose/g.bo:(Ljava/lang/String;)Ljava/lang/String;
        //    54: astore          32
        //    56: aload           17
        //    58: astore          20
        //    60: aload           32
        //    62: astore          31
        //    64: aload           31
        //    66: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //    69: ifne            87
        //    72: aload_0        
        //    73: aload           31
        //    75: ldc_w           ","
        //    78: invokestatic    android/text/TextUtils.split:(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
        //    81: invokestatic    java/util/Arrays.asList:([Ljava/lang/Object;)Ljava/util/List;
        //    84: invokespecial   com/android/mail/compose/g.k:(Ljava/util/Collection;)V
        //    87: new             Ljava/lang/StringBuilder;
        //    90: dup            
        //    91: ldc_w           "foo://"
        //    94: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    97: aload           20
        //    99: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   102: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   105: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   108: astore          23
        //   110: aload_0        
        //   111: aload           23
        //   113: ldc             "cc"
        //   115: invokevirtual   android/net/Uri.getQueryParameters:(Ljava/lang/String;)Ljava/util/List;
        //   118: invokestatic    com/android/mail/compose/g.l:(Ljava/util/List;)Ljava/util/List;
        //   121: aconst_null    
        //   122: invokespecial   com/android/mail/compose/g.a:(Ljava/util/Collection;Ljava/util/Collection;)V
        //   125: aload_0        
        //   126: aload           23
        //   128: ldc             "to"
        //   130: invokevirtual   android/net/Uri.getQueryParameters:(Ljava/lang/String;)Ljava/util/List;
        //   133: invokestatic    com/android/mail/compose/g.l:(Ljava/util/List;)Ljava/util/List;
        //   136: invokespecial   com/android/mail/compose/g.k:(Ljava/util/Collection;)V
        //   139: aload_0        
        //   140: aload           23
        //   142: ldc             "bcc"
        //   144: invokevirtual   android/net/Uri.getQueryParameters:(Ljava/lang/String;)Ljava/util/List;
        //   147: invokestatic    com/android/mail/compose/g.l:(Ljava/util/List;)Ljava/util/List;
        //   150: invokespecial   com/android/mail/compose/g.l:(Ljava/util/Collection;)V
        //   153: aload           23
        //   155: ldc             "subject"
        //   157: invokevirtual   android/net/Uri.getQueryParameters:(Ljava/lang/String;)Ljava/util/List;
        //   160: astore          24
        //   162: aload           24
        //   164: invokeinterface java/util/List.size:()I
        //   169: ifle            193
        //   172: aload_0        
        //   173: getfield        com/android/mail/compose/g.avA:Landroid/widget/TextView;
        //   176: aload           24
        //   178: iconst_0       
        //   179: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   184: checkcast       Ljava/lang/String;
        //   187: invokestatic    com/android/mail/compose/g.bp:(Ljava/lang/String;)Ljava/lang/String;
        //   190: invokevirtual   android/widget/TextView.setText:(Ljava/lang/CharSequence;)V
        //   193: aload           23
        //   195: ldc             "body"
        //   197: invokevirtual   android/net/Uri.getQueryParameters:(Ljava/lang/String;)Ljava/util/List;
        //   200: astore          25
        //   202: aload           25
        //   204: invokeinterface java/util/List.size:()I
        //   209: ifle            231
        //   212: aload_0        
        //   213: aload           25
        //   215: iconst_0       
        //   216: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   221: checkcast       Ljava/lang/String;
        //   224: invokestatic    com/android/mail/compose/g.bp:(Ljava/lang/String;)Ljava/lang/String;
        //   227: iconst_1       
        //   228: invokevirtual   com/android/mail/compose/g.b:(Ljava/lang/CharSequence;Z)V
        //   231: aload_1        
        //   232: ldc_w           "android.intent.extra.EMAIL"
        //   235: invokevirtual   android/content/Intent.getStringArrayExtra:(Ljava/lang/String;)[Ljava/lang/String;
        //   238: astore_3       
        //   239: aload_3        
        //   240: ifnull          251
        //   243: aload_0        
        //   244: aload_3        
        //   245: invokestatic    java/util/Arrays.asList:([Ljava/lang/Object;)Ljava/util/List;
        //   248: invokespecial   com/android/mail/compose/g.k:(Ljava/util/Collection;)V
        //   251: aload_1        
        //   252: ldc_w           "android.intent.extra.CC"
        //   255: invokevirtual   android/content/Intent.getStringArrayExtra:(Ljava/lang/String;)[Ljava/lang/String;
        //   258: astore          4
        //   260: aload           4
        //   262: ifnull          275
        //   265: aload_0        
        //   266: aload           4
        //   268: invokestatic    java/util/Arrays.asList:([Ljava/lang/Object;)Ljava/util/List;
        //   271: aconst_null    
        //   272: invokespecial   com/android/mail/compose/g.a:(Ljava/util/Collection;Ljava/util/Collection;)V
        //   275: aload_1        
        //   276: ldc_w           "android.intent.extra.BCC"
        //   279: invokevirtual   android/content/Intent.getStringArrayExtra:(Ljava/lang/String;)[Ljava/lang/String;
        //   282: astore          5
        //   284: aload           5
        //   286: ifnull          298
        //   289: aload_0        
        //   290: aload           5
        //   292: invokestatic    java/util/Arrays.asList:([Ljava/lang/Object;)Ljava/util/List;
        //   295: invokespecial   com/android/mail/compose/g.l:(Ljava/util/Collection;)V
        //   298: aload_1        
        //   299: ldc_w           "android.intent.extra.SUBJECT"
        //   302: invokevirtual   android/content/Intent.getStringExtra:(Ljava/lang/String;)Ljava/lang/String;
        //   305: astore          6
        //   307: aload           6
        //   309: ifnull          321
        //   312: aload_0        
        //   313: getfield        com/android/mail/compose/g.avA:Landroid/widget/TextView;
        //   316: aload           6
        //   318: invokevirtual   android/widget/TextView.setText:(Ljava/lang/CharSequence;)V
        //   321: getstatic       com/android/mail/compose/g.avk:[Ljava/lang/String;
        //   324: astore          7
        //   326: aload           7
        //   328: arraylength    
        //   329: istore          8
        //   331: iconst_0       
        //   332: istore          9
        //   334: iload           9
        //   336: iload           8
        //   338: if_icmpge       716
        //   341: aload           7
        //   343: iload           9
        //   345: aaload         
        //   346: astore          14
        //   348: aload_1        
        //   349: aload           14
        //   351: invokevirtual   android/content/Intent.hasExtra:(Ljava/lang/String;)Z
        //   354: ifeq            390
        //   357: aload_1        
        //   358: aload           14
        //   360: invokevirtual   android/content/Intent.getStringExtra:(Ljava/lang/String;)Ljava/lang/String;
        //   363: astore          15
        //   365: ldc             "to"
        //   367: aload           14
        //   369: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   372: ifeq            597
        //   375: aload_0        
        //   376: aload           15
        //   378: ldc_w           ","
        //   381: invokestatic    android/text/TextUtils.split:(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
        //   384: invokestatic    java/util/Arrays.asList:([Ljava/lang/Object;)Ljava/util/List;
        //   387: invokespecial   com/android/mail/compose/g.k:(Ljava/util/Collection;)V
        //   390: iinc            9, 1
        //   393: goto            334
        //   396: aload           17
        //   398: bipush          7
        //   400: iload           18
        //   402: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //   405: invokestatic    com/android/mail/compose/g.bo:(Ljava/lang/String;)Ljava/lang/String;
        //   408: astore          29
        //   410: new             Ljava/lang/StringBuilder;
        //   413: dup            
        //   414: invokespecial   java/lang/StringBuilder.<init>:()V
        //   417: aload           29
        //   419: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   422: ldc_w           "?"
        //   425: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   428: aload           17
        //   430: iload           18
        //   432: iconst_1       
        //   433: iadd           
        //   434: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //   437: ldc_w           "%"
        //   440: ldc_w           "%25"
        //   443: invokevirtual   java/lang/String.replace:(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
        //   446: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   449: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   452: astore          30
        //   454: aload           30
        //   456: astore          20
        //   458: aload           29
        //   460: astore          31
        //   462: goto            64
        //   465: astore          19
        //   467: aload           17
        //   469: astore          20
        //   471: aload           19
        //   473: astore          21
        //   475: getstatic       com/android/mail/compose/g.mW:Ljava/lang/String;
        //   478: iconst_2       
        //   479: invokestatic    com/android/mail/utils/E.isLoggable:(Ljava/lang/String;I)Z
        //   482: ifeq            525
        //   485: getstatic       com/android/mail/compose/g.mW:Ljava/lang/String;
        //   488: astore          26
        //   490: iconst_2       
        //   491: anewarray       Ljava/lang/Object;
        //   494: astore          27
        //   496: aload           27
        //   498: iconst_0       
        //   499: aload           21
        //   501: invokevirtual   java/io/UnsupportedEncodingException.getMessage:()Ljava/lang/String;
        //   504: aastore        
        //   505: aload           27
        //   507: iconst_1       
        //   508: aload           20
        //   510: aastore        
        //   511: aload           26
        //   513: ldc_w           "%s while decoding '%s'"
        //   516: aload           27
        //   518: invokestatic    com/android/mail/utils/E.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   521: pop            
        //   522: goto            87
        //   525: getstatic       com/android/mail/compose/g.mW:Ljava/lang/String;
        //   528: aload           21
        //   530: ldc_w           "Exception  while decoding mailto address"
        //   533: iconst_0       
        //   534: anewarray       Ljava/lang/Object;
        //   537: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   540: pop            
        //   541: goto            87
        //   544: aload_0        
        //   545: getfield        com/android/mail/compose/g.Nc:Lcom/android/mail/providers/Account;
        //   548: getfield        com/android/mail/providers/Account.ayt:Landroid/net/Uri;
        //   551: aload_2        
        //   552: invokevirtual   android/net/Uri.equals:(Ljava/lang/Object;)Z
        //   555: ifne            231
        //   558: aload_2        
        //   559: invokevirtual   android/net/Uri.getSchemeSpecificPart:()Ljava/lang/String;
        //   562: astore          16
        //   564: aload           16
        //   566: ifnull          231
        //   569: aload_0        
        //   570: getfield        com/android/mail/compose/g.avr:Lcom/android/ex/chips/RecipientEditTextView;
        //   573: ldc_w           ""
        //   576: invokevirtual   com/android/ex/chips/RecipientEditTextView.setText:(Ljava/lang/CharSequence;)V
        //   579: aload_0        
        //   580: aload           16
        //   582: ldc_w           ","
        //   585: invokestatic    android/text/TextUtils.split:(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
        //   588: invokestatic    java/util/Arrays.asList:([Ljava/lang/Object;)Ljava/util/List;
        //   591: invokespecial   com/android/mail/compose/g.k:(Ljava/util/Collection;)V
        //   594: goto            231
        //   597: ldc             "cc"
        //   599: aload           14
        //   601: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   604: ifeq            626
        //   607: aload_0        
        //   608: aload           15
        //   610: ldc_w           ","
        //   613: invokestatic    android/text/TextUtils.split:(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
        //   616: invokestatic    java/util/Arrays.asList:([Ljava/lang/Object;)Ljava/util/List;
        //   619: aconst_null    
        //   620: invokespecial   com/android/mail/compose/g.a:(Ljava/util/Collection;Ljava/util/Collection;)V
        //   623: goto            390
        //   626: ldc             "bcc"
        //   628: aload           14
        //   630: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   633: ifeq            654
        //   636: aload_0        
        //   637: aload           15
        //   639: ldc_w           ","
        //   642: invokestatic    android/text/TextUtils.split:(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
        //   645: invokestatic    java/util/Arrays.asList:([Ljava/lang/Object;)Ljava/util/List;
        //   648: invokespecial   com/android/mail/compose/g.l:(Ljava/util/Collection;)V
        //   651: goto            390
        //   654: ldc             "subject"
        //   656: aload           14
        //   658: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   661: ifeq            676
        //   664: aload_0        
        //   665: getfield        com/android/mail/compose/g.avA:Landroid/widget/TextView;
        //   668: aload           15
        //   670: invokevirtual   android/widget/TextView.setText:(Ljava/lang/CharSequence;)V
        //   673: goto            390
        //   676: ldc             "body"
        //   678: aload           14
        //   680: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   683: ifeq            696
        //   686: aload_0        
        //   687: aload           15
        //   689: iconst_1       
        //   690: invokevirtual   com/android/mail/compose/g.b:(Ljava/lang/CharSequence;Z)V
        //   693: goto            390
        //   696: ldc             "quotedText"
        //   698: aload           14
        //   700: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   703: ifeq            390
        //   706: aload_0        
        //   707: aload           15
        //   709: iconst_1       
        //   710: invokevirtual   com/android/mail/compose/g.a:(Ljava/lang/CharSequence;Z)V
        //   713: goto            390
        //   716: aload_1        
        //   717: invokevirtual   android/content/Intent.getExtras:()Landroid/os/Bundle;
        //   720: astore          10
        //   722: aload           10
        //   724: ifnull          751
        //   727: aload           10
        //   729: ldc_w           "android.intent.extra.TEXT"
        //   732: invokevirtual   android/os/Bundle.containsKey:(Ljava/lang/String;)Z
        //   735: ifeq            751
        //   738: aload_0        
        //   739: aload           10
        //   741: ldc_w           "android.intent.extra.TEXT"
        //   744: invokevirtual   android/os/Bundle.getCharSequence:(Ljava/lang/String;)Ljava/lang/CharSequence;
        //   747: iconst_1       
        //   748: invokevirtual   com/android/mail/compose/g.b:(Ljava/lang/CharSequence;Z)V
        //   751: aload_0        
        //   752: aload_1        
        //   753: ldc_w           "extra-values"
        //   756: invokevirtual   android/content/Intent.getParcelableExtra:(Ljava/lang/String;)Landroid/os/Parcelable;
        //   759: checkcast       Landroid/content/ContentValues;
        //   762: putfield        com/android/mail/compose/g.awb:Landroid/content/ContentValues;
        //   765: aload_0        
        //   766: getfield        com/android/mail/compose/g.awb:Landroid/content/ContentValues;
        //   769: ifnull          815
        //   772: getstatic       com/android/mail/compose/g.mW:Ljava/lang/String;
        //   775: astore          11
        //   777: iconst_1       
        //   778: anewarray       Ljava/lang/Object;
        //   781: astore          12
        //   783: aload           12
        //   785: iconst_0       
        //   786: aload_0        
        //   787: getfield        com/android/mail/compose/g.awb:Landroid/content/ContentValues;
        //   790: invokevirtual   android/content/ContentValues.toString:()Ljava/lang/String;
        //   793: aastore        
        //   794: aload           11
        //   796: ldc_w           "Launched with extra values: %s"
        //   799: aload           12
        //   801: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   804: pop            
        //   805: aload_0        
        //   806: aload_0        
        //   807: getfield        com/android/mail/compose/g.awb:Landroid/content/ContentValues;
        //   810: invokevirtual   com/android/mail/compose/g.c:(Landroid/content/ContentValues;)V
        //   813: iconst_1       
        //   814: ireturn        
        //   815: iconst_0       
        //   816: ireturn        
        //   817: astore          21
        //   819: goto            475
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                  
        //  -----  -----  -----  -----  --------------------------------------
        //  44     56     465    475    Ljava/io/UnsupportedEncodingException;
        //  64     87     817    822    Ljava/io/UnsupportedEncodingException;
        //  396    454    465    475    Ljava/io/UnsupportedEncodingException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0064:
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
    
    private void cm(final int n) {
        this.avA.setText((CharSequence)a(this.getResources(), this.avP.ayV, n));
        if (n == 2) {
            this.avD = true;
        }
        final Message avP = this.avP;
        if (n != 2) {
            final String[] vv = avP.vv();
            final String[] vt = avP.vt();
            String s;
            if (vt.length > 0) {
                s = vt[0];
            }
            else {
                s = null;
            }
            final String[] vb = avP.vB();
            final int length = vb.length;
            int i = 0;
            boolean b = false;
            while (i < length) {
                if (!TextUtils.isEmpty((CharSequence)vb[i])) {
                    b = true;
                }
                ++i;
            }
            String[] array;
            if (b) {
                array = vb;
            }
            else {
                array = new String[] { s };
            }
            if (n == 0) {
                this.k(this.a(s, array, vv));
            }
            else if (n == 1) {
                final HashSet<String> set = new HashSet<String>();
                final Collection<String> a = this.a(s, array, vv);
                this.k(a);
                this.a(set, vv);
                this.a(set, avP.vx());
                this.a(set, a);
            }
        }
        this.a(this.avP, n);
        if (n == 2 || this.avL) {
            this.m(this.avP.vC());
        }
    }
    
    private void cn(final int n) {
        this.bq(this.getString(n, new Object[] { b.E(this.getApplicationContext(), this.Nc.ayw.vJ()) }));
    }
    
    private static int co(final int n) {
        switch (n) {
            default: {
                return -1;
            }
            case -1: {
                return 1;
            }
            case 0: {
                return 2;
            }
            case 1: {
                return 3;
            }
            case 2: {
                return 4;
            }
        }
    }
    
    private static String cp(final int n) {
        switch (n) {
            default: {
                return "unknown";
            }
            case -1: {
                return "new_message";
            }
            case 0: {
                return "reply";
            }
            case 1: {
                return "reply_all";
            }
            case 2: {
                return "forward";
            }
        }
    }
    
    public static void d(final Context context, final Account account, final Message message) {
        a(context, account, message, 2, null, null, null, null);
    }
    
    private static ReplyFromAccount e(final Account account) {
        for (final ReplyFromAccount replyFromAccount : account.uk()) {
            if (replyFromAccount.isDefault) {
                return replyFromAccount;
            }
        }
        return new ReplyFromAccount(account, account.uri, account.lw(), account.ik(), account.lw(), true, false);
    }
    
    private void e(final Attachment attachment) {
        try {
            if (this.avw.a(this.Nc, attachment) > 0L) {
                this.avL = true;
                this.sy();
            }
        }
        catch (AttachmentsView$AttachmentFailureException ex) {
            E.e(g.mW, ex, "Error adding attachment", new Object[0]);
            this.cn(ex.si());
        }
    }
    
    private void e(final Message avR) {
        CharSequence substring;
        while (true) {
            substring = null;
            E.c(g.mW, "Initializing draft from previous draft message: %s", avR);
            while (true) {
                synchronized (this.avT) {
                    if (this.avQ == -1L) {
                        this.avQ = avR.id;
                    }
                    else {
                        avR.id = this.avQ;
                    }
                    this.avR = avR;
                    // monitorexit(this.avT)
                    this.avA.setText((CharSequence)avR.ayV);
                    if (avR.aBk == 4) {
                        final boolean avD = true;
                        this.avD = avD;
                        final List<String> list = Arrays.asList(avR.vv());
                        this.k(list);
                        this.a(Arrays.asList(avR.vx()), list);
                        this.l((Collection<String>)Arrays.asList(avR.vz()));
                        if (avR.ayX) {
                            final Iterator<Attachment> iterator = avR.vC().iterator();
                            while (iterator.hasNext()) {
                                this.e(iterator.next());
                            }
                            break;
                        }
                        break;
                    }
                }
                final boolean avD = false;
                continue;
            }
        }
        if (this.awa != null && this.awa.getBoolean("extraSkipParsingBody")) {
            E.d(g.mW, "Skipping manually populating body and quoted text from draft.", new Object[0]);
        }
        else {
            int aBq;
            if (avR.aBl) {
                aBq = avR.aBq;
            }
            else {
                aBq = -1;
            }
            CharSequence subSequence;
            int n;
            if (!TextUtils.isEmpty((CharSequence)avR.aBg)) {
                final String aBg = avR.aBg;
                String substring2;
                if (aBq >= 0) {
                    final int t = QuotedTextView.t(avR.aBg);
                    if (t >= 0) {
                        substring2 = avR.aBg.substring(0, t);
                        subSequence = avR.aBg.subSequence(t, avR.aBg.length());
                        n = t;
                    }
                    else {
                        substring2 = aBg;
                        n = t;
                        subSequence = null;
                    }
                }
                else {
                    n = aBq;
                    substring2 = aBg;
                    subSequence = null;
                }
                new q(this, (byte)0).execute((Object[])new String[] { substring2 });
            }
            else {
                final String aBh = avR.aBh;
                int n2;
                String substring3;
                if (TextUtils.isEmpty((CharSequence)aBh)) {
                    n2 = aBq;
                    substring3 = "";
                }
                else {
                    if (aBq > aBh.length()) {
                        E.g(g.mW, "quotedTextIndex (%d) > body.length() (%d)", -1, aBh.length());
                        n2 = -1;
                    }
                    else {
                        n2 = aBq;
                    }
                    if (n2 >= 0) {
                        substring3 = aBh.substring(0, n2);
                    }
                    else {
                        substring3 = aBh;
                    }
                    substring = null;
                    if (n2 >= 0) {
                        substring = aBh.substring(n2);
                    }
                }
                this.b(substring3, false);
                subSequence = substring;
                n = n2;
            }
            if (n >= 0 && subSequence != null) {
                this.avE.c(subSequence, this.avD);
            }
        }
    }
    
    private void g(final Account account) {
        final dF sf = this.sF();
        if (sf != null) {
            sf.p(account);
            return;
        }
        this.findViewById(2131558978).setVisibility(0);
        final dF a = dF.a(account, false);
        final FragmentTransaction beginTransaction = this.getFragmentManager().beginTransaction();
        beginTransaction.setTransition(4097);
        beginTransaction.replace(2131558978, (Fragment)a, "wait-fragment");
        beginTransaction.commitAllowingStateLoss();
    }
    
    private int getMode() {
        int selectedNavigationIndex = -1;
        final android.support.v7.app.a cf = this.cF();
        if (cf != null && cf.getNavigationMode() == 1) {
            selectedNavigationIndex = cf.getSelectedNavigationIndex();
        }
        return selectedNavigationIndex;
    }
    
    private static ArrayList<String> k(final String[] array) {
        final ArrayList<String> fm = Lists.fm(array.length);
        for (int i = 0; i < array.length; ++i) {
            fm.add(Rfc822Tokenizer.tokenize((CharSequence)array[i])[0].getAddress());
        }
        return fm;
    }
    
    private void k(final Collection<String> collection) {
        a(collection, this.avr);
    }
    
    private static boolean k(final Bundle bundle) {
        return bundle != null && bundle.containsKey("extraMessage");
    }
    
    private static List<String> l(final List<String> list) {
        final ArrayList<String> list2 = new ArrayList<String>();
        for (final String s : list) {
            try {
                final String bo = bo(s);
                if (bo == null) {
                    continue;
                }
                list2.add(bo);
            }
            catch (UnsupportedEncodingException ex) {
                if (E.isLoggable(g.mW, 2)) {
                    E.f(g.mW, "%s while decoding '%s'", ex.getMessage(), s);
                }
                else {
                    E.e(g.mW, ex, "Exception  while decoding mailto address", new Object[0]);
                }
            }
        }
        return list2;
    }
    
    private void l(final Collection<String> collection) {
        a(collection, this.avt);
    }
    
    private long m(final List<Attachment> list) {
        long n = 0L;
        final Iterator<Attachment> iterator = list.iterator();
        AttachmentsView$AttachmentFailureException ex = null;
        while (iterator.hasNext()) {
            final Attachment attachment = iterator.next();
            try {
                n += this.avw.a(this.Nc, attachment);
            }
            catch (AttachmentsView$AttachmentFailureException ex2) {
                ex = ex2;
            }
        }
        if (ex != null) {
            E.e(g.mW, ex, "Error adding attachment", new Object[0]);
            if (list.size() <= 1) {
                this.cn(ex.si());
                return n;
            }
            this.cn(2131296400);
        }
        return n;
    }
    
    private static List<Rfc822Token[]> m(final Collection<String> collection) {
        final ArrayList<Rfc822Token[]> list = new ArrayList<Rfc822Token[]>();
        final Iterator<String> iterator = collection.iterator();
        while (iterator.hasNext()) {
            list.add(Rfc822Tokenizer.tokenize((CharSequence)iterator.next()));
        }
        return list;
    }
    
    private long n(final List<Uri> list) {
        final ArrayList<Attachment> list2 = new ArrayList<Attachment>();
        for (final Uri uri : list) {
            if (uri != null) {
                try {
                    if ("file".equals(uri.getScheme()) && new File(uri.getPath()).getCanonicalPath().startsWith(g.avp) && this.getCallingPackage() == null) {
                        this.bq(this.getString(2131296403));
                        continue;
                    }
                    goto Label_0237;
                }
                catch (AttachmentsView$AttachmentFailureException ex) {
                    E.e(g.mW, ex, "Error adding attachment", new Object[0]);
                    this.cn(ex.si());
                    continue;
                }
                catch (IOException ex2) {}
                catch (SecurityException ex3) {
                    goto Label_0189;
                }
                break;
            }
        }
        return this.m(list2);
    }
    
    private static HashSet<String> o(final List<Rfc822Token[]> list) {
        final HashSet<String> set = new HashSet<String>();
        for (final Rfc822Token[] array : list) {
            for (int length = array.length, i = 0; i < length; ++i) {
                set.add(array[i].getAddress());
            }
        }
        return set;
    }
    
    private void p(final Uri uri) {
        if (uri == null) {
            return;
        }
        try {
            this.e(this.avw.o(uri));
        }
        catch (AttachmentsView$AttachmentFailureException ex) {
            E.e(g.mW, ex, "Error adding attachment", new Object[0]);
            this.bq(this.getResources().getString(ex.si(), new Object[] { b.E(this.getApplicationContext(), this.Nc.ayw.vJ()) }));
        }
    }
    
    private boolean sA() {
        if (this.avA == null || this.avF == null || this.avr == null || this.avs == null || this.avw == null) {
            E.e(g.mW, "null views in isBlank check", new Object[0]);
        }
        else if (this.avA.getText().length() != 0 || (this.avF.getText().length() != 0 && this.A(this.XI, this.avF.getText().toString()) != 0) || this.avr.length() != 0 || this.avs.length() != 0 || this.avt.length() != 0 || this.avw.sc().size() != 0) {
            return false;
        }
        return true;
    }
    
    private void sB() {
        this.avM = false;
        this.avL = false;
        this.avN = false;
    }
    
    private void sC() {
        String abn;
        if (this.avy != null) {
            abn = this.avy.aBN;
        }
        else {
            abn = null;
        }
        final int a = this.A(this.XI, this.avF.getText().toString());
        if (!TextUtils.equals((CharSequence)abn, (CharSequence)this.XI) || a < 0) {
            this.XI = abn;
            if (!TextUtils.isEmpty((CharSequence)this.XI)) {
                this.avF.removeTextChangedListener((TextWatcher)this);
                this.avF.append((CharSequence)this.bv(this.XI));
                this.avF.addTextChangedListener((TextWatcher)this);
            }
            this.sp();
        }
    }
    
    private void sE() {
        synchronized (this.avT) {
            if (this.avQ != -1L) {
                final ContentValues contentValues = new ContentValues();
                contentValues.put("_id", this.avQ);
                if (!this.Nc.aym.equals((Object)Uri.EMPTY)) {
                    this.getContentResolver().update(this.Nc.aym, contentValues, (String)null, (String[])null);
                }
                else {
                    this.getContentResolver().delete(this.avR.uri, (String)null, (String[])null);
                }
                this.avQ = -1L;
            }
            // monitorexit(this.avT)
            Toast.makeText((Context)this, 2131296408, 0).show();
            this.sB();
            this.awf = true;
            this.finish();
        }
    }
    
    private dF sF() {
        return (dF)this.getFragmentManager().findFragmentByTag("wait-fragment");
    }
    
    private void sn() {
        final Bundle awa = this.awa;
        (this.aeO = (ScrollView)this.findViewById(2131558671)).setVisibility(0);
        this.avu = this.findViewById(2131558693);
        if (this.avu != null) {
            this.avu.setOnClickListener((View$OnClickListener)this);
        }
        this.avv = (CcBccView)this.findViewById(2131558695);
        this.avw = (AttachmentsView)this.findViewById(2131558673);
        (this.avr = (RecipientEditTextView)this.findViewById(2131558692)).setOnKeyListener(this.awg);
        y(this.avr);
        this.avr.ao(this.findViewById(2131558694));
        (this.avs = (RecipientEditTextView)this.findViewById(2131558661)).setOnKeyListener(this.awg);
        y(this.avs);
        (this.avt = (RecipientEditTextView)this.findViewById(2131558664)).setOnKeyListener(this.awg);
        y(this.avt);
        (this.avA = (TextView)this.findViewById(2131558697)).setOnKeyListener(this.awg);
        this.avA.setOnEditorActionListener((TextView$OnEditorActionListener)this);
        this.avA.setOnFocusChangeListener((View$OnFocusChangeListener)this);
        (this.avE = (QuotedTextView)this.findViewById(2131558674)).a(this);
        (this.avF = (EditText)this.findViewById(2131558683)).setOnKeyListener(this.awg);
        this.avF.setOnFocusChangeListener((View$OnFocusChangeListener)this);
        this.avG = this.findViewById(2131558687);
        this.avH = (TextView)this.findViewById(2131558688);
        this.avI = this.findViewById(2131558685);
        this.avJ = (FromAddressSpinner)this.findViewById(2131558686);
        this.findViewById(2131558675).setOnClickListener((View$OnClickListener)new com.android.mail.compose.k(this));
        final Intent intent = this.getIntent();
        this.avZ = false;
    Label_0537:
        while (true) {
            Object o3 = null;
            Message message = null;
            int n = 0;
            CharSequence charSequence = null;
            if (!k(awa)) {
                while (true) {
                    Object o2 = null;
                    Label_0988: {
                        Object o = null;
                        Label_0784: {
                            if (intent == null || intent.getExtras() == null) {
                                o = null;
                                o2 = null;
                                break Label_0784;
                            }
                            final Object value = intent.getExtras().get("account");
                            if (!(value instanceof Account)) {
                                Account bh;
                                if (value instanceof String) {
                                    bh = Account.bH((String)value);
                                    if (bh != null) {
                                        o2 = bh;
                                        break Label_0988;
                                    }
                                }
                                else {
                                    bh = null;
                                }
                                if (intent.hasExtra("account")) {
                                    o = intent.getStringExtra("account");
                                }
                                else {
                                    o = intent.getStringExtra("selectedAccount");
                                }
                                o2 = bh;
                                break Label_0784;
                            }
                            o3 = value;
                            final int intExtra = intent.getIntExtra("action", -1);
                            message = (Message)intent.getParcelableExtra("original-draft-message");
                            final ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("attachmentPreviews");
                            this.avP = (Message)intent.getParcelableExtra("in-reference-to-message");
                            this.avY = (Uri)intent.getParcelableExtra("in-reference-to-message-uri");
                            if (com.android.mail.a.a.or() && intent.getBooleanExtra("notification", false)) {
                                com.android.mail.a.a.oq().a("notification_action", "compose", cp(intExtra), 0L);
                            }
                            n = intExtra;
                            final ArrayList list = parcelableArrayListExtra;
                            charSequence = null;
                            break Label_0537;
                        }
                        final com.android.mail.providers.t vi = com.android.mail.providers.t.vi();
                        String s = vi.vl();
                        if (TextUtils.isEmpty((CharSequence)s)) {
                            s = vi.vk();
                        }
                        if (!TextUtils.isEmpty((CharSequence)s)) {
                            o = Uri.parse(s);
                        }
                        if (this.awd != null && this.awd.length > 0) {
                            if (o instanceof String && !TextUtils.isEmpty((CharSequence)o)) {
                                final Account[] awd = this.awd;
                                Object o4;
                                for (int length = awd.length, i = 0; i < length; ++i, o2 = o4) {
                                    o4 = awd[i];
                                    if (!((Account)o4).lw().equals(o)) {
                                        o4 = o2;
                                    }
                                }
                            }
                            else if (o instanceof Uri) {
                                final Account[] awd2 = this.awd;
                                Object o5;
                                for (int length2 = awd2.length, j = 0; j < length2; ++j, o2 = o5) {
                                    o5 = awd2[j];
                                    if (!((Account)o5).uri.equals(o)) {
                                        o5 = o2;
                                    }
                                }
                            }
                            if (o2 == null) {
                                o2 = this.awd[0];
                            }
                        }
                    }
                    o3 = o2;
                    continue;
                }
            }
            final int int1 = awa.getInt("action", -1);
            final Account account = (Account)awa.getParcelable("account");
            final Message message2 = (Message)awa.getParcelable("extraMessage");
            final ArrayList parcelableArrayList = awa.getParcelableArrayList("attachmentPreviews");
            this.avP = (Message)awa.getParcelable("in-reference-to-message");
            final CharSequence charSequence2 = awa.getCharSequence("quotedText");
            this.awb = (ContentValues)awa.getParcelable("extra-values");
            if (!awa.containsKey("requestId")) {
                o3 = account;
                n = int1;
                message = message2;
                final ArrayList list = parcelableArrayList;
                charSequence = charSequence2;
                break Label_0537;
            }
            final int int2 = awa.getInt("requestId");
            Label_0568: {
                if (!g.avm.containsKey(int2)) {
                    break Label_0568;
                }
                Label_0995: {
                    synchronized (this.avT) {
                        this.avQ = g.avm.get(int2);
                        // monitorexit(this.avT)
                        o3 = account;
                        n = int1;
                        message = message2;
                        final ArrayList list = parcelableArrayList;
                        charSequence = charSequence2;
                        this.avw.d(list);
                        this.d((Account)o3);
                        if (this.Nc == null) {
                            return;
                        }
                        break Label_0995;
                    }
                    break Label_0568;
                }
                this.su();
                final Folder folder = (Folder)intent.getParcelableExtra("extra-notification-folder");
                if (folder != null) {
                    final Uri uri = (Uri)intent.getParcelableExtra("extra-notification-conversation");
                    Intent intent3;
                    if (uri != null) {
                        final Intent intent2 = new Intent("com.android.mail.action.RESEND_NOTIFICATIONS_WEAR");
                        intent2.putExtra("conversationUri", (Parcelable)uri);
                        intent3 = intent2;
                    }
                    else {
                        intent3 = new Intent("com.android.mail.action.CLEAR_NEW_MAIL_NOTIFICATIONS");
                        intent3.setData(ag.c((Context)this, folder.azZ.aPj));
                    }
                    intent3.setPackage(this.getPackageName());
                    intent3.putExtra("account", (Parcelable)o3);
                    intent3.putExtra("folder", (Parcelable)folder);
                    this.startService(intent3);
                }
                if (intent.getBooleanExtra("fromemail", false)) {
                    this.avU = true;
                }
                else if ("android.intent.action.SEND".equals(intent.getAction()) && intent.getData() != null) {
                    this.avU = TextUtils.equals((CharSequence)intent.getData().getScheme(), (CharSequence)this.Nc.ayt.getScheme());
                }
                if (this.avY != null) {
                    this.avZ = true;
                    this.avC = n;
                    if (Build$VERSION.SDK_INT >= 16) {
                        final Bundle resultsFromIntent = aL.getResultsFromIntent(intent);
                        String string2 = null;
                        Label_1197: {
                            if (resultsFromIntent != null) {
                                E.c(g.mW, "Got remote input from new api", new Object[0]);
                                final CharSequence charSequence3 = resultsFromIntent.getCharSequence("wear_reply");
                                String string = null;
                                if (charSequence3 != null) {
                                    string = charSequence3.toString();
                                }
                                string2 = string;
                            }
                            else {
                                E.c(g.mW, "No remote input from new api, falling back to compatibility mode", new Object[0]);
                                final ClipData clipData = intent.getClipData();
                                if (clipData != null && "com.google.android.wearable.extras".equals(clipData.getDescription().getLabel())) {
                                    final Bundle extras = clipData.getItemAt(0).getIntent().getExtras();
                                    if (extras != null) {
                                        string2 = extras.getString("wear_reply");
                                        break Label_1197;
                                    }
                                }
                                string2 = null;
                            }
                        }
                        if (!TextUtils.isEmpty((CharSequence)string2)) {
                            new j(this, this.avY, com.android.mail.providers.E.aCy, this.avC, string2).execute((Object[])new Void[0]);
                            this.finish();
                            return;
                        }
                        E.e(g.mW, "remote input string is null", new Object[0]);
                    }
                    this.getLoaderManager().initLoader(2, (Bundle)null, (LoaderManager$LoaderCallbacks)this);
                    return;
                }
                if (message != null && n != 3) {
                    this.e(message);
                    this.a(this.avP, n);
                    this.avZ = message.aBl;
                    if (this.avZ && this.avP == null) {
                        if (charSequence != null) {
                            this.a(charSequence, false);
                        }
                        else if (this.awb != null) {
                            this.c(this.awb);
                            return;
                        }
                    }
                }
                else if (n == 3) {
                    if (message == null) {
                        throw new IllegalStateException("Message must not be null to edit draft");
                    }
                    this.e(message);
                    int avC = 0;
                    switch (message.aBk) {
                        default: {
                            avC = -1;
                            break;
                        }
                        case 2: {
                            avC = 0;
                            break;
                        }
                        case 3: {
                            avC = 1;
                            break;
                        }
                        case 4: {
                            avC = 2;
                            break;
                        }
                    }
                    E.c(g.mW, "Previous draft had action type: %d", avC);
                    this.avZ = message.aBl;
                    if (message.aBj != null) {
                        this.avY = message.aBj;
                        this.avC = avC;
                        this.getLoaderManager().initLoader(0, (Bundle)null, (LoaderManager$LoaderCallbacks)this);
                        return;
                    }
                    n = avC;
                }
                else if (n == 0 || n == 1 || n == 2) {
                    if (this.avP != null) {
                        this.cm(n);
                        this.avZ = true;
                    }
                }
                else if (this.c(intent)) {
                    return;
                }
                this.a(this.avC = n, intent, awa);
                return;
            }
            o3 = account;
            n = int1;
            message = message2;
            final ArrayList list = parcelableArrayList;
            charSequence = charSequence2;
            continue Label_0537;
        }
    }
    
    private void so() {
        this.avF.requestFocus();
        this.sp();
    }
    
    private void sp() {
        final int length = this.avF.getText().length();
        final int a = this.A(this.XI, this.avF.getText().toString());
        if (a >= 0) {
            this.avF.setSelection(a);
        }
        else if (length >= 0) {
            this.avF.setSelection(length);
        }
    }
    
    private void sq() {
        this.avA.removeTextChangedListener((TextWatcher)this);
        this.avF.removeTextChangedListener((TextWatcher)this);
        this.avr.removeTextChangedListener((TextWatcher)this.avV);
        this.avs.removeTextChangedListener((TextWatcher)this.avW);
        this.avt.removeTextChangedListener((TextWatcher)this.avX);
        this.avJ.a(null);
        this.avw.a(null);
    }
    
    private void sr() {
        this.sq();
        this.avA.addTextChangedListener((TextWatcher)this);
        this.avF.addTextChangedListener((TextWatcher)this);
        if (this.avV == null) {
            this.avV = new t(this, this.avr, (TextWatcher)this);
        }
        this.avr.addTextChangedListener((TextWatcher)this.avV);
        if (this.avW == null) {
            this.avW = new t(this, this.avs, (TextWatcher)this);
        }
        this.avs.addTextChangedListener((TextWatcher)this.avW);
        if (this.avX == null) {
            this.avX = new t(this, this.avt, (TextWatcher)this);
        }
        this.avt.addTextChangedListener((TextWatcher)this.avX);
        this.avJ.a(this);
        this.avw.a(this);
    }
    
    private void st() {
        final boolean sl = this.avv.sl();
        final boolean sm = this.avv.sm();
        if (this.avu != null) {
            if (sl && sm) {
                this.avu.setVisibility(8);
                return;
            }
            this.avu.setVisibility(0);
        }
    }
    
    private void su() {
        this.z(this.avr);
        this.z(this.avs);
        this.z(this.avt);
    }
    
    private void sx() {
        this.c(false, true, false);
        this.aQ(false);
        this.awf = true;
    }
    
    private void sy() {
        if (this.avO != null) {
            this.avO.setEnabled(this.sz() && !this.sA());
        }
    }
    
    private boolean sz() {
        synchronized (this.avT) {
            return (this.avM || this.avL || this.avN) && !this.sA();
        }
    }
    
    private static void y(final RecipientEditTextView recipientEditTextView) {
        recipientEditTextView.setTokenizer((MultiAutoCompleteTextView$Tokenizer)new Rfc822Tokenizer());
        recipientEditTextView.setThreshold(1);
    }
    
    private void z(final RecipientEditTextView recipientEditTextView) {
        final DropdownChipLayouter sw = this.sw();
        if (sw != null) {
            recipientEditTextView.a(sw);
        }
        recipientEditTextView.setAdapter(this.sv());
        recipientEditTextView.a(this);
        if (this.avz == null) {
            String s = this.Nc.lw();
            final int n = 1 + s.indexOf("@");
            if (n > 0) {
                s = s.substring(n);
            }
            this.avz = new a(s);
        }
        recipientEditTextView.setValidator((AutoCompleteTextView$Validator)this.avz);
    }
    
    public final void H(final int n, final int n2) {
        com.android.mail.a.a.oq().a("suggest_click", Integer.toString(n), Integer.toString(n2), 0L);
    }
    
    public final boolean Y(final int n) {
        final int avC = this.avC;
        if (n == 0) {
            this.avC = 0;
        }
        else if (n == 1) {
            this.avC = 1;
        }
        else if (n == 2) {
            this.avC = 2;
        }
        this.sq();
        if (avC != this.avC) {
            this.avr.setText((CharSequence)"");
            this.avs.setText((CharSequence)"");
            this.avt.setText((CharSequence)"");
            this.avA.setText((CharSequence)"");
            if (!this.avL) {
                this.avw.se();
            }
            if (this.avP != null) {
                this.cm(this.avC);
            }
            boolean b4;
            boolean b5;
            if (this.avR != null) {
                final boolean b = !TextUtils.isEmpty((CharSequence)this.avR.vr());
                final boolean b2 = b || (!TextUtils.isEmpty((CharSequence)this.avR.getCc()) && this.avC == 1);
                final boolean b3 = b;
                b4 = b2;
                b5 = b3;
            }
            else {
                b5 = false;
                b4 = false;
            }
            boolean b6;
            boolean b7;
            if (this.avP != null) {
                b6 = !TextUtils.isEmpty((CharSequence)this.avs.getText());
                b7 = !TextUtils.isEmpty((CharSequence)this.avt.getText());
            }
            else {
                final boolean b8 = b5;
                b6 = b4;
                b7 = b8;
            }
            this.avv.b(false, b6, b7);
        }
        this.st();
        this.sr();
        return true;
    }
    
    protected z a(final Spanned spanned) {
        return new z(spanned, null);
    }
    
    protected String a(final ReplyFromAccount replyFromAccount) {
        String s;
        if (replyFromAccount != null) {
            s = replyFromAccount.address;
        }
        else if (this.Nc != null) {
            s = this.Nc.lw();
        }
        else {
            s = null;
        }
        String s2;
        if (replyFromAccount != null) {
            s2 = replyFromAccount.name;
        }
        else {
            final Account nc = this.Nc;
            s2 = null;
            if (nc != null) {
                s2 = this.Nc.ik();
            }
        }
        return new Address(s, s2).lk();
    }
    
    protected String a(final String s, final Object o) {
        return s;
    }
    
    protected final void a(int n, final Intent intent, final Bundle bundle) {
        int n2 = 0;
        if (n == 3) {
            switch (this.avR.aBk) {
                default: {
                    n2 = 0;
                    break;
                }
                case 1:
                case 4: {
                    n2 = -1;
                    break;
                }
            }
        }
        else {
            n2 = n;
        }
        Label_0084: {
            switch (n2) {
                case -1:
                case 2: {
                    if (TextUtils.isEmpty((CharSequence)this.avr.getText())) {
                        this.avr.requestFocus();
                        break Label_0084;
                    }
                    break;
                }
            }
            this.so();
        }
        if (!k(bundle)) {
            final Bundle extras = intent.getExtras();
            Bundle empty;
            if (extras == null) {
                empty = Bundle.EMPTY;
            }
            else {
                empty = extras;
            }
            final String action = intent.getAction();
            if (!this.avL) {
                long n3 = 0L;
                if (empty.containsKey("attachments")) {
                    final String[] array = (Object)empty.getSerializable("attachments");
                    final ArrayList<Object> fm = Lists.fm(array.length);
                    for (int length = array.length, i = 0; i < length; ++i) {
                        fm.add(Uri.parse(array[i]));
                    }
                    n3 = 0L + this.n((List<Uri>)fm);
                }
                long n4;
                if (empty.containsKey("android.intent.extra.STREAM")) {
                    if ("android.intent.action.SEND_MULTIPLE".equals(action)) {
                        n4 = n3 + this.n(empty.getParcelableArrayList("android.intent.extra.STREAM"));
                    }
                    else {
                        n4 = n3 + this.n(Lists.n((Uri)empty.getParcelable("android.intent.extra.STREAM")));
                    }
                }
                else {
                    n4 = n3;
                }
                if (n4 > 0L) {
                    this.avL = true;
                    this.sy();
                    com.android.mail.a.a.oq().a("send_intent_with_attachments", Integer.toString(this.avw.sc().size()), null, n4);
                }
            }
        }
        E.c(g.mW, "initializing action bar in ComposeActivity", new Object[0]);
        final android.support.v7.app.a cf = this.cF();
        if (cf != null) {
            if (this.avC == -1) {
                cf.setNavigationMode(0);
                cf.setTitle(2131296390);
            }
            else {
                cf.setTitle(null);
                if (this.avB == null) {
                    this.avB = new n(this, cf.getThemedContext());
                }
                cf.setNavigationMode(1);
                cf.a((SpinnerAdapter)this.avB, this);
                switch (this.avC) {
                    case 0: {
                        cf.setSelectedNavigationItem(0);
                        break;
                    }
                    case 1: {
                        cf.setSelectedNavigationItem(1);
                        break;
                    }
                    case 2: {
                        cf.setSelectedNavigationItem(2);
                        break;
                    }
                }
            }
            cf.setDisplayOptions(4, 4);
            cf.cD();
        }
        Bundle extras2;
        if (bundle != null) {
            extras2 = bundle;
        }
        else {
            extras2 = intent.getExtras();
        }
        if (n == 3 && this.avR.aBk == 1) {
            n = -1;
        }
        this.avJ.a(n, this.Nc, this.awd, this.avP);
        if (extras2 != null) {
            if (extras2.containsKey("replyFromAccount")) {
                this.avx = ReplyFromAccount.a(this.Nc, extras2.getString("replyFromAccount"));
            }
            else if (extras2.containsKey("fromAccountString")) {
                this.avx = this.avJ.bx(extras2.getString("fromAccountString"));
            }
        }
        Label_0554: {
            if (this.avx == null) {
                ReplyFromAccount avx = null;
                g g = null;
                Label_0547: {
                    if (this.avR != null) {
                        final Address[] ak = Address.ak(this.avR.vq());
                        String address;
                        if (ak.length > 0) {
                            address = ak[0].getAddress();
                        }
                        else {
                            address = "";
                        }
                        while (true) {
                            for (final ReplyFromAccount avx : this.avJ.sR()) {
                                if (TextUtils.equals((CharSequence)avx.address, (CharSequence)address)) {
                                    g = this;
                                    break Label_0547;
                                }
                            }
                            avx = null;
                            continue;
                        }
                    }
                    if (this.avP == null) {
                        break Label_0554;
                    }
                    final Account nc = this.Nc;
                    final Message avP = this.avP;
                    if (avP.azj != null) {
                        for (final ReplyFromAccount avx : this.avJ.sR()) {
                            if (avx.account.uri.equals((Object)avP.azj)) {
                                g = this;
                                break Label_0547;
                            }
                        }
                        g = this;
                        avx = null;
                    }
                    else if (this.avy.aBZ) {
                        avx = e(nc);
                        g = this;
                    }
                    else {
                        final ArrayList<String> list = new ArrayList<String>();
                        list.addAll((Collection<?>)Arrays.asList(avP.vv()));
                        list.addAll((Collection<?>)Arrays.asList(avP.vx()));
                        avx = a(nc, list);
                        g = this;
                    }
                }
                g.avx = avx;
            }
        }
        if (this.avx == null) {
            this.avx = e(this.Nc);
        }
        this.avJ.b(this.avx);
        if (this.avJ.getCount() > 1) {
            this.avG.setVisibility(8);
            this.avH.setText((CharSequence)this.avx.address);
            this.avI.setVisibility(0);
        }
        else {
            this.avG.setVisibility(0);
            this.avH.setText((CharSequence)this.avx.address);
            this.avI.setVisibility(8);
        }
        if (this.avR != null) {
            this.avS = this.avx;
        }
        this.sr();
        this.avv.b(false, !TextUtils.isEmpty((CharSequence)this.avs.getText()) || (bundle != null && bundle.getBoolean("showCc")), !TextUtils.isEmpty((CharSequence)this.avt.getText()) || (bundle != null && bundle.getBoolean("showBcc")));
        this.st();
        this.avE.aT(this.avZ);
        this.avE.aU(this.avw.sc().size() > 0);
        this.awe = (this.awa != null && this.awa.getBoolean("respondedInline"));
        if (this.awe) {
            this.avE.setVisibility(8);
        }
        this.avM = (bundle != null && bundle.getBoolean("extraTextChanged"));
    }
    
    @Override
    public final void a(final android.support.v7.c.a a) {
        super.a(a);
        al.a(this, 2131361996);
    }
    
    protected final void a(final CharSequence charSequence, final boolean b) {
        this.avE.d(charSequence, b);
        this.avZ = true;
    }
    
    protected void a(final boolean b, final boolean b2, final ArrayList<String> list) {
        this.e(b, b2);
    }
    
    public void afterTextChanged(final Editable editable) {
        this.avM = true;
        this.sy();
    }
    
    @Override
    public final void b(final android.support.v7.c.a a) {
        super.b(a);
        al.a(this, 2131361993);
    }
    
    public final void b(CharSequence text, final boolean b) {
        if (text == null) {
            text = "";
        }
        if (!TextUtils.isEmpty((CharSequence)this.avF.getText())) {
            E.f(g.mW, "POTENTIAL DATA LOSS: ComposeActivity#setBody on a non-empty body (%d -> %d)", this.avF.getText().length(), text.length());
        }
        E.d(g.mW, "Body populated, len: %d, sig: %b", text.length(), b);
        this.avF.setText(text);
        if (b) {
            this.sC();
        }
    }
    
    public void beforeTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
    
    public final void bu(final String s) {
        final Editable editableText = this.avF.getEditableText();
        if (editableText != null && editableText.length() > 0) {
            editableText.append((CharSequence)s);
        }
        else {
            this.b(s, false);
        }
        this.avE.aU(false);
        this.awe = true;
        if (!this.avF.hasFocus()) {
            this.avF.requestFocus();
        }
    }
    
    protected void c(final ContentValues contentValues) {
    }
    
    protected final void c(final boolean b, final boolean b2, final boolean b3) {
        int n = 1;
        if (this.awd == null || this.Nc == null) {
            Toast.makeText((Context)this, 2131296504, 0).show();
            if (b3) {
                this.finish();
            }
            return;
        }
        final String[] a = A(this.avr);
        final String[] a2 = A(this.avs);
        final String[] a3 = A(this.avt);
        final ArrayList<String> k = k(a);
        k.addAll(k(a2));
        k.addAll(k(a3));
        if (!b && a.length == 0 && a2.length == 0 && a3.length == 0) {
            this.bs(this.getString(2131296404));
            return;
        }
        final ArrayList<Object> list = new ArrayList<Object>();
        if (!b) {
            this.b(a, (List<String>)list);
            this.b(a2, (List<String>)list);
            this.b(a3, (List<String>)list);
        }
        if (list.size() > 0) {
            final String string = this.getString(2131296544);
            final Object[] array = new Object[n];
            array[0] = list.get(0);
            this.bs(String.format(string, array));
            return;
        }
        if (!b) {
            if (b3) {
                this.e(b, b2);
                return;
            }
            Label_0370: {
                if (this.avw.sc().isEmpty() && this.sj()) {
                    int n2;
                    if (TextUtils.getTrimmedLength(this.avA.getText()) == 0) {
                        n2 = n;
                    }
                    else {
                        n2 = 0;
                    }
                    int n3;
                    if (TextUtils.getTrimmedLength((CharSequence)this.avF.getEditableText()) == 0) {
                        n3 = n;
                    }
                    else {
                        n3 = 0;
                    }
                    while (true) {
                        Label_0348: {
                            if (n3 == 0) {
                                break Label_0348;
                            }
                            if (this.avD) {
                                int n4;
                                if (!this.avE.sV()) {
                                    n4 = n;
                                }
                                else {
                                    n4 = 0;
                                }
                                if (n4 == 0) {
                                    break Label_0348;
                                }
                            }
                            if (n2 != 0) {
                                this.a(2131296405, b2, k);
                                return;
                            }
                            if (n != 0) {
                                this.a(2131296406, b2, k);
                                return;
                            }
                            break Label_0370;
                        }
                        n = 0;
                        continue;
                    }
                }
            }
            if (this.sk()) {
                this.a(2131296407, b2, k);
                return;
            }
        }
        this.a(b, b2, k);
    }
    
    protected void d(final Account nc) {
        if (nc != null) {
            if (!nc.equals(this.Nc)) {
                this.Nc = nc;
                this.avy = this.Nc.ayw;
                this.sC();
            }
            if (this.Nc != null) {
                MailActivity.cp(this.Nc.lw());
            }
        }
    }
    
    protected final void e(final boolean b, final boolean b2) {
        if (!ActivityManager.isUserAMonkey()) {
            final l l = new l(this);
            this.d(this.avx.account);
            final SpannableString b3 = b((Spanned)this.avF.getText());
            l.sL();
            Bundle a;
            if (!ag.Be()) {
                a = a((Context)this, this.avw.sc());
            }
            else {
                a = null;
            }
            this.awc = g.Wp.nextInt();
            g.avn.post((Runnable)new m(this, (Spanned)b3, l, b, a));
            if (b2 && (0x80 & this.getChangingConfigurations()) == 0x0) {
                int n;
                if (b) {
                    n = 2131296542;
                }
                else {
                    n = 2131296543;
                }
                Toast.makeText((Context)this, n, 1).show();
            }
            this.sB();
            this.sy();
            if (!b) {
                this.finish();
            }
        }
    }
    
    protected boolean f(final Account account) {
        return false;
    }
    
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        int i = 0;
        if (n == 1) {
            this.avK = false;
            if (n2 == -1 && intent != null) {
                if (Build$VERSION.SDK_INT >= 16) {
                    final ClipData clipData = intent.getClipData();
                    if (clipData != null) {
                        while (i < clipData.getItemCount()) {
                            this.p(clipData.getItemAt(i).getUri());
                            ++i;
                        }
                        return;
                    }
                }
                this.p(intent.getData());
            }
        }
        else if (n == 2) {
            if (n2 != -1) {
                this.finish();
                return;
            }
            this.getLoaderManager().initLoader(1, (Bundle)null, (LoaderManager$LoaderCallbacks)this);
            this.g((Account)null);
        }
    }
    
    @Override
    public void onBackPressed() {
        if (this.sF() != null) {
            this.finish();
            return;
        }
        super.onBackPressed();
    }
    
    public void onClick(final View view) {
        if (view.getId() == 2131558693) {
            this.avv.b(true, true, true);
            if (this.avu != null) {
                this.avu.setVisibility(8);
            }
        }
    }
    
    @Override
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setTitle(2131296390);
        this.setContentView(2130968643);
        final android.support.v7.app.a cf = this.cF();
        if (cf != null) {
            cf.cy();
            cf.cz();
        }
        Bundle bundle2;
        if (bundle != null) {
            bundle2 = bundle.getBundle("compose_state");
        }
        else {
            bundle2 = null;
        }
        this.awa = bundle2;
        final Account[] ax = com.android.mail.utils.a.ax((Context)this);
        if (ax == null || ax.length == 0) {
            final Intent aq = com.android.mail.providers.t.aq((Context)this);
            if (aq != null) {
                this.awd = null;
                this.startActivityForResult(aq, 2);
            }
            return;
        }
        final int length = ax.length;
        int i = 0;
        while (true) {
            while (i < length) {
                if (ax[i].uj()) {
                    final int n = 1;
                    if (n == 0) {
                        this.awd = null;
                        this.getLoaderManager().initLoader(1, (Bundle)null, (LoaderManager$LoaderCallbacks)this);
                        return;
                    }
                    this.awd = com.android.mail.utils.a.aw((Context)this);
                    this.sn();
                    return;
                }
                else {
                    ++i;
                }
            }
            final int n = 0;
            continue;
        }
    }
    
    public Loader<Cursor> onCreateLoader(final int n, final Bundle bundle) {
        switch (n) {
            default: {
                return null;
            }
            case 2: {
                return (Loader<Cursor>)new CursorLoader((Context)this, this.avY, com.android.mail.providers.E.aCy, (String)null, (String[])null, (String)null);
            }
            case 0: {
                return (Loader<Cursor>)new CursorLoader((Context)this, this.avY, com.android.mail.providers.E.aCy, (String)null, (String[])null, (String)null);
            }
            case 1: {
                return (Loader<Cursor>)new CursorLoader((Context)this, com.android.mail.providers.t.vh(), com.android.mail.providers.E.aCr, (String)null, (String[])null, (String)null);
            }
        }
    }
    
    public boolean onCreateOptionsMenu(final Menu menu) {
        final boolean onCreateOptionsMenu = super.onCreateOptionsMenu(menu);
        if (this.awd == null || this.awd.length == 0) {
            return onCreateOptionsMenu;
        }
        this.getMenuInflater().inflate(2131755011, menu);
        this.avO = menu.findItem(2131559028);
        String action;
        if (this.getIntent() != null) {
            action = this.getIntent().getAction();
        }
        else {
            action = null;
        }
        boolean boolean1;
        if (this.awa != null) {
            boolean1 = this.awa.getBoolean("saveEnabled");
        }
        else {
            boolean1 = ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action) || "android.intent.action.SENDTO".equals(action) || this.sz());
        }
        this.aR(boolean1);
        final MenuItem item = menu.findItem(2131559021);
        final MenuItem item2 = menu.findItem(2131558416);
        final MenuItem item3 = menu.findItem(2131559026);
        if (item != null) {
            item.setVisible(this.Nc != null && this.Nc.cy(32768));
        }
        if (item2 != null) {
            item2.setVisible(this.Nc != null && this.Nc.cy(65536));
        }
        if (item3 != null) {
            item3.setVisible(this.f(this.Nc));
        }
        final MenuItem item4 = menu.findItem(2131559025);
        final boolean bg = ag.Bg();
        boolean visible = false;
        if (!bg) {
            visible = true;
        }
        item4.setVisible(visible);
        return true;
    }
    
    public boolean onEditorAction(final TextView textView, final int n, final KeyEvent keyEvent) {
        if (n == 6) {
            this.so();
            return true;
        }
        return false;
    }
    
    public void onFocusChange(final View view, final boolean b) {
        final int id = view.getId();
        if (b && (id == 2131558697 || id == 2131558683)) {
            final boolean b2 = !TextUtils.isEmpty((CharSequence)this.avs.getText()) || !TextUtils.isEmpty((CharSequence)this.avt.getText());
            this.avv.b(false, b2, b2);
            final View avu = this.avu;
            int visibility;
            if (b2) {
                visibility = 8;
            }
            else {
                visibility = 0;
            }
            avu.setVisibility(visibility);
            if (this.getResources().getBoolean(2131623949) && b2) {
                final int[] array = new int[2];
                this.avs.getLocationOnScreen(array);
                this.getWindow().getDecorView().getWindowVisibleDisplayFrame(this.aea);
                final int n = array[1] - this.cF().getHeight() - this.aea.top;
                if (n > 0) {
                    this.aeO.smoothScrollBy(0, n);
                }
            }
        }
    }
    
    public void onLoaderReset(final Loader<Cursor> loader) {
    }
    
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        final int itemId = menuItem.getItemId();
        com.android.mail.a.a.oq().b("menu_item", itemId, "compose");
        int n;
        if (itemId == 2131559024) {
            this.bt("*/*");
            n = 1;
        }
        else if (itemId == 2131559025) {
            this.bt("image/*");
            n = 1;
        }
        else if (itemId == 2131559028) {
            this.c(true, true, false);
            n = 1;
        }
        else if (itemId == 2131559027) {
            this.sx();
            n = 1;
        }
        else if (itemId == 2131559029) {
            if (this.sz()) {
                new o().show(this.getFragmentManager(), "discard confirm");
                n = 1;
            }
            else {
                this.sE();
                n = 1;
            }
        }
        else if (itemId == 2131559020) {
            ag.e((Context)this, this.Nc);
            n = 1;
        }
        else if (itemId == 16908332) {
            if (this.avU) {
                this.onBackPressed();
                n = 1;
            }
            else {
                final Intent x = ag.x(this.Nc);
                x.setFlags(268484608);
                this.startActivity(x);
                this.finish();
                n = 1;
            }
        }
        else if (itemId == 2131559021) {
            ag.b((Context)this, this.Nc, this.getString(2131296354));
            n = 1;
        }
        else {
            n = 0;
        }
        if (n == 0) {
            final boolean onOptionsItemSelected = super.onOptionsItemSelected(menuItem);
            final boolean b = false;
            if (!onOptionsItemSelected) {
                return b;
            }
        }
        return true;
    }
    
    protected void onPause() {
        super.onPause();
        if (!this.isChangingConfigurations()) {
            if (this.Nc != null && this.sz()) {
                this.c(true, !this.avK, false);
            }
            if (this.isFinishing() && !this.awf && !this.sA()) {
                this.aQ(true);
            }
        }
    }
    
    protected final void onRestoreInstanceState(final Bundle bundle) {
        boolean b;
        if (this.awd != null && this.awd.length > 0) {
            b = true;
        }
        else {
            b = false;
        }
        if (b) {
            this.sq();
        }
        super.onRestoreInstanceState(bundle);
        if (this.awa != null && this.awa.containsKey("focusSelectionStart")) {
            final int int1 = this.awa.getInt("focusSelectionStart");
            final int int2 = this.awa.getInt("focusSelectionEnd");
            final EditText editText = (EditText)this.getCurrentFocus();
            final int length = editText.getText().length();
            if (int1 < length && int2 < length) {
                editText.setSelection(int1, int2);
            }
        }
        if (b) {
            this.sr();
        }
    }
    
    protected void onResume() {
        super.onResume();
        if (this.avJ != null && this.Nc != null) {
            this.avJ.a(this.avC, this.Nc, this.awd, this.avP);
        }
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        final Bundle bundle2 = new Bundle();
        if (this.awd != null && this.awd.length != 0) {
            final View currentFocus = this.getCurrentFocus();
            if (currentFocus != null && currentFocus instanceof EditText) {
                final EditText editText = (EditText)currentFocus;
                bundle2.putInt("focusSelectionStart", editText.getSelectionStart());
                bundle2.putInt("focusSelectionEnd", editText.getSelectionEnd());
            }
            final List<ReplyFromAccount> sr = this.avJ.sR();
            final int selectedItemPosition = this.avJ.getSelectedItemPosition();
            ReplyFromAccount replyFromAccount;
            if (sr != null && sr.size() > 0 && sr.size() > selectedItemPosition) {
                replyFromAccount = sr.get(selectedItemPosition);
            }
            else {
                replyFromAccount = null;
            }
            if (replyFromAccount != null) {
                bundle2.putString("replyFromAccount", replyFromAccount.vG().toString());
                bundle2.putParcelable("account", (Parcelable)replyFromAccount.account);
            }
            else {
                bundle2.putParcelable("account", (Parcelable)this.Nc);
            }
            if (this.avQ == -1L && this.awc != 0) {
                bundle2.putInt("requestId", this.awc);
            }
            final int mode = this.getMode();
            bundle2.putInt("action", mode);
            final Message a = this.a(replyFromAccount, this.avP, mode, (Spanned)b((Spanned)this.avF.getText()));
            if (this.avR != null) {
                a.id = this.avR.id;
                a.aBd = this.avR.aBd;
                a.uri = this.avR.uri;
            }
            bundle2.putParcelable("extraMessage", (Parcelable)a);
            if (this.avP != null) {
                bundle2.putParcelable("in-reference-to-message", (Parcelable)this.avP);
            }
            else if (a.aBl) {
                bundle2.putCharSequence("quotedText", this.avE.sT());
            }
            bundle2.putBoolean("showCc", this.avv.sl());
            bundle2.putBoolean("showBcc", this.avv.sm());
            bundle2.putBoolean("respondedInline", this.awe);
            bundle2.putBoolean("saveEnabled", this.avO != null && this.avO.isEnabled());
            bundle2.putParcelableArrayList("attachmentPreviews", (ArrayList)this.avw.sd());
            bundle2.putParcelable("extra-values", (Parcelable)this.awb);
            bundle2.putBoolean("extraTextChanged", this.avM);
            bundle2.putBoolean("extraSkipParsingBody", this.isChangingConfigurations());
        }
        bundle.putBundle("compose_state", bundle2);
    }
    
    protected void onStart() {
        super.onStart();
        com.android.mail.a.a.oq().e(this);
    }
    
    @Override
    protected void onStop() {
        super.onStop();
        com.android.mail.a.a.oq().f(this);
    }
    
    public void onTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
    
    protected void p(final List<String> list) {
        new com.android.b.a.a((Context)this).a(list);
    }
    
    public final void sD() {
        this.avx = this.avJ.sP();
        if (!this.Nc.equals(this.avx.account)) {
            this.avF.removeTextChangedListener((TextWatcher)this);
            final String xi = this.XI;
            final String string = ((TextView)this.avF).getText().toString();
            if (!TextUtils.isEmpty((CharSequence)xi)) {
                final int a = this.A(xi, string);
                if (a >= 0) {
                    this.b(string.substring(0, a), false);
                }
            }
            this.d(this.avx.account);
            this.avF.addTextChangedListener((TextWatcher)this);
            if (!this.sA()) {
                this.aR(true);
            }
            this.avN = true;
            this.su();
            this.invalidateOptionsMenu();
        }
    }
    
    public final void sg() {
        boolean avL = true;
        this.avL = avL;
        final QuotedTextView avE = this.avE;
        if (this.avw.sc().size() <= 0) {
            avL = false;
        }
        avE.aU(avL);
        this.sy();
    }
    
    public final void sh() {
        this.avE.aU(this.avw.sc().size() > 0);
        this.avw.sf();
    }
    
    protected boolean sj() {
        return this.avw.sc().size() == 0;
    }
    
    protected boolean sk() {
        return this.avy != null && this.avy.aBV;
    }
    
    protected s<Spanned> ss() {
        return new y();
    }
    
    public com.android.ex.chips.a sv() {
        return new C((Context)this, this.Nc);
    }
    
    public DropdownChipLayouter sw() {
        return null;
    }
}
