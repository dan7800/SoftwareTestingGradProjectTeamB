package com.android.mail.ui;

import android.content.*;
import android.database.*;
import com.android.mail.providers.*;

public final class dm extends bW
{
    public dm(final Context context, final Cursor cursor, final Folder folder) {
        super(context, cursor, 2130968757, folder);
    }
    
    @Override
    protected final boolean b(final Folder folder) {
        return folder.uR();
    }
}
