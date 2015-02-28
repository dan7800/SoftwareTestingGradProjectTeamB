package com.google.android.gm;

import com.android.mail.providers.*;
import android.content.*;
import android.database.*;
import com.google.android.gm.provider.*;

public final class as extends C
{
    static final String[] aYU;
    private String aYV;
    
    static {
        aYU = new String[] { "_id", "suggest_text_1", "suggest_intent_query", "suggest_icon_1" };
    }
    
    public as(final Context context) {
        super(context);
        this.aYV = null;
        this.aYV = "android.resource://" + this.mContext.getPackageName() + "/2130837606";
    }
    
    @Override
    public final Cursor cc(final String s) {
        Object o = super.cc(s);
        if (MailProvider.Hh() != null && s != null) {
            o = new at(this, as.aYU).a(s.trim(), (Cursor)o);
        }
        return (Cursor)o;
    }
}
