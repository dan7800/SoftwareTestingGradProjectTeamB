package com.google.android.gm.drive;

import android.os.*;
import com.android.mail.a.*;
import com.google.android.gm.*;
import android.content.*;
import android.text.*;
import android.app.*;
import android.content.res.*;
import java.util.*;

public final class j extends DialogFragment implements DialogInterface$OnClickListener
{
    private boolean awy;
    private ArrayList<PotentialFix> baD;
    private FixPermissionDialogState baE;
    private int baj;
    private PotentialFix bat;
    private String bau;
    
    public static j b(final PotentialFix potentialFix, final String s, final FixPermissionDialogState fixPermissionDialogState, final ArrayList<PotentialFix> list, final int n, final boolean b) {
        final j j = new j();
        final Bundle arguments = new Bundle(6);
        arguments.putParcelable("fix", (Parcelable)potentialFix);
        arguments.putString("role", s);
        arguments.putParcelable("dialogState", (Parcelable)fixPermissionDialogState);
        arguments.putParcelableArrayList("potentialFixes", (ArrayList)list);
        arguments.putInt("numFiles", n);
        arguments.putBoolean("showToast", b);
        j.setArguments(arguments);
        a.oq().a("acl_fixer", "outside_domain_dialog", "shown", 0L);
        return j;
    }
    
    public final void onCancel(final DialogInterface dialogInterface) {
        ((ComposeActivityGmail)this.getActivity()).a(this.baE, this.baD, this.baj, this.awy);
        a.oq().a("acl_fixer", "outside_domain_dialog", "cancel", 0L);
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        if (n == -1) {
            ((ComposeActivityGmail)this.getActivity()).a(this.bat, this.bau, this.awy);
            a.oq().a("acl_fixer", "outside_domain_dialog", "confirm", 0L);
        }
        else if (n == -2) {
            dialogInterface.cancel();
        }
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        int n = 1;
        final Activity activity = this.getActivity();
        final Bundle arguments = this.getArguments();
        this.bat = (PotentialFix)arguments.getParcelable("fix");
        this.bau = arguments.getString("role");
        this.baE = (FixPermissionDialogState)arguments.getParcelable("dialogState");
        this.baD = (ArrayList<PotentialFix>)arguments.getParcelableArrayList("potentialFixes");
        this.baj = arguments.getInt("numFiles");
        this.awy = arguments.getBoolean("showToast");
        final List<String> dw = this.bat.Dw();
        final Resources resources = ((Context)activity).getResources();
        final int baj = this.baj;
        final Object[] array = new Object[n];
        final android.support.v4.e.a ac = android.support.v4.e.a.aC();
        final StringBuilder sb = new StringBuilder();
        for (final String s : dw) {
            if (n != 0) {
                n = 0;
            }
            else {
                sb.append("<br>");
            }
            sb.append(ac.unicodeWrap(s));
        }
        array[0] = sb.toString();
        return (Dialog)new AlertDialog$Builder((Context)activity).setTitle(2131297204).setMessage((CharSequence)Html.fromHtml(resources.getQuantityString(2131820576, baj, array))).setPositiveButton(2131296554, (DialogInterface$OnClickListener)this).setNegativeButton(2131296556, (DialogInterface$OnClickListener)this).create();
    }
}
