package android.support.v4.app;

import java.lang.reflect.*;
import android.util.*;
import android.os.*;
import android.graphics.*;
import java.util.*;
import android.app.*;

final class aw
{
    private static final Object dX;
    private static Field dY;
    private static boolean dZ;
    private static final Object ea;
    
    static {
        dX = new Object();
        ea = new Object();
    }
    
    public static Bundle a(final Notification p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       android/support/v4/app/aw.dX:Ljava/lang/Object;
        //     3: astore_1       
        //     4: aload_1        
        //     5: monitorenter   
        //     6: getstatic       android/support/v4/app/aw.dZ:Z
        //     9: ifeq            16
        //    12: aload_1        
        //    13: monitorexit    
        //    14: aconst_null    
        //    15: areturn        
        //    16: getstatic       android/support/v4/app/aw.dY:Ljava/lang/reflect/Field;
        //    19: ifnonnull       71
        //    22: ldc             Landroid/app/Notification;.class
        //    24: ldc             "extras"
        //    26: invokevirtual   java/lang/Class.getDeclaredField:(Ljava/lang/String;)Ljava/lang/reflect/Field;
        //    29: astore          8
        //    31: ldc             Landroid/os/Bundle;.class
        //    33: aload           8
        //    35: invokevirtual   java/lang/reflect/Field.getType:()Ljava/lang/Class;
        //    38: invokevirtual   java/lang/Class.isAssignableFrom:(Ljava/lang/Class;)Z
        //    41: ifne            60
        //    44: ldc             "NotificationCompat"
        //    46: ldc             "Notification.extras field is not of type Bundle"
        //    48: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //    51: pop            
        //    52: iconst_1       
        //    53: putstatic       android/support/v4/app/aw.dZ:Z
        //    56: aload_1        
        //    57: monitorexit    
        //    58: aconst_null    
        //    59: areturn        
        //    60: aload           8
        //    62: iconst_1       
        //    63: invokevirtual   java/lang/reflect/Field.setAccessible:(Z)V
        //    66: aload           8
        //    68: putstatic       android/support/v4/app/aw.dY:Ljava/lang/reflect/Field;
        //    71: getstatic       android/support/v4/app/aw.dY:Ljava/lang/reflect/Field;
        //    74: aload_0        
        //    75: invokevirtual   java/lang/reflect/Field.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    78: checkcast       Landroid/os/Bundle;
        //    81: astore          7
        //    83: aload           7
        //    85: ifnonnull       106
        //    88: new             Landroid/os/Bundle;
        //    91: dup            
        //    92: invokespecial   android/os/Bundle.<init>:()V
        //    95: astore          7
        //    97: getstatic       android/support/v4/app/aw.dY:Ljava/lang/reflect/Field;
        //   100: aload_0        
        //   101: aload           7
        //   103: invokevirtual   java/lang/reflect/Field.set:(Ljava/lang/Object;Ljava/lang/Object;)V
        //   106: aload_1        
        //   107: monitorexit    
        //   108: aload           7
        //   110: areturn        
        //   111: astore_2       
        //   112: aload_1        
        //   113: monitorexit    
        //   114: aload_2        
        //   115: athrow         
        //   116: astore          5
        //   118: ldc             "NotificationCompat"
        //   120: ldc             "Unable to access notification extras"
        //   122: aload           5
        //   124: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   127: pop            
        //   128: iconst_1       
        //   129: putstatic       android/support/v4/app/aw.dZ:Z
        //   132: aload_1        
        //   133: monitorexit    
        //   134: aconst_null    
        //   135: areturn        
        //   136: astore_3       
        //   137: ldc             "NotificationCompat"
        //   139: ldc             "Unable to access notification extras"
        //   141: aload_3        
        //   142: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   145: pop            
        //   146: goto            128
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                              
        //  -----  -----  -----  -----  ----------------------------------
        //  6      14     111    116    Any
        //  16     56     116    128    Ljava/lang/IllegalAccessException;
        //  16     56     136    149    Ljava/lang/NoSuchFieldException;
        //  16     56     111    116    Any
        //  56     58     111    116    Any
        //  60     71     116    128    Ljava/lang/IllegalAccessException;
        //  60     71     136    149    Ljava/lang/NoSuchFieldException;
        //  60     71     111    116    Any
        //  71     83     116    128    Ljava/lang/IllegalAccessException;
        //  71     83     136    149    Ljava/lang/NoSuchFieldException;
        //  71     83     111    116    Any
        //  88     106    116    128    Ljava/lang/IllegalAccessException;
        //  88     106    136    149    Ljava/lang/NoSuchFieldException;
        //  88     106    111    116    Any
        //  106    108    111    116    Any
        //  118    128    111    116    Any
        //  128    134    111    116    Any
        //  137    146    111    116    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0016:
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
    
    public static SparseArray<Bundle> a(final List<Bundle> list) {
        SparseArray sparseArray = null;
        for (int size = list.size(), i = 0; i < size; ++i) {
            final Bundle bundle = list.get(i);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                }
                sparseArray.put(i, (Object)bundle);
            }
        }
        return (SparseArray<Bundle>)sparseArray;
    }
    
    public static ArrayList<Parcelable> a(final au[] array) {
        ArrayList<Parcelable> list;
        if (array == null) {
            list = null;
        }
        else {
            list = new ArrayList<Parcelable>(array.length);
            for (final au au : array) {
                final Bundle bundle = new Bundle();
                bundle.putInt("icon", au.getIcon());
                bundle.putCharSequence("title", au.getTitle());
                bundle.putParcelable("actionIntent", (Parcelable)au.aj());
                bundle.putBundle("extras", au.getExtras());
                bundle.putParcelableArray("remoteInputs", (Parcelable[])aW.b(au.ak()));
                list.add((Parcelable)bundle);
            }
        }
        return list;
    }
    
    public static void a(final U u, final CharSequence bigContentTitle, final boolean b, final CharSequence summaryText, final Bitmap bitmap, final Bitmap bitmap2, final boolean b2) {
        final Notification$BigPictureStyle bigPicture = new Notification$BigPictureStyle(u.ah()).setBigContentTitle(bigContentTitle).bigPicture(bitmap);
        if (b2) {
            bigPicture.bigLargeIcon(bitmap2);
        }
        if (b) {
            bigPicture.setSummaryText(summaryText);
        }
    }
    
    public static void a(final U u, final CharSequence bigContentTitle, final boolean b, final CharSequence summaryText, final CharSequence charSequence) {
        final Notification$BigTextStyle bigText = new Notification$BigTextStyle(u.ah()).setBigContentTitle(bigContentTitle).bigText(charSequence);
        if (b) {
            bigText.setSummaryText(summaryText);
        }
    }
    
    public static void a(final U u, final CharSequence bigContentTitle, final boolean b, final CharSequence summaryText, final ArrayList<CharSequence> list) {
        final Notification$InboxStyle setBigContentTitle = new Notification$InboxStyle(u.ah()).setBigContentTitle(bigContentTitle);
        if (b) {
            setBigContentTitle.setSummaryText(summaryText);
        }
        final Iterator<CharSequence> iterator = list.iterator();
        while (iterator.hasNext()) {
            setBigContentTitle.addLine((CharSequence)iterator.next());
        }
    }
    
    public static Bundle b(final Notification$Builder notification$Builder, final au au) {
        notification$Builder.addAction(au.getIcon(), au.getTitle(), au.aj());
        final Bundle bundle = new Bundle(au.getExtras());
        if (au.ak() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", (Parcelable[])aW.b(au.ak()));
        }
        return bundle;
    }
}
