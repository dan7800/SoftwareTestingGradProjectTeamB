package com.google.android.gm;

import android.app.*;
import android.content.*;
import com.google.android.gsf.*;
import java.util.regex.*;
import android.os.*;

public class ViewProxyActivity extends Activity
{
    public static boolean a(final ContentResolver contentResolver, final String s) {
        final Pattern compile = Pattern.compile(c.a(contentResolver, "gmail_account_extras_uri_host_pattern", ".*\\.google(\\.co(m?))?(\\.\\w{2})?"));
        return s != null && compile.matcher(s).matches();
    }
    
    protected void onCreate(final Bundle p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: aload_1        
        //     2: invokespecial   android/app/Activity.onCreate:(Landroid/os/Bundle;)V
        //     5: aload_0        
        //     6: invokevirtual   com/google/android/gm/ViewProxyActivity.getIntent:()Landroid/content/Intent;
        //     9: ldc             "original_uri"
        //    11: invokevirtual   android/content/Intent.getParcelableExtra:(Ljava/lang/String;)Landroid/os/Parcelable;
        //    14: checkcast       Landroid/net/Uri;
        //    17: astore_2       
        //    18: aload_0        
        //    19: invokevirtual   com/google/android/gm/ViewProxyActivity.getIntent:()Landroid/content/Intent;
        //    22: ldc             "account_name"
        //    24: invokevirtual   android/content/Intent.getStringExtra:(Ljava/lang/String;)Ljava/lang/String;
        //    27: astore_3       
        //    28: new             Landroid/content/Intent;
        //    31: dup            
        //    32: ldc             "android.intent.action.VIEW"
        //    34: aload_2        
        //    35: invokespecial   android/content/Intent.<init>:(Ljava/lang/String;Landroid/net/Uri;)V
        //    38: astore          4
        //    40: aload           4
        //    42: ldc             524288
        //    44: invokevirtual   android/content/Intent.setFlags:(I)Landroid/content/Intent;
        //    47: pop            
        //    48: aload           4
        //    50: ldc             "com.android.browser.application_id"
        //    52: aload_0        
        //    53: invokevirtual   com/google/android/gm/ViewProxyActivity.getPackageName:()Ljava/lang/String;
        //    56: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
        //    59: pop            
        //    60: aload           4
        //    62: ldc             "create_new_tab"
        //    64: iconst_1       
        //    65: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Z)Landroid/content/Intent;
        //    68: pop            
        //    69: aload_2        
        //    70: invokevirtual   android/net/Uri.getHost:()Ljava/lang/String;
        //    73: astore          8
        //    75: aload_0        
        //    76: invokevirtual   com/google/android/gm/ViewProxyActivity.getContentResolver:()Landroid/content/ContentResolver;
        //    79: aload           8
        //    81: invokestatic    com/google/android/gm/ViewProxyActivity.a:(Landroid/content/ContentResolver;Ljava/lang/String;)Z
        //    84: ifeq            185
        //    87: ldc             "MD5"
        //    89: invokestatic    java/security/MessageDigest.getInstance:(Ljava/lang/String;)Ljava/security/MessageDigest;
        //    92: astore          12
        //    94: new             Ljava/util/Random;
        //    97: dup            
        //    98: invokespecial   java/util/Random.<init>:()V
        //   101: invokevirtual   java/util/Random.nextLong:()J
        //   104: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   107: astore          13
        //   109: aload           12
        //   111: new             Ljava/lang/StringBuilder;
        //   114: dup            
        //   115: invokespecial   java/lang/StringBuilder.<init>:()V
        //   118: aload           13
        //   120: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   123: aload_3        
        //   124: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   127: ldc             "com.google"
        //   129: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   132: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   135: invokevirtual   java/lang/String.getBytes:()[B
        //   138: invokevirtual   java/security/MessageDigest.update:([B)V
        //   141: aload           4
        //   143: ldc             "salt"
        //   145: aload           13
        //   147: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
        //   150: pop            
        //   151: aload           4
        //   153: ldc             "digest"
        //   155: aload           12
        //   157: invokevirtual   java/security/MessageDigest.digest:()[B
        //   160: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;[B)Landroid/content/Intent;
        //   163: pop            
        //   164: aload_3        
        //   165: invokestatic    com/google/android/gm/provider/MailProvider.eZ:(Ljava/lang/String;)Landroid/net/Uri;
        //   168: astore          16
        //   170: aload           16
        //   172: ifnull          185
        //   175: aload           4
        //   177: ldc             "account_query_uri"
        //   179: aload           16
        //   181: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
        //   184: pop            
        //   185: aload_0        
        //   186: aload           4
        //   188: invokevirtual   com/google/android/gm/ViewProxyActivity.startActivity:(Landroid/content/Intent;)V
        //   191: aload_0        
        //   192: invokevirtual   com/google/android/gm/ViewProxyActivity.finish:()V
        //   195: return         
        //   196: astore          10
        //   198: invokestatic    com/android/mail/utils/D.AU:()Ljava/lang/String;
        //   201: aload           10
        //   203: ldc             "Unable to load MD5 digest instance"
        //   205: iconst_0       
        //   206: anewarray       Ljava/lang/Object;
        //   209: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   212: pop            
        //   213: goto            185
        //   216: astore          9
        //   218: goto            191
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                       
        //  -----  -----  -----  -----  -------------------------------------------
        //  87     170    196    216    Ljava/security/NoSuchAlgorithmException;
        //  175    185    196    216    Ljava/security/NoSuchAlgorithmException;
        //  185    191    216    221    Landroid/content/ActivityNotFoundException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0185:
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
}
