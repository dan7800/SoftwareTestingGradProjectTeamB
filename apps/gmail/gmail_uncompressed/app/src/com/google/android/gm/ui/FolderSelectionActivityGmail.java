package com.google.android.gm.ui;

import com.android.mail.ui.*;
import com.android.mail.providers.*;
import com.android.mail.widget.*;
import android.content.*;
import java.util.*;

public class FolderSelectionActivityGmail extends bR
{
    @Override
    protected final void a(final int n, final Account account, final Folder folder) {
        b.a((Context)this, n, account, folder.type, folder.ayg, folder.azZ.aPj, folder.aAc, folder.name);
        final Intent intent = new Intent();
        intent.putExtra("appWidgetId", n);
        this.setResult(-1, intent);
        this.finish();
    }
    
    @Override
    protected final ArrayList<Integer> zw() {
        final ArrayList<Integer> zw = super.zw();
        if (this.aKk) {
            zw.add(512);
        }
        return zw;
    }
}
