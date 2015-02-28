package com.google.android.gms.common;

import android.os.*;
import com.google.android.gms.common.a.*;
import android.content.res.*;
import android.content.*;
import com.google.android.gms.*;
import android.app.*;
import android.util.*;
import java.util.*;
import android.support.v4.app.*;
import android.text.*;
import android.content.pm.*;
import com.google.android.gms.common.internal.*;

public final class f
{
    public static boolean bBU;
    public static boolean bBV;
    private static int bBW;
    private static final Object bBX;
    
    static {
        f.bBU = false;
        f.bBV = false;
        f.bBW = -1;
        bBX = new Object();
    }
    
    private static boolean Km() {
        if (f.bBU) {
            return f.bBV;
        }
        return "user".equals(Build.TYPE);
    }
    
    public static Dialog a(final int n, final Activity activity, final int n2) {
        return a(n, activity, null, n2, null);
    }
    
    private static Dialog a(int n, final Activity activity, final Fragment fragment, final int n2, final DialogInterface$OnCancelListener onCancelListener) {
        boolean b = true;
        if (d.cj((Context)activity) && n == 2) {
            n = 42;
        }
        while (true) {
            Label_0872: {
                if (!g.LQ()) {
                    break Label_0872;
                }
                final TypedValue typedValue = new TypedValue();
                activity.getTheme().resolveAttribute(16843529, typedValue, b);
                if (!"Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId))) {
                    break Label_0872;
                }
                AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)activity, 5);
                if (alertDialog$Builder == null) {
                    alertDialog$Builder = new AlertDialog$Builder((Context)activity);
                }
                final Resources resources = ((Context)activity).getResources();
                String message = null;
                switch (n) {
                    default: {
                        message = resources.getString(c.btI);
                        break;
                    }
                    case 1: {
                        final Resources resources2 = ((Context)activity).getResources();
                        while (true) {
                            Label_0562: {
                                if (resources2 == null) {
                                    break Label_0562;
                                }
                                final boolean b2 = (0xF & resources2.getConfiguration().screenLayout) > 3 && b;
                                if (!g.LO() || !b2) {
                                    final Configuration configuration = resources2.getConfiguration();
                                    if (!g.LP() || ((0xF & configuration.screenLayout) > 3 || configuration.smallestScreenWidthDp < 600) || !b) {
                                        break Label_0562;
                                    }
                                }
                                if (b) {
                                    message = resources.getString(c.bty);
                                    break;
                                }
                                message = resources.getString(c.btx);
                                break;
                            }
                            b = false;
                            continue;
                        }
                    }
                    case 3: {
                        message = resources.getString(c.btt);
                        break;
                    }
                    case 2: {
                        message = resources.getString(c.btM);
                        break;
                    }
                    case 42: {
                        message = resources.getString(c.btq);
                        break;
                    }
                    case 9: {
                        message = resources.getString(c.btJ);
                        break;
                    }
                    case 7: {
                        message = resources.getString(c.btD);
                        break;
                    }
                    case 5: {
                        message = resources.getString(c.btA);
                        break;
                    }
                }
                alertDialog$Builder.setMessage((CharSequence)message);
                if (onCancelListener != null) {
                    alertDialog$Builder.setOnCancelListener(onCancelListener);
                }
                final Intent es = es(n);
                e e;
                if (fragment == null) {
                    e = new e(activity, es, n2);
                }
                else {
                    e = new e(fragment, es, n2);
                }
                final Resources resources3 = ((Context)activity).getResources();
                String s = null;
                switch (n) {
                    default: {
                        s = resources3.getString(17039370);
                        break;
                    }
                    case 1: {
                        s = resources3.getString(c.btw);
                        break;
                    }
                    case 3: {
                        s = resources3.getString(c.bts);
                        break;
                    }
                    case 2:
                    case 42: {
                        s = resources3.getString(c.btL);
                        break;
                    }
                }
                if (s != null) {
                    alertDialog$Builder.setPositiveButton((CharSequence)s, (DialogInterface$OnClickListener)e);
                }
                switch (n) {
                    default: {
                        Log.e("GooglePlayServicesUtil", "Unexpected error code " + n);
                        return (Dialog)alertDialog$Builder.create();
                    }
                    case 0: {
                        return null;
                    }
                    case 4:
                    case 6: {
                        return (Dialog)alertDialog$Builder.create();
                    }
                    case 1: {
                        return (Dialog)alertDialog$Builder.setTitle(c.btz).create();
                    }
                    case 3: {
                        return (Dialog)alertDialog$Builder.setTitle(c.btu).create();
                    }
                    case 2: {
                        return (Dialog)alertDialog$Builder.setTitle(c.btN).create();
                    }
                    case 42: {
                        return (Dialog)alertDialog$Builder.setTitle(c.btr).create();
                    }
                    case 9: {
                        Log.e("GooglePlayServicesUtil", "Google Play services is invalid. Cannot recover.");
                        return (Dialog)alertDialog$Builder.setTitle(c.btK).create();
                    }
                    case 7: {
                        Log.e("GooglePlayServicesUtil", "Network error occurred. Please retry request later.");
                        return (Dialog)alertDialog$Builder.setTitle(c.btE).create();
                    }
                    case 8: {
                        Log.e("GooglePlayServicesUtil", "Internal error occurred. Please see logs for detailed information");
                        return (Dialog)alertDialog$Builder.create();
                    }
                    case 10: {
                        Log.e("GooglePlayServicesUtil", "Developer error occurred. Please see logs for detailed information");
                        return (Dialog)alertDialog$Builder.create();
                    }
                    case 5: {
                        Log.e("GooglePlayServicesUtil", "An invalid account was specified when connecting. Please provide a valid account.");
                        return (Dialog)alertDialog$Builder.setTitle(c.btB).create();
                    }
                    case 11: {
                        Log.e("GooglePlayServicesUtil", "The application is not licensed to the user.");
                        return (Dialog)alertDialog$Builder.create();
                    }
                }
            }
            AlertDialog$Builder alertDialog$Builder = null;
            continue;
        }
    }
    
    public static void a(int n, final Context context) {
        final boolean cj = d.cj(context);
        if (cj && n == 2) {
            n = 42;
        }
        final Resources resources = context.getResources();
        final Resources resources2 = context.getResources();
        String s = null;
        switch (n) {
            default: {
                s = resources2.getString(c.btI);
                break;
            }
            case 1: {
                s = resources2.getString(c.btF);
                break;
            }
            case 2: {
                s = resources2.getString(c.btG);
                break;
            }
            case 42: {
                s = resources2.getString(c.btp);
                break;
            }
            case 3: {
                s = resources2.getString(c.btC);
                break;
            }
            case 9: {
                s = resources2.getString(c.btJ);
                break;
            }
            case 7: {
                s = resources2.getString(c.btD);
                break;
            }
            case 5: {
                s = resources2.getString(c.btA);
                break;
            }
        }
        final String string = resources.getString(c.btv, new Object[] { ch(context) });
        final Intent es = es(n);
        PendingIntent activity;
        if (es == null) {
            activity = null;
        }
        else {
            activity = PendingIntent.getActivity(context, 0, es, 268435456);
        }
        Notification build;
        if (cj) {
            G.cc(g.LR());
            build = new Notification$Builder(context).setSmallIcon(b.bto).setPriority(2).setAutoCancel(true).setStyle((Notification$Style)new Notification$BigTextStyle().bigText((CharSequence)(s + " " + string))).addAction(b.btn, (CharSequence)resources.getString(c.btO), activity).build();
        }
        else {
            build = new Notification(17301642, (CharSequence)resources.getString(c.btH), System.currentTimeMillis());
            build.flags |= 0x10;
            build.setLatestEventInfo(context, (CharSequence)s, (CharSequence)string, activity);
        }
        ((NotificationManager)context.getSystemService("notification")).notify(39789, build);
    }
    
    public static boolean a(final int n, final Activity activity) {
        return b(n, activity, null, 0, null);
    }
    
    private static boolean a(final PackageManager packageManager) {
        synchronized (f.bBX) {
        Label_0055:
            while (true) {
                if (f.bBW != -1) {
                    break Label_0055;
                }
                while (true) {
                    try {
                        if (a(packageManager.getPackageInfo("com.google.android.gms", 64), new byte[][] { i.bDP[1] }) != null) {
                            f.bBW = 1;
                        }
                        else {
                            f.bBW = 0;
                        }
                        // monitorexit(f.bBX)
                        if (f.bBW != 0) {
                            return true;
                        }
                        break;
                    }
                    catch (PackageManager$NameNotFoundException ex) {
                        f.bBW = 0;
                        continue Label_0055;
                    }
                    continue Label_0055;
                }
                break;
            }
        }
        return false;
    }
    
    public static boolean a(final PackageManager packageManager, final int n) {
        if (packageManager == null) {
            throw new SecurityException("Unknown error: invalid Package Manager");
        }
        final String[] packagesForUid = packageManager.getPackagesForUid(n);
        if (packagesForUid.length == 0 || !a(packageManager, packagesForUid[0])) {
            throw new SecurityException("Uid is not Google Signed");
        }
        return true;
    }
    
    private static boolean a(final PackageManager packageManager, final PackageInfo packageInfo) {
        boolean b = false;
        if (packageInfo != null) {
            int n;
            if (a(packageManager) || !Km()) {
                n = 1;
            }
            else {
                n = 0;
            }
            if (n != 0) {
                final byte[] a = a(packageInfo, true);
                b = false;
                if (a != null) {
                    return true;
                }
            }
            else {
                final byte[] a2 = a(packageInfo, false);
                b = false;
                if (a2 != null) {
                    b = true;
                }
                if (!b && a(packageInfo, true) != null) {
                    Log.w("GooglePlayServicesUtil", "Test-keys aren't accepted on this build.");
                    return b;
                }
            }
        }
        return b;
    }
    
    private static boolean a(final PackageManager packageManager, final String s) {
        try {
            return a(packageManager, packageManager.getPackageInfo(s, 64));
        }
        catch (PackageManager$NameNotFoundException ex) {
            if (Log.isLoggable("GooglePlayServicesUtil", 3)) {
                Log.d("GooglePlayServicesUtil", "Package manager can't find package " + s + ", defaulting to false");
            }
            return false;
        }
    }
    
    private static byte[] a(final PackageInfo packageInfo, final boolean b) {
        if (packageInfo.signatures.length != 1) {
            Log.w("GooglePlayServicesUtil", "Package has more than one signature.");
            return null;
        }
        final byte[] byteArray = packageInfo.signatures[0].toByteArray();
        Set<byte[]> set;
        if (b) {
            set = i.KH();
        }
        else {
            set = i.KI();
        }
        if (set.contains(byteArray)) {
            return byteArray;
        }
        if (Log.isLoggable("GooglePlayServicesUtil", 2)) {
            Log.v("GooglePlayServicesUtil", "Signature not valid.  Found: \n" + Base64.encodeToString(byteArray, 0));
        }
        return null;
    }
    
    private static byte[] a(final PackageInfo packageInfo, final byte[]... array) {
        if (packageInfo.signatures.length != 1) {
            Log.w("GooglePlayServicesUtil", "Package has more than one signature.");
            return null;
        }
        final byte[] byteArray = packageInfo.signatures[0].toByteArray();
        for (int i = 0; i < array.length; ++i) {
            final byte[] array2 = array[i];
            if (Arrays.equals(array2, byteArray)) {
                return array2;
            }
        }
        if (Log.isLoggable("GooglePlayServicesUtil", 2)) {
            Log.v("GooglePlayServicesUtil", "Signature not valid.  Found: \n" + Base64.encodeToString(byteArray, 0));
        }
        return null;
    }
    
    public static boolean b(final int n, final Activity activity, final Fragment fragment, final int n2, final DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        final Dialog a = a(n, activity, fragment, n2, dialogInterface$OnCancelListener);
        if (a == null) {
            return false;
        }
        while (true) {
            try {
                final int n3 = (activity instanceof k) ? 1 : 0;
                if (n3 != 0) {
                    com.google.android.gms.common.g.b(a, dialogInterface$OnCancelListener).a(((k)activity).F(), "GooglePlayServicesErrorDialog");
                }
                else {
                    if (!g.LO()) {
                        throw new RuntimeException("This Activity does not support Fragments.");
                    }
                    com.google.android.gms.common.b.a(a, dialogInterface$OnCancelListener).show(activity.getFragmentManager(), "GooglePlayServicesErrorDialog");
                }
                return true;
            }
            catch (NoClassDefFoundError noClassDefFoundError) {
                final int n3 = 0;
                continue;
            }
            break;
        }
    }
    
    public static void ce(final Context context) {
        final int cf = cf(context);
        if (cf == 0) {
            return;
        }
        final Intent es = es(cf);
        Log.e("GooglePlayServicesUtil", "GooglePlayServices not available due to error " + cf);
        if (es == null) {
            throw new GooglePlayServicesNotAvailableException(cf);
        }
        throw new GooglePlayServicesRepairableException(cf, "Google Play Services not available", es);
    }
    
    public static int cf(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
        //     4: astore_1       
        //     5: getstatic       com/google/android/gms/common/internal/c.bEL:Z
        //     8: ifne            22
        //    11: aload_0        
        //    12: invokevirtual   android/content/Context.getResources:()Landroid/content/res/Resources;
        //    15: getstatic       com/google/android/gms/c.btI:I
        //    18: invokevirtual   android/content/res/Resources.getString:(I)Ljava/lang/String;
        //    21: pop            
        //    22: getstatic       com/google/android/gms/common/internal/c.bEL:Z
        //    25: ifne            160
        //    28: aload_0        
        //    29: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
        //    32: aload_0        
        //    33: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //    36: sipush          128
        //    39: invokevirtual   android/content/pm/PackageManager.getApplicationInfo:(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
        //    42: astore          30
        //    44: aload           30
        //    46: astore          27
        //    48: aload           27
        //    50: getfield        android/content/pm/ApplicationInfo.metaData:Landroid/os/Bundle;
        //    53: astore          28
        //    55: aload           28
        //    57: ifnull          149
        //    60: aload           28
        //    62: ldc_w           "com.google.android.gms.version"
        //    65: invokevirtual   android/os/Bundle.getInt:(Ljava/lang/String;)I
        //    68: istore          29
        //    70: iload           29
        //    72: ldc_w           6174000
        //    75: if_icmpeq       160
        //    78: new             Ljava/lang/IllegalStateException;
        //    81: dup            
        //    82: new             Ljava/lang/StringBuilder;
        //    85: dup            
        //    86: ldc_w           "The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected 6174000 but found "
        //    89: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    92: iload           29
        //    94: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    97: ldc_w           ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version"
        //   100: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   103: ldc_w           "\" android:value=\"@integer/google_play_services_version\" />"
        //   106: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   109: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   112: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;)V
        //   115: athrow         
        //   116: astore          31
        //   118: ldc             "GooglePlayServicesUtil"
        //   120: ldc_w           "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."
        //   123: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   126: pop            
        //   127: goto            22
        //   130: astore          25
        //   132: ldc             "GooglePlayServicesUtil"
        //   134: ldc_w           "This should never happen."
        //   137: aload           25
        //   139: invokestatic    android/util/Log.wtf:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   142: pop            
        //   143: aconst_null    
        //   144: astore          27
        //   146: goto            48
        //   149: new             Ljava/lang/IllegalStateException;
        //   152: dup            
        //   153: ldc_w           "A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"
        //   156: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;)V
        //   159: athrow         
        //   160: aload_1        
        //   161: ldc_w           "com.google.android.gms"
        //   164: bipush          64
        //   166: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
        //   169: astore          4
        //   171: aload           4
        //   173: getfield        android/content/pm/PackageInfo.versionCode:I
        //   176: invokestatic    com/google/android/gms/common/a/d.eB:(I)Z
        //   179: ifeq            357
        //   182: invokestatic    com/google/android/gms/common/f.Km:()Z
        //   185: ifeq            261
        //   188: iconst_0       
        //   189: istore          17
        //   191: iconst_3       
        //   192: anewarray       [B
        //   195: astore          18
        //   197: aload           18
        //   199: iconst_0       
        //   200: getstatic       com/google/android/gms/common/i.bDs:[[B
        //   203: iload           17
        //   205: aaload         
        //   206: aastore        
        //   207: aload           18
        //   209: iconst_1       
        //   210: getstatic       com/google/android/gms/common/i.bDy:[[B
        //   213: iload           17
        //   215: aaload         
        //   216: aastore        
        //   217: aload           18
        //   219: iconst_2       
        //   220: getstatic       com/google/android/gms/common/i.bDx:[[B
        //   223: iload           17
        //   225: aaload         
        //   226: aastore        
        //   227: aload           4
        //   229: aload           18
        //   231: invokestatic    com/google/android/gms/common/f.a:(Landroid/content/pm/PackageInfo;[[B)[B
        //   234: ifnonnull       267
        //   237: ldc             "GooglePlayServicesUtil"
        //   239: ldc_w           "Google Play Services signature invalid on Glass."
        //   242: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   245: pop            
        //   246: bipush          9
        //   248: ireturn        
        //   249: astore_2       
        //   250: ldc             "GooglePlayServicesUtil"
        //   252: ldc_w           "Google Play services is missing."
        //   255: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   258: pop            
        //   259: iconst_1       
        //   260: ireturn        
        //   261: iconst_1       
        //   262: istore          17
        //   264: goto            191
        //   267: aload_0        
        //   268: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //   271: astore          19
        //   273: aload_1        
        //   274: aload           19
        //   276: bipush          64
        //   278: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
        //   281: astore          22
        //   283: aload_1        
        //   284: aload           22
        //   286: invokestatic    com/google/android/gms/common/f.a:(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
        //   289: ifne            468
        //   292: ldc             "GooglePlayServicesUtil"
        //   294: new             Ljava/lang/StringBuilder;
        //   297: dup            
        //   298: ldc_w           "Calling package "
        //   301: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   304: aload           22
        //   306: getfield        android/content/pm/PackageInfo.packageName:Ljava/lang/String;
        //   309: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   312: ldc_w           " signature invalid on Glass."
        //   315: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   318: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   321: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   324: pop            
        //   325: bipush          9
        //   327: ireturn        
        //   328: astore          20
        //   330: ldc             "GooglePlayServicesUtil"
        //   332: new             Ljava/lang/StringBuilder;
        //   335: dup            
        //   336: ldc_w           "Could not get info for calling package: "
        //   339: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   342: aload           19
        //   344: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   347: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   350: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   353: pop            
        //   354: bipush          9
        //   356: ireturn        
        //   357: aload_0        
        //   358: invokestatic    com/google/android/gms/common/a/d.cj:(Landroid/content/Context;)Z
        //   361: ifeq            387
        //   364: aload           4
        //   366: getstatic       com/google/android/gms/common/i.bDs:[[B
        //   369: invokestatic    com/google/android/gms/common/f.a:(Landroid/content/pm/PackageInfo;[[B)[B
        //   372: ifnonnull       468
        //   375: ldc             "GooglePlayServicesUtil"
        //   377: ldc_w           "Google Play services signature invalid."
        //   380: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   383: pop            
        //   384: bipush          9
        //   386: ireturn        
        //   387: aload_1        
        //   388: ldc_w           "com.android.vending"
        //   391: bipush          64
        //   393: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
        //   396: astore          7
        //   398: aload           7
        //   400: getstatic       com/google/android/gms/common/i.bDs:[[B
        //   403: invokestatic    com/google/android/gms/common/f.a:(Landroid/content/pm/PackageInfo;[[B)[B
        //   406: astore          8
        //   408: aload           8
        //   410: ifnonnull       439
        //   413: ldc             "GooglePlayServicesUtil"
        //   415: ldc_w           "Google Play Store signature invalid."
        //   418: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   421: pop            
        //   422: bipush          9
        //   424: ireturn        
        //   425: astore          5
        //   427: ldc             "GooglePlayServicesUtil"
        //   429: ldc_w           "Google Play Store is missing."
        //   432: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   435: pop            
        //   436: bipush          9
        //   438: ireturn        
        //   439: aload           4
        //   441: iconst_1       
        //   442: anewarray       [B
        //   445: dup            
        //   446: iconst_0       
        //   447: aload           8
        //   449: aastore        
        //   450: invokestatic    com/google/android/gms/common/f.a:(Landroid/content/pm/PackageInfo;[[B)[B
        //   453: ifnonnull       468
        //   456: ldc             "GooglePlayServicesUtil"
        //   458: ldc_w           "Google Play services signature invalid."
        //   461: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   464: pop            
        //   465: bipush          9
        //   467: ireturn        
        //   468: ldc_w           6174000
        //   471: invokestatic    com/google/android/gms/common/a/d.eA:(I)I
        //   474: istore          9
        //   476: aload           4
        //   478: getfield        android/content/pm/PackageInfo.versionCode:I
        //   481: invokestatic    com/google/android/gms/common/a/d.eA:(I)I
        //   484: iload           9
        //   486: if_icmpge       518
        //   489: ldc             "GooglePlayServicesUtil"
        //   491: new             Ljava/lang/StringBuilder;
        //   494: dup            
        //   495: ldc_w           "Google Play services out of date.  Requires 6174000 but found "
        //   498: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   501: aload           4
        //   503: getfield        android/content/pm/PackageInfo.versionCode:I
        //   506: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   509: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   512: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   515: pop            
        //   516: iconst_2       
        //   517: ireturn        
        //   518: aload_1        
        //   519: ldc_w           "com.google.android.gms"
        //   522: iconst_0       
        //   523: invokevirtual   android/content/pm/PackageManager.getApplicationInfo:(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
        //   526: astore          12
        //   528: aload           12
        //   530: getfield        android/content/pm/ApplicationInfo.enabled:Z
        //   533: ifne            556
        //   536: iconst_3       
        //   537: ireturn        
        //   538: astore          10
        //   540: ldc             "GooglePlayServicesUtil"
        //   542: ldc_w           "Google Play services missing when getting application info."
        //   545: invokestatic    android/util/Log.wtf:(Ljava/lang/String;Ljava/lang/String;)I
        //   548: pop            
        //   549: aload           10
        //   551: invokevirtual   android/content/pm/PackageManager$NameNotFoundException.printStackTrace:()V
        //   554: iconst_1       
        //   555: ireturn        
        //   556: iconst_0       
        //   557: ireturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                     
        //  -----  -----  -----  -----  ---------------------------------------------------------
        //  11     22     116    130    Ljava/lang/Throwable;
        //  28     44     130    149    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  160    171    249    261    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  273    325    328    357    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  387    398    425    439    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  518    528    538    556    Landroid/content/pm/PackageManager$NameNotFoundException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0048:
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
    
    public static Context cg(final Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        }
        catch (PackageManager$NameNotFoundException ex) {
            return null;
        }
    }
    
    private static String ch(final Context context) {
        String s = context.getApplicationInfo().name;
        if (!TextUtils.isEmpty((CharSequence)s)) {
            return s;
        }
        s = context.getPackageName();
        final PackageManager packageManager = context.getApplicationContext().getPackageManager();
        while (true) {
            try {
                final ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
                if (applicationInfo != null) {
                    s = packageManager.getApplicationLabel(applicationInfo).toString();
                }
                return s;
            }
            catch (PackageManager$NameNotFoundException ex) {
                final ApplicationInfo applicationInfo = null;
                continue;
            }
            break;
        }
    }
    
    public static String er(final int n) {
        switch (n) {
            default: {
                return "UNKNOWN_ERROR_CODE";
            }
            case 0: {
                return "SUCCESS";
            }
            case 1: {
                return "SERVICE_MISSING";
            }
            case 2: {
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            }
            case 3: {
                return "SERVICE_DISABLED";
            }
            case 4: {
                return "SIGN_IN_REQUIRED";
            }
            case 5: {
                return "INVALID_ACCOUNT";
            }
            case 6: {
                return "RESOLUTION_REQUIRED";
            }
            case 7: {
                return "NETWORK_ERROR";
            }
            case 8: {
                return "INTERNAL_ERROR";
            }
            case 9: {
                return "SERVICE_INVALID";
            }
            case 10: {
                return "DEVELOPER_ERROR";
            }
            case 11: {
                return "LICENSE_CHECK_FAILED";
            }
        }
    }
    
    @Deprecated
    private static Intent es(final int n) {
        switch (n) {
            default: {
                return null;
            }
            case 1:
            case 2: {
                return t.fW("com.google.android.gms");
            }
            case 42: {
                return t.Lm();
            }
            case 3: {
                return t.fV("com.google.android.gms");
            }
        }
    }
    
    public static boolean et(final int n) {
        switch (n) {
            default: {
                return false;
            }
            case 1:
            case 2:
            case 3:
            case 9: {
                return true;
            }
        }
    }
}
