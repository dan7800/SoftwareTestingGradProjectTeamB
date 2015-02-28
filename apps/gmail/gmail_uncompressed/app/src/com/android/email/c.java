package com.android.email;

import android.content.*;
import android.net.*;
import android.os.*;

public final class c extends BroadcastReceiver
{
    private Thread LA;
    private boolean LB;
    private final PowerManager$WakeLock Lx;
    private final ConnectivityManager Ly;
    private boolean Lz;
    private final Object fK;
    private final Context mContext;
    private final String mName;
    
    public c(final Context mContext, final String mName) {
        this.fK = new Object();
        this.Lz = false;
        this.LB = true;
        this.mContext = mContext;
        this.mName = mName;
        this.Ly = (ConnectivityManager)mContext.getSystemService("connectivity");
        this.Lx = ((PowerManager)mContext.getSystemService("power")).newWakeLock(1, mName);
        this.mContext.registerReceiver((BroadcastReceiver)this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }
    
    private static int a(final ConnectivityManager connectivityManager) {
        final NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return -1;
        }
        return activeNetworkInfo.getType();
    }
    
    public static boolean gB() {
        return ContentResolver.getMasterSyncAutomatically();
    }
    
    public static int m(final Context context) {
        return a((ConnectivityManager)context.getSystemService("connectivity"));
    }
    
    public final void gC() {
        this.Lz = true;
        final Thread la = this.LA;
        if (la != null) {
            la.interrupt();
        }
    }
    
    public final boolean gD() {
        return this.Ly.getActiveNetworkInfo() != null;
    }
    
    public final int gE() {
        return a(this.Ly);
    }
    
    public final void gF() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_0       
        //     1: istore_1       
        //     2: aload_0        
        //     3: getfield        com/android/email/c.LB:Z
        //     6: ifne            19
        //     9: new             Ljava/lang/IllegalStateException;
        //    12: dup            
        //    13: ldc             "ConnectivityManager not registered"
        //    15: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;)V
        //    18: athrow         
        //    19: aload_0        
        //    20: invokestatic    java/lang/Thread.currentThread:()Ljava/lang/Thread;
        //    23: putfield        com/android/email/c.LA:Ljava/lang/Thread;
        //    26: aload_0        
        //    27: getfield        com/android/email/c.Lx:Landroid/os/PowerManager$WakeLock;
        //    30: invokevirtual   android/os/PowerManager$WakeLock.acquire:()V
        //    33: aload_0        
        //    34: getfield        com/android/email/c.Lz:Z
        //    37: ifne            232
        //    40: aload_0        
        //    41: getfield        com/android/email/c.Ly:Landroid/net/ConnectivityManager;
        //    44: invokevirtual   android/net/ConnectivityManager.getActiveNetworkInfo:()Landroid/net/NetworkInfo;
        //    47: ifnull          115
        //    50: iload_1        
        //    51: ifeq            92
        //    54: getstatic       com/android/email/b.DEBUG:Z
        //    57: ifeq            92
        //    60: ldc             "EmailConnectivityMgr"
        //    62: new             Ljava/lang/StringBuilder;
        //    65: dup            
        //    66: invokespecial   java/lang/StringBuilder.<init>:()V
        //    69: aload_0        
        //    70: getfield        com/android/email/c.mName:Ljava/lang/String;
        //    73: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    76: ldc             ": Connectivity wait ended"
        //    78: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    81: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    84: iconst_0       
        //    85: anewarray       Ljava/lang/Object;
        //    88: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    91: pop            
        //    92: aload_0        
        //    93: getfield        com/android/email/c.Lx:Landroid/os/PowerManager$WakeLock;
        //    96: invokevirtual   android/os/PowerManager$WakeLock.isHeld:()Z
        //    99: ifeq            109
        //   102: aload_0        
        //   103: getfield        com/android/email/c.Lx:Landroid/os/PowerManager$WakeLock;
        //   106: invokevirtual   android/os/PowerManager$WakeLock.release:()V
        //   109: aload_0        
        //   110: aconst_null    
        //   111: putfield        com/android/email/c.LA:Ljava/lang/Thread;
        //   114: return         
        //   115: iload_1        
        //   116: ifne            160
        //   119: getstatic       com/android/email/b.DEBUG:Z
        //   122: ifeq            260
        //   125: ldc             "EmailConnectivityMgr"
        //   127: new             Ljava/lang/StringBuilder;
        //   130: dup            
        //   131: invokespecial   java/lang/StringBuilder.<init>:()V
        //   134: aload_0        
        //   135: getfield        com/android/email/c.mName:Ljava/lang/String;
        //   138: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   141: ldc             ": Connectivity waiting..."
        //   143: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   146: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   149: iconst_0       
        //   150: anewarray       Ljava/lang/Object;
        //   153: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   156: pop            
        //   157: goto            260
        //   160: aload_0        
        //   161: getfield        com/android/email/c.fK:Ljava/lang/Object;
        //   164: astore          4
        //   166: aload           4
        //   168: monitorenter   
        //   169: aload_0        
        //   170: getfield        com/android/email/c.Lx:Landroid/os/PowerManager$WakeLock;
        //   173: invokevirtual   android/os/PowerManager$WakeLock.release:()V
        //   176: aload_0        
        //   177: getfield        com/android/email/c.fK:Ljava/lang/Object;
        //   180: ldc2_w          600000
        //   183: invokevirtual   java/lang/Object.wait:(J)V
        //   186: aload_0        
        //   187: getfield        com/android/email/c.Lx:Landroid/os/PowerManager$WakeLock;
        //   190: invokevirtual   android/os/PowerManager$WakeLock.acquire:()V
        //   193: aload           4
        //   195: monitorexit    
        //   196: goto            33
        //   199: astore          5
        //   201: aload           4
        //   203: monitorexit    
        //   204: aload           5
        //   206: athrow         
        //   207: astore_2       
        //   208: aload_0        
        //   209: getfield        com/android/email/c.Lx:Landroid/os/PowerManager$WakeLock;
        //   212: invokevirtual   android/os/PowerManager$WakeLock.isHeld:()Z
        //   215: ifeq            225
        //   218: aload_0        
        //   219: getfield        com/android/email/c.Lx:Landroid/os/PowerManager$WakeLock;
        //   222: invokevirtual   android/os/PowerManager$WakeLock.release:()V
        //   225: aload_0        
        //   226: aconst_null    
        //   227: putfield        com/android/email/c.LA:Ljava/lang/Thread;
        //   230: aload_2        
        //   231: athrow         
        //   232: aload_0        
        //   233: getfield        com/android/email/c.Lx:Landroid/os/PowerManager$WakeLock;
        //   236: invokevirtual   android/os/PowerManager$WakeLock.isHeld:()Z
        //   239: ifeq            249
        //   242: aload_0        
        //   243: getfield        com/android/email/c.Lx:Landroid/os/PowerManager$WakeLock;
        //   246: invokevirtual   android/os/PowerManager$WakeLock.release:()V
        //   249: aload_0        
        //   250: aconst_null    
        //   251: putfield        com/android/email/c.LA:Ljava/lang/Thread;
        //   254: return         
        //   255: astore          6
        //   257: goto            186
        //   260: iconst_1       
        //   261: istore_1       
        //   262: goto            160
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  33     50     207    232    Any
        //  54     92     207    232    Any
        //  119    157    207    232    Any
        //  160    169    207    232    Any
        //  169    176    199    207    Any
        //  176    186    255    260    Ljava/lang/InterruptedException;
        //  176    186    199    207    Any
        //  186    196    199    207    Any
        //  201    207    207    232    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0186:
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
    
    public final void onReceive(final Context context, final Intent intent) {
        if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            final Bundle extras = intent.getExtras();
            if (extras != null) {
                final NetworkInfo networkInfo = (NetworkInfo)extras.get("networkInfo");
                if (networkInfo != null) {
                    final NetworkInfo$State state = networkInfo.getState();
                    if (state == NetworkInfo$State.CONNECTED) {
                        synchronized (this.fK) {
                            this.fK.notifyAll();
                            // monitorexit(this.fK)
                            networkInfo.getType();
                            return;
                        }
                    }
                    if (state == NetworkInfo$State.DISCONNECTED) {
                        networkInfo.getType();
                    }
                }
            }
        }
    }
    
    public final void unregister() {
        try {
            this.mContext.unregisterReceiver((BroadcastReceiver)this);
        }
        catch (RuntimeException ex) {}
        finally {
            this.LB = false;
        }
    }
}
