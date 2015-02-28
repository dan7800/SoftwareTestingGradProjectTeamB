package com.android.mail.compose;

import android.database.*;
import android.support.v7.app.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.*;
import android.graphics.*;
import android.net.*;
import com.android.b.*;
import android.text.util.*;
import android.content.res.*;
import com.android.emailcommon.mail.*;
import android.view.inputmethod.*;
import java.net.*;
import android.annotation.*;
import java.util.*;
import com.google.common.collect.*;
import java.io.*;
import android.os.*;
import android.support.v4.app.*;
import com.android.ex.chips.*;
import android.widget.*;
import android.text.*;
import com.android.mail.ui.*;
import android.app.*;
import android.content.*;
import android.view.*;
import com.android.mail.providers.*;
import com.google.android.mail.common.html.parser.*;
import com.android.mail.utils.*;

public final class u extends DialogFragment implements DialogInterface$OnClickListener
{
    private boolean awy;
    private ArrayList<String> awz;
    
    public static u b(final int n, final boolean b, final ArrayList<String> list) {
        final u u = new u();
        final Bundle arguments = new Bundle(3);
        arguments.putInt("messageId", n);
        arguments.putBoolean("showToast", b);
        arguments.putStringArrayList("recipients", (ArrayList)list);
        u.setArguments(arguments);
        return u;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        if (n == -1) {
            g.a((g)this.getActivity(), this.awy, this.awz);
        }
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final int int1 = this.getArguments().getInt("messageId");
        this.awy = this.getArguments().getBoolean("showToast");
        this.awz = (ArrayList<String>)this.getArguments().getStringArrayList("recipients");
        int n;
        if (int1 == 2131296407) {
            n = 2131296555;
        }
        else {
            n = 2131296411;
        }
        return (Dialog)new AlertDialog$Builder((Context)this.getActivity()).setMessage(int1).setPositiveButton(n, (DialogInterface$OnClickListener)this).setNegativeButton(2131296556, (DialogInterface$OnClickListener)null).create();
    }
}
