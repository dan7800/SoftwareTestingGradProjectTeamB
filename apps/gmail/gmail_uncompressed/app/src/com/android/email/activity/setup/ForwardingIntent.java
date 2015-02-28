package com.android.email.activity.setup;

import android.content.*;

public class ForwardingIntent extends Intent
{
    public ForwardingIntent(final Context context, final Class clazz) {
        super(context, clazz);
        this.setFlags(33554432);
    }
}
