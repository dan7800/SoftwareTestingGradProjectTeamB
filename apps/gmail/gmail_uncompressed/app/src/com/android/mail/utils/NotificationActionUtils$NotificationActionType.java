package com.android.mail.utils;

import java.util.*;
import com.google.common.collect.*;
import com.android.mail.providers.*;

public enum NotificationActionUtils$NotificationActionType
{
    aPU("ARCHIVE_REMOVE_LABEL", "archive", (M)new L()), 
    aPV("delete", true, 2130837646, 2131296628), 
    aPW("reply", false, 2130837748, 2131296624), 
    aPX("reply_all", false, 2130837747, 2131296625);
    
    private static final Map<String, NotificationActionUtils$NotificationActionType> aPY;
    private final int mActionIcon;
    private final int mActionIcon2;
    private final M mActionToggler;
    private final int mDisplayString;
    private final int mDisplayString2;
    private final boolean mIsDestructive;
    private final String mPersistedValue;
    
    static {
        int i = 0;
        final NotificationActionUtils$NotificationActionType[] values = values();
        final y<String, NotificationActionUtils$NotificationActionType> y = new y<String, NotificationActionUtils$NotificationActionType>();
        while (i < values.length) {
            y.p(values[i].mPersistedValue, values[i]);
            ++i;
        }
        aPY = y.Zo();
    }
    
    private NotificationActionUtils$NotificationActionType(final String mPersistedValue, final boolean mIsDestructive, final int mActionIcon, final int mDisplayString) {
        this.mPersistedValue = mPersistedValue;
        this.mIsDestructive = mIsDestructive;
        this.mActionIcon = mActionIcon;
        this.mActionIcon2 = -1;
        this.mDisplayString = mDisplayString;
        this.mDisplayString2 = -1;
        this.mActionToggler = null;
    }
    
    private NotificationActionUtils$NotificationActionType(final String mPersistedValue, final int mActionToggler) {
        this.mPersistedValue = mPersistedValue;
        this.mIsDestructive = true;
        this.mActionIcon = 2130837623;
        this.mActionIcon2 = 2130837744;
        this.mDisplayString = 2131296626;
        this.mDisplayString2 = 2131296627;
        this.mActionToggler = (M)mActionToggler;
    }
    
    public static NotificationActionUtils$NotificationActionType cB(final String s) {
        return NotificationActionUtils$NotificationActionType.aPY.get(s);
    }
    
    public final String AZ() {
        return this.mPersistedValue;
    }
    
    public final boolean Ba() {
        return this.mIsDestructive;
    }
    
    public final int q(final Folder folder) {
        if (this.mActionToggler == null || this.mActionToggler.s(folder)) {
            return this.mActionIcon;
        }
        return this.mActionIcon2;
    }
    
    public final int r(final Folder folder) {
        if (this.mActionToggler == null || this.mActionToggler.s(folder)) {
            return this.mDisplayString;
        }
        return this.mDisplayString2;
    }
}
