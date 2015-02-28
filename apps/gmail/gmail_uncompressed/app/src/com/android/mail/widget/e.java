package com.android.mail.widget;

import com.android.mail.ui.*;
import android.content.*;
import com.android.mail.utils.*;
import android.widget.*;
import com.android.mail.providers.*;
import android.graphics.*;
import java.util.*;

public final class e extends bz
{
    public e(final Context context) {
        super(context);
    }
    
    private static int dt(final int n) {
        switch (n) {
            default: {
                return 0;
            }
            case 0: {
                return 2131559014;
            }
            case 1: {
                return 2131559015;
            }
            case 2: {
                return 2131559016;
            }
        }
    }
    
    @Override
    public final void a(final Conversation conversation, final p p3, final int n) {
        super.a(conversation, p3, n);
    }
    
    public final void b(final RemoteViews remoteViews) {
        final Iterator<Folder> iterator = this.aIZ.iterator();
        int n = 0;
        while (true) {
            while (iterator.hasNext()) {
                final Folder folder = iterator.next();
                final int dt = dt(n);
                if (dt != 0) {
                    remoteViews.setViewVisibility(dt, 0);
                    remoteViews.setImageViewBitmap(dt, Bitmap.createBitmap(new int[] { folder.cz(this.aJa.aJc) }, 1, 1, Bitmap$Config.RGB_565));
                    int i = n + 1;
                    if (i == 3) {
                        while (i < 3) {
                            remoteViews.setViewVisibility(dt(i), 8);
                            ++i;
                        }
                        return;
                    }
                    n = i;
                }
            }
            int i = n;
            continue;
        }
    }
}
