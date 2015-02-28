package com.android.mail.i;

import android.net.*;
import android.media.*;
import android.content.*;
import com.google.android.mail.common.base.*;
import android.database.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import java.util.*;
import android.provider.*;

public class e extends l
{
    private final Folder aqp;
    private final String axP;
    private final boolean axQ;
    
    private e(final Context context, final String s, final Folder aqp, final String axP, final boolean axQ) {
        super(context, "Folder-" + s + '-' + axP);
        this.aqp = aqp;
        this.axP = axP;
        this.axQ = axQ;
    }
    
    public e(final Context context, final String s, final Folder folder, final boolean b) {
        this(context, s, folder, folder.azY, b);
    }
    
    public e(final Context context, final String s, final String s2, final boolean b) {
        this(context, s, null, s2, b);
    }
    
    private String bC(final String s) {
        if (s.length() == 0 || RingtoneManager.isDefault(Uri.parse(s))) {
            return s;
        }
        final RingtoneManager ringtoneManager = new RingtoneManager(this.getContext());
        ringtoneManager.setType(2);
        final Cursor cursor = ringtoneManager.getCursor();
        try {
            while (cursor.moveToNext()) {
                if (ContentUris.withAppendedId(Uri.parse(cursor.getString(2)), cursor.getLong(0)).toString().equals(s)) {
                    final String string = cursor.getString(1);
                    if (!K.gK(string)) {
                        return string;
                    }
                    continue;
                }
            }
            return null;
        }
        finally {
            cursor.close();
        }
    }
    
    private String bD(final String s) {
        if (s.length() == 0 || RingtoneManager.isDefault(Uri.parse(s))) {
            return s;
        }
        final RingtoneManager ringtoneManager = new RingtoneManager(this.getContext());
        ringtoneManager.setType(2);
        final Cursor cursor = ringtoneManager.getCursor();
        try {
            while (cursor.moveToNext()) {
                if (s.equals(cursor.getString(1))) {
                    return ContentUris.withAppendedId(Uri.parse(cursor.getString(2)), cursor.getLong(0)).toString();
                }
            }
            return null;
        }
        finally {
            cursor.close();
        }
    }
    
    public final void aW(final boolean b) {
        this.getEditor().putBoolean("notifications-enabled", b).apply();
        this.ua();
    }
    
    public final void aX(final boolean b) {
        this.getEditor().putBoolean("notification-vibrate", b).apply();
        this.ua();
    }
    
    public final void aY(final boolean b) {
        this.getEditor().putBoolean("notification-notify-every-message", b).apply();
        this.ua();
    }
    
    @Override
    protected final Object b(final String s, final Object o) {
        if ("notification-ringtone".equals(s)) {
            return this.bC((String)o);
        }
        return super.b(s, o);
    }
    
    @Override
    protected final boolean bB(final String s) {
        return this.axP != null && f.axN.contains(s);
    }
    
    public final void bE(final String s) {
        this.getEditor().putString("notification-ringtone", s).apply();
        this.ua();
    }
    
    @Override
    protected final Object c(final String s, final Object o) {
        if ("notification-ringtone".equals(s)) {
            return this.bD((String)o);
        }
        return super.b(s, o);
    }
    
    @Override
    protected final void cq(final int n) {
        if (n > 4) {
            throw new IllegalStateException("You appear to have downgraded your app. Please clear app data.");
        }
    }
    
    public final Set<String> h(final Account account) {
        boolean b;
        if (this.aqp.cy(16) || this.aqp.cy(16384)) {
            b = true;
        }
        else {
            b = false;
        }
        final boolean equals = "delete".equals(g.ao(this.getContext()).ba(account.cy(8)));
        NotificationActionUtils$NotificationActionType notificationActionUtils$NotificationActionType;
        if (b && !equals) {
            notificationActionUtils$NotificationActionType = NotificationActionUtils$NotificationActionType.aPU;
        }
        else {
            notificationActionUtils$NotificationActionType = NotificationActionUtils$NotificationActionType.aPV;
        }
        final String az = notificationActionUtils$NotificationActionType.AZ();
        String s;
        if (g.ao(this.getContext()).tz()) {
            s = NotificationActionUtils$NotificationActionType.aPX.AZ();
        }
        else {
            s = NotificationActionUtils$NotificationActionType.aPW.AZ();
        }
        final LinkedHashSet<String> set = new LinkedHashSet<String>(2);
        set.add(az);
        set.add(s);
        return set;
    }
    
    public final boolean to() {
        return this.getSharedPreferences().getBoolean("notifications-enabled", this.axQ);
    }
    
    public final boolean tt() {
        return this.getSharedPreferences().contains("notifications-enabled");
    }
    
    public final String tu() {
        return this.getSharedPreferences().getString("notification-ringtone", Settings$System.DEFAULT_NOTIFICATION_URI.toString());
    }
    
    public final boolean tv() {
        return this.getSharedPreferences().getBoolean("notification-vibrate", false);
    }
    
    public final boolean tw() {
        return this.getSharedPreferences().getBoolean("notification-notify-every-message", false);
    }
}
