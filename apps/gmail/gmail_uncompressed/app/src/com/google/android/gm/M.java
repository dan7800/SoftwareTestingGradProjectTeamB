package com.google.android.gm;

import android.view.*;
import android.app.*;
import com.android.mail.providers.*;
import com.android.mail.a.*;
import android.content.*;
import com.google.android.gm.persistence.*;

public final class m
{
    public static boolean a(final MenuItem menuItem, final Activity activity, final Account account, final n n) {
        final int itemId = menuItem.getItemId();
        a.oq().b("menu_item", itemId, n.getClass().getName());
        if (itemId == 2131559067) {
            ay.be((Context)activity);
        }
        else if (itemId == 2131559052) {
            ay.dC(b.DD().bs((Context)activity));
        }
        else {
            if (itemId != 2131559021) {
                return false;
            }
            ay.a(activity, account, n.Cr());
        }
        return true;
    }
}
