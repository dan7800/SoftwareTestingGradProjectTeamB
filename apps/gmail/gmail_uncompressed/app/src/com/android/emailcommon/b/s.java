package com.android.emailcommon.b;

import java.nio.charset.*;
import java.util.regex.*;
import com.android.mail.utils.*;
import com.android.emailcommon.provider.*;
import android.content.*;
import android.net.*;
import android.database.*;
import java.nio.*;
import android.text.*;
import java.net.*;
import java.util.*;
import java.security.*;
import java.io.*;
import android.widget.*;
import android.os.*;

public final class s
{
    public static final Charset UTF_8;
    public static final Charset abI;
    public static final String[] abJ;
    private static final Pattern abK;
    private static Handler abL;
    private static final B abM;
    private static final B abN;
    private static final B abO;
    private static final B abP;
    private static final B abQ;
    private static final y<Long> abR;
    private static final y<Integer> abS;
    private static final y<String> abT;
    private static final y<byte[]> abU;
    
    static {
        UTF_8 = Charset.forName("UTF-8");
        abI = Charset.forName("US-ASCII");
        abJ = new String[0];
        abK = Pattern.compile("GMT([-+]\\d{4})$");
        abM = new B("yyyyMMdd'T'HHmmss'Z'");
        abN = new B("yyyyMMdd");
        abO = new B("yyyy-MM-dd");
        abP = new B("yyyy-MM-dd'T'HH:mm:ss'Z'");
        abQ = new B("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        abR = new u();
        abS = new v();
        abT = new w();
        abU = new x();
    }
    
    public static boolean D(final Context context, final long n) {
        final g t = g.t(context, n);
        if (t != null) {
            for (final EmailContent$Attachment emailContent$Attachment : EmailContent$Attachment.p(context, n)) {
                Label_0198: {
                    if (!b(context, emailContent$Attachment)) {
                        if ((0x6 & emailContent$Attachment.dM) == 0x0) {
                            E.c(E.TAG, "Unloaded attachment isn't marked for download: %s, #%d", emailContent$Attachment.Yl, emailContent$Attachment.Ln);
                            final Account k = Account.k(context, t.Lq);
                            if (k == null) {
                                return true;
                            }
                            if ((0x2 & t.dM) != 0x0 && (0x80 & k.dM) != 0x0) {
                                break Label_0198;
                            }
                            EmailContent.a(context, EmailContent$Attachment.CONTENT_URI, emailContent$Attachment.Ln);
                        }
                        else if (emailContent$Attachment.lL() != null) {
                            final ContentValues contentValues = new ContentValues();
                            contentValues.putNull("contentUri");
                            EmailContent.a(context, EmailContent$Attachment.CONTENT_URI, emailContent$Attachment.Ln, contentValues);
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }
    
    public static void Q(final boolean b) {
        StrictMode$ThreadPolicy threadPolicy;
        if (b) {
            threadPolicy = new StrictMode$ThreadPolicy$Builder().detectAll().build();
        }
        else {
            threadPolicy = StrictMode$ThreadPolicy.LAX;
        }
        StrictMode.setThreadPolicy(threadPolicy);
        StrictMode$VmPolicy vmPolicy;
        if (b) {
            vmPolicy = new StrictMode$VmPolicy$Builder().detectAll().build();
        }
        else {
            vmPolicy = StrictMode$VmPolicy.LAX;
        }
        StrictMode.setVmPolicy(vmPolicy);
    }
    
    public static File a(final File file, String s) {
        final z abW = z.abW;
        final File file2 = new File(file, s);
        if (abW.a(file2)) {
            return file2;
        }
        final int lastIndex = s.lastIndexOf(46);
        String substring2;
        if (lastIndex != -1) {
            final String substring = s.substring(0, lastIndex);
            substring2 = s.substring(lastIndex);
            s = substring;
        }
        else {
            substring2 = "";
        }
        for (int i = 2; i < Integer.MAX_VALUE; ++i) {
            final File file3 = new File(file, s + "-" + Integer.toString(i) + substring2);
            if (abW.a(file3)) {
                return file3;
            }
        }
        return null;
    }
    
    public static Integer a(final Context context, final Uri uri, final String[] array, final Integer n) {
        return a(context, uri, array, null, null, null, 0, n, s.abS);
    }
    
    public static Long a(final Context context, final Uri uri, final String[] array) {
        return a(context, uri, array, null, null, null, 0, null, s.abR);
    }
    
    public static Long a(final Context context, final Uri uri, final String[] array, final String s, final String[] array2, final String s2, final Long n) {
        return a(context, uri, array, s, array2, s2, 0, n, s.abR);
    }
    
    private static <T> T a(final Context context, final Uri uri, final String[] array, final String s, final String[] array2, final String s2, final int n, T a, final y<T> y) {
        Label_0091: {
            if (!"content".equals(uri.getScheme()) || !EmailContent.AUTHORITY.equals(uri.getAuthority())) {
                break Label_0091;
            }
            Uri c = EmailContent.c(uri, 1);
            while (true) {
                final Cursor query = context.getContentResolver().query(c, array, s, array2, s2);
                if (query == null) {
                    return a;
                }
                try {
                    if (query.moveToFirst()) {
                        a = y.a(query, 0);
                        return a;
                    }
                    return a;
                    c = uri;
                    continue;
                }
                finally {
                    query.close();
                }
                break;
            }
        }
    }
    
    public static String a(final Context context, final Uri uri, final String[] array, final String s, final String[] array2) {
        return a(context, uri, array, s, array2, null, 0, null, s.abT);
    }
    
    public static String a(final byte[] array) {
        final Charset abI = s.abI;
        if (array == null) {
            return null;
        }
        final CharBuffer decode = abI.decode(ByteBuffer.wrap(array));
        return new String(decode.array(), 0, decode.length());
    }
    
    public static void a(final AsyncTask<?, ?, ?> asyncTask) {
        if (asyncTask != null && asyncTask.getStatus() != AsyncTask$Status.FINISHED) {
            asyncTask.cancel(true);
        }
    }
    
    private static byte[] a(final Charset charset, final String s) {
        if (s == null) {
            return null;
        }
        final ByteBuffer encode = charset.encode(CharBuffer.wrap(s));
        final byte[] array = new byte[encode.limit()];
        encode.get(array);
        return array;
    }
    
    private static boolean aE(final String s) {
        final String trim = s.trim();
        if (TextUtils.isEmpty((CharSequence)trim)) {
            return false;
        }
        try {
            new URI("http", null, trim, -1, null, null, null);
            return true;
        }
        catch (URISyntaxException ex) {
            return false;
        }
    }
    
    public static long aF(final String s) {
        final GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
        if (s.length() <= 10) {
            gregorianCalendar.setTime(s.abO.parse(s));
        }
        else if (s.length() <= 20) {
            gregorianCalendar.setTime(s.abP.parse(s));
        }
        else {
            gregorianCalendar.setTime(s.abQ.parse(s));
        }
        return gregorianCalendar.getTimeInMillis();
    }
    
    public static byte[] aG(final String s) {
        return a(s.abI, s);
    }
    
    public static String aH(final String s) {
        try {
            final MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(a(s.UTF_8, s));
            final byte[] digest = instance.digest();
            final byte b = (byte)(0xF & digest[19]);
            return Integer.toString((0x7F & digest[b]) << 24 | (0xFF & digest[b + 1]) << 16 | (0xFF & digest[b + 2]) << 8 | (0xFF & digest[b + 3]));
        }
        catch (NoSuchAlgorithmException ex) {
            return null;
        }
    }
    
    public static ByteArrayInputStream aI(final String s) {
        return new ByteArrayInputStream(a(s.abI, s));
    }
    
    public static String b(final Object[] array) {
        if (array == null) {
            return null;
        }
        final StringBuilder sb = new StringBuilder();
        for (int i = 0; i < array.length; ++i) {
            sb.append(array[i].toString());
            if (i < -1 + array.length) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }
    
    public static boolean b(final Context p0, final EmailContent$Attachment p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: ifnonnull       6
        //     4: iconst_0       
        //     5: ireturn        
        //     6: aload_1        
        //     7: getfield        com/android/emailcommon/provider/EmailContent$Attachment.Yu:[B
        //    10: ifnull          15
        //    13: iconst_1       
        //    14: ireturn        
        //    15: aload_1        
        //    16: invokevirtual   com/android/emailcommon/provider/EmailContent$Attachment.lK:()Ljava/lang/String;
        //    19: astore_2       
        //    20: aload_2        
        //    21: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //    24: ifne            69
        //    27: aload_2        
        //    28: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //    31: astore          10
        //    33: aload_0        
        //    34: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    37: aload           10
        //    39: invokevirtual   android/content/ContentResolver.openInputStream:(Landroid/net/Uri;)Ljava/io/InputStream;
        //    42: astore          13
        //    44: aload           13
        //    46: invokevirtual   java/io/InputStream.close:()V
        //    49: iconst_1       
        //    50: ireturn        
        //    51: astore          11
        //    53: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //    56: aload           11
        //    58: ldc_w           "not able to open cached file"
        //    61: iconst_0       
        //    62: anewarray       Ljava/lang/Object;
        //    65: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //    68: pop            
        //    69: aload_1        
        //    70: invokevirtual   com/android/emailcommon/provider/EmailContent$Attachment.lL:()Ljava/lang/String;
        //    73: astore_3       
        //    74: aload_3        
        //    75: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //    78: ifne            4
        //    81: aload_3        
        //    82: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //    85: astore          6
        //    87: aload_0        
        //    88: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    91: aload           6
        //    93: invokevirtual   android/content/ContentResolver.openInputStream:(Landroid/net/Uri;)Ljava/io/InputStream;
        //    96: astore          8
        //    98: aload           8
        //   100: invokevirtual   java/io/InputStream.close:()V
        //   103: iconst_1       
        //   104: ireturn        
        //   105: astore          4
        //   107: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //   110: aload           4
        //   112: ldc_w           "attachmentExists RuntimeException"
        //   115: iconst_0       
        //   116: anewarray       Ljava/lang/Object;
        //   119: invokestatic    com/android/mail/utils/E.d:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   122: pop            
        //   123: iconst_0       
        //   124: ireturn        
        //   125: astore          14
        //   127: goto            49
        //   130: astore          9
        //   132: goto            103
        //   135: astore          7
        //   137: iconst_0       
        //   138: ireturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  33     44     51     69     Ljava/io/FileNotFoundException;
        //  44     49     125    130    Ljava/io/IOException;
        //  44     49     51     69     Ljava/io/FileNotFoundException;
        //  81     87     105    125    Ljava/lang/RuntimeException;
        //  87     98     135    139    Ljava/io/FileNotFoundException;
        //  87     98     105    125    Ljava/lang/RuntimeException;
        //  98     103    130    135    Ljava/io/IOException;
        //  98     103    135    139    Ljava/io/FileNotFoundException;
        //  98     103    105    125    Ljava/lang/RuntimeException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0049:
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
    
    public static boolean b(final Object[] array, final Object o) {
        while (true) {
            for (int length = array.length, i = 0; i < length; ++i) {
                if (array[i].equals(o)) {
                    boolean b = false;
                    if (i >= 0) {
                        b = true;
                    }
                    return b;
                }
            }
            int i = -1;
            continue;
        }
    }
    
    public static String bn(final int n) {
        final StringBuilder sb = new StringBuilder();
        final int n2 = n & 0xFF;
        sb.append("0123456789ABCDEF".charAt(n2 >> 4));
        sb.append("0123456789ABCDEF".charAt(n2 & 0xF));
        return sb.toString();
    }
    
    public static boolean c(final TextView textView) {
        final CharSequence text = textView.getText();
        if (!TextUtils.isEmpty(text)) {
            try {
                final Integer value = Integer.parseInt(text.toString());
                if (value > 0 && value < 65536) {
                    return true;
                }
            }
            catch (NumberFormatException ex) {
                return false;
            }
        }
        return false;
    }
    
    public static boolean d(final TextView textView) {
        return aE(textView.getText().toString());
    }
    
    public static void h(final Context context, final int n) {
        final String string = context.getResources().getString(n);
        if (s.abL == null) {
            s.abL = new Handler(Looper.getMainLooper());
        }
        s.abL.post((Runnable)new t(context, string));
    }
    
    public static boolean mk() {
        return Environment.getExternalStorageState().equals("mounted");
    }
}
