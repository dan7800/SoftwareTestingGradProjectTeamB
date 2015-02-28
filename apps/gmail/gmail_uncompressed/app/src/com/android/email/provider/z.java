package com.android.email.provider;

import android.net.*;
import android.app.*;
import com.android.mail.providers.*;
import android.database.*;
import com.android.mail.ui.*;
import android.content.*;
import java.util.*;
import android.widget.*;

public final class z implements DialogInterface$OnCancelListener, DialogInterface$OnClickListener, DialogInterface$OnMultiChoiceClickListener
{
    private final HashMap<Folder, Boolean> TD;
    private final cX TE;
    private final y TF;
    private final AlertDialog xx;
    
    public z(final Context context, final Uri uri, final y tf, final String title, final boolean cancelable) {
        this.TF = tf;
        this.TD = new HashMap<Folder, Boolean>();
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(context);
        alertDialog$Builder.setTitle((CharSequence)title);
        alertDialog$Builder.setPositiveButton(2131296555, (DialogInterface$OnClickListener)this);
        alertDialog$Builder.setCancelable(cancelable);
        alertDialog$Builder.setOnCancelListener((DialogInterface$OnCancelListener)this);
        final Cursor query = context.getContentResolver().query(uri, E.aCv, (String)null, (String[])null, (String)null);
        try {
            (this.TE = new cX()).a(new B(context, query, new HashSet<String>()));
            alertDialog$Builder.setAdapter((ListAdapter)this.TE, (DialogInterface$OnClickListener)this);
            query.close();
            this.xx = alertDialog$Builder.create();
        }
        finally {
            query.close();
        }
    }
    
    public final void a(final bX bx) {
        int n;
        if (!bx.isSelected()) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n == 0) {
            return;
        }
        this.TE.getCount();
        for (int i = 0; i < this.TE.getCount(); ++i) {
            final Object item = this.TE.getItem(i);
            if (item instanceof bX) {
                ((bX)item).bx(false);
            }
        }
        this.TD.clear();
        bx.bx(true);
        this.TE.notifyDataSetChanged();
        this.TD.put(bx.vT(), true);
        this.xx.getButton(-1).setEnabled(true);
    }
    
    public final void onCancel(final DialogInterface dialogInterface) {
        this.TF.cancel();
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        switch (n) {
            default: {
                this.onClick(dialogInterface, n, true);
            }
            case -1: {
                while (true) {
                    for (final Map.Entry<Folder, Boolean> entry : this.TD.entrySet()) {
                        if (entry.getValue()) {
                            final Folder folder = entry.getKey();
                            this.TF.a(folder);
                            return;
                        }
                    }
                    final Folder folder = null;
                    continue;
                }
            }
        }
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n, final boolean b) {
        final bX bx = (bX)this.TE.getItem(n);
        this.TD.clear();
        this.TD.put(bx.vT(), true);
        this.xx.getListView().setItemChecked(n, false);
    }
    
    public final void show() {
        this.xx.show();
        this.xx.getListView().setOnItemClickListener((AdapterView$OnItemClickListener)new A(this));
        final Button button = this.xx.getButton(-1);
        if (this.TD.size() == 0) {
            button.setEnabled(false);
        }
    }
}
