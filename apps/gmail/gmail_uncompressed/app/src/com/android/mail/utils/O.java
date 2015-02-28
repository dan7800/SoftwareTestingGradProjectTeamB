package com.android.mail.utils;

import android.widget.*;
import com.android.mail.providers.*;

public final class o
{
    public static void a(final ImageView imageView, final Folder folder) {
        if (folder != null) {
            if (folder.uR()) {
                imageView.setImageResource(2130837697);
                return;
            }
            if (folder.uS()) {
                imageView.setImageResource(2130837699);
                return;
            }
            if (folder.uT()) {
                imageView.setImageResource(2130837700);
                return;
            }
            if (folder.uU()) {
                imageView.setImageResource(2130837701);
                return;
            }
        }
        imageView.setImageResource(2130837696);
    }
}
