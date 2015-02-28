package com.android.mail.ui;

import java.lang.ref.*;
import android.os.*;
import com.android.mail.providers.*;
import android.app.*;
import android.content.*;

public final class bu extends DialogFragment
{
    private WeakReference<bw> aIV;
    private int aIW;
    private int aIX;
    
    public bu() {
        this.aIV = null;
    }
    
    public static bu Q(final int n, final int n2) {
        final bu bu = new bu();
        final Bundle arguments = new Bundle(2);
        arguments.putInt("numConversations", n);
        arguments.putInt("folderType", n2);
        bu.setArguments(arguments);
        return bu;
    }
    
    public final void a(final bw bw) {
        this.aIV = new WeakReference<bw>(bw);
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        this.aIW = this.getArguments().getInt("numConversations");
        this.aIX = this.getArguments().getInt("folderType");
        final String quantityString = this.getResources().getQuantityString(2131820562, this.aIW, new Object[] { this.aIW });
        int title;
        if (Folder.O(this.aIX, 64)) {
            title = 2131296652;
        }
        else {
            title = 2131296651;
        }
        return (Dialog)new AlertDialog$Builder((Context)this.getActivity()).setTitle(title).setMessage((CharSequence)quantityString).setNegativeButton(2131296556, (DialogInterface$OnClickListener)null).setPositiveButton(2131296423, (DialogInterface$OnClickListener)new bv(this)).create();
    }
}
