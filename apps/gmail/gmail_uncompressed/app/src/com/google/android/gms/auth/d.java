package com.google.android.gms.auth;

import android.accounts.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.internal.*;
import android.util.*;
import java.io.*;
import android.os.*;
import android.text.*;
import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.*;
import android.content.*;
import android.content.pm.*;

public final class d
{
    public static final String KEY_ANDROID_PACKAGE_NAME;
    public static final String KEY_CALLER_UID;
    private static final ComponentName bxm;
    private static final ComponentName bxn;
    private static final Intent bxo;
    private static final Intent bxp;
    
    static {
        final int sdk_INT = Build$VERSION.SDK_INT;
        KEY_CALLER_UID = "callerUid";
        final int sdk_INT2 = Build$VERSION.SDK_INT;
        KEY_ANDROID_PACKAGE_NAME = "androidPackageName";
        bxm = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
        bxn = new ComponentName("com.google.android.gms", "com.google.android.gms.recovery.RecoveryService");
        bxo = new Intent().setPackage("com.google.android.gms").setComponent(d.bxm);
        bxp = new Intent().setPackage("com.google.android.gms").setComponent(d.bxn);
    }
    
    @Deprecated
    public static void Y(final Context context, final String s) {
        AccountManager.get(context).invalidateAuthToken("com.google", s);
    }
    
    public static List<AccountChangeEvent> Z(final Context context, final String s) {
        G.f(s, (Object)"accountName must be provided");
        G.fY("Calling this from your main thread can lead to deadlock");
        final Context applicationContext = context.getApplicationContext();
        ce(applicationContext);
        final h h = new h();
        if (applicationContext.bindService(d.bxo, (ServiceConnection)h, 1)) {
            try {
                return cO.I(h.Kn()).a(new AccountChangeEventsRequest().fJ(s).eq(0)).JQ();
            }
            catch (RemoteException ex) {
                Log.i("GoogleAuthUtil", "GMS remote exception ", (Throwable)ex);
                throw new IOException("remote exception");
            }
            catch (InterruptedException ex2) {
                throw new GoogleAuthException("Interrupted");
            }
            finally {
                applicationContext.unbindService((ServiceConnection)h);
            }
        }
        throw new IOException("Could not bind to service with the given context.");
    }
    
    private static String a(final Context context, final String s, final String s2, final Bundle bundle) {
        final Context applicationContext = context.getApplicationContext();
        G.fY("Calling this from your main thread can lead to deadlock");
        ce(applicationContext);
        while (true) {
            Bundle bundle2 = null;
            Label_0029: {
                if (bundle == null) {
                    bundle2 = new Bundle();
                    break Label_0029;
                }
                Label_0141: {
                    break Label_0141;
                    while (true) {
                        while (true) {
                            Label_0478: {
                                try {
                                    final h h;
                                    final Bundle a = cO.I(h.Kn()).a(s, s2, bundle2);
                                    final String string = a.getString("authtoken");
                                    if (!TextUtils.isEmpty((CharSequence)string)) {
                                        return string;
                                    }
                                    final String string2 = a.getString("Error");
                                    final Intent intent = (Intent)a.getParcelable("userRecoveryIntent");
                                    if (!"BadAuthentication".equals(string2) && !"CaptchaRequired".equals(string2) && !"DeviceManagementRequiredOrSyncDisabled".equals(string2) && !"NeedPermission".equals(string2) && !"NeedsBrowser".equals(string2) && !"UserCancel".equals(string2) && !"AppDownloadRequired".equals(string2) && !Status.bAE.JW().equals(string2) && !Status.bAF.JW().equals(string2) && !Status.bAG.JW().equals(string2) && !Status.bAH.JW().equals(string2) && !Status.bAI.JW().equals(string2) && !Status.bAJ.JW().equals(string2)) {
                                        goto Label_0383;
                                    }
                                    break Label_0478;
                                    bundle2 = new Bundle(bundle);
                                    break;
                                    // iftrue(Label_0389:, !b)
                                    throw new UserRecoverableAuthException(string2, intent);
                                }
                                catch (RemoteException ex) {
                                    try {
                                        Log.i("GoogleAuthUtil", "GMS remote exception ", (Throwable)ex);
                                        throw new IOException("remote exception");
                                    }
                                    finally {
                                        final h h;
                                        applicationContext.unbindService((ServiceConnection)h);
                                    }
                                }
                                catch (InterruptedException ex2) {
                                    throw new GoogleAuthException("Interrupted");
                                }
                                goto Label_0425;
                            }
                            final boolean b = true;
                            continue;
                        }
                    }
                }
            }
            final String packageName = context.getApplicationInfo().packageName;
            bundle2.putString("clientPackageName", packageName);
            if (!bundle2.containsKey(d.KEY_ANDROID_PACKAGE_NAME)) {
                bundle2.putString(d.KEY_ANDROID_PACKAGE_NAME, packageName);
            }
            final h h = new h();
            if (applicationContext.bindService(d.bxo, (ServiceConnection)h, 1)) {
                continue;
            }
            break;
        }
        throw new IOException("Could not bind to service with the given context.");
    }
    
    private static String b(final Context context, final String s, final String s2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            return a(context, s, s2, bundle);
        }
        catch (GooglePlayServicesAvailabilityException ex) {
            final int jr = ex.JR();
            if (p(context, jr)) {
                final e e = new e(context.getApplicationContext());
                e.sendMessageDelayed(e.obtainMessage(1), 30000L);
            }
            else {
                f.a(jr, context);
            }
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        }
        catch (UserRecoverableAuthException ex2) {
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        }
    }
    
    private static void ce(final Context context) {
        try {
            f.ce(context);
        }
        catch (GooglePlayServicesRepairableException ex) {
            throw new GooglePlayServicesAvailabilityException(ex.JR(), ex.getMessage(), ex.getIntent());
        }
        catch (GooglePlayServicesNotAvailableException ex2) {
            throw new GoogleAuthException(ex2.getMessage());
        }
    }
    
    public static String e(final Context context, final String s, final String s2, final String s3) {
        if (TextUtils.isEmpty((CharSequence)s3)) {
            throw new IllegalArgumentException("Authority cannot be empty or null.");
        }
        final Bundle bundle = new Bundle();
        final Bundle bundle2 = new Bundle();
        ContentResolver.validateSyncExtrasBundle(bundle2);
        bundle.putString("authority", s3);
        bundle.putBundle("sync_extras", bundle2);
        bundle.putBoolean("handle_notification", true);
        return b(context, s, s2, bundle);
    }
    
    private static boolean p(final Context context, final int n) {
        if (n == 1) {
            final PackageManager packageManager = context.getPackageManager();
            try {
                if (packageManager.getApplicationInfo("com.google.android.gms", 8192).enabled) {
                    return true;
                }
            }
            catch (PackageManager$NameNotFoundException ex) {}
        }
        return false;
    }
    
    public static String w(final Context context, final String s, final String s2) {
        final Bundle bundle = new Bundle();
        bundle.putBoolean("handle_notification", true);
        return b(context, s, s2, bundle);
    }
}
