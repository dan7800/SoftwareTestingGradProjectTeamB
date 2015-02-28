package com.google.android.gm.drive;

import android.support.v4.e.*;
import android.text.*;
import java.util.*;
import android.widget.*;
import android.content.res.*;
import android.os.*;
import com.android.mail.a.*;
import android.content.*;
import com.google.android.gm.*;
import android.app.*;
import android.view.*;

public final class h extends DialogFragment implements DialogInterface$OnClickListener, View$OnClickListener, RadioGroup$OnCheckedChangeListener
{
    private boolean awy;
    private RadioButton baA;
    private View baB;
    private Spinner baC;
    private ArrayList<PotentialFix> baD;
    private FixPermissionDialogState baE;
    private int baj;
    private boolean bap;
    private RadioGroup bav;
    private Spinner baw;
    private View bax;
    private View bay;
    private View baz;
    
    public h() {
        this.bap = false;
    }
    
    private void Dp() {
        this.bax.setVisibility(0);
        this.bay.setVisibility(8);
        this.baz.setVisibility(0);
        this.baA.setVisibility(0);
        this.baB.setVisibility(0);
        this.bap = true;
    }
    
    private static Spinner a(final Context context, final View view, final PotentialFix potentialFix, final boolean b, final int selection, final int n) {
        int n2;
        int n3;
        if (b) {
            n2 = 2131558812;
            n3 = 2131558813;
        }
        else {
            n2 = 2131558816;
            n3 = 2131558817;
        }
        final RadioButton radioButton = (RadioButton)view.findViewById(n2);
        final String dq = potentialFix.Dq();
        final Resources resources = context.getResources();
        Object text;
        int text2;
        if ("ADD_COLLABORATORS".equals(dq)) {
            text = resources.getString(2131297194);
            text2 = 2131297202;
        }
        else if ("INCREASE_PUBLIC_VISIBILITY".equals(dq)) {
            text = resources.getString(2131297195);
            text2 = 2131297203;
        }
        else {
            text = Html.fromHtml(resources.getString(2131297196, new Object[] { a.aC().unicodeWrap(potentialFix.Dv()) }));
            text2 = 0;
        }
        radioButton.setText((CharSequence)text);
        final View viewById = view.findViewById(n3);
        final Spinner spinner = (Spinner)viewById.findViewById(2131558821);
        final i adapter = new i(context, potentialFix.Dt());
        adapter.setDropDownViewResource(17367049);
        spinner.setAdapter((SpinnerAdapter)adapter);
        spinner.setSelection(selection);
        if (text2 != 0) {
            final TextView textView = (TextView)viewById.findViewById(2131558822);
            textView.setText(text2);
            textView.setVisibility(0);
        }
        if (!potentialFix.Du()) {
            final TextView textView2 = (TextView)viewById.findViewById(2131558823);
            textView2.setText((CharSequence)resources.getQuantityString(2131820575, n));
            textView2.setVisibility(0);
        }
        return spinner;
    }
    
    public static h b(final FixPermissionDialogState fixPermissionDialogState, final ArrayList<PotentialFix> list, final int n, final boolean b) {
        final h h = new h();
        final Bundle arguments = new Bundle(4);
        arguments.putParcelable("dialogState", (Parcelable)fixPermissionDialogState);
        arguments.putParcelableArrayList("potentialFixes", (ArrayList)list);
        arguments.putInt("numFiles", n);
        arguments.putBoolean("showToast", b);
        h.setArguments(arguments);
        final d oq = com.android.mail.a.a.oq();
        String s;
        if (fixPermissionDialogState == null) {
            s = "shown";
        }
        else {
            s = "re_shown";
        }
        oq.a("acl_fixer", "acl_fixer_dialog", s, 0L);
        return h;
    }
    
    public final void onCheckedChanged(final RadioGroup radioGroup, final int n) {
        if (n == 2131558812) {
            this.baw.setEnabled(true);
            this.baC.setEnabled(false);
            return;
        }
        if (n == 2131558816) {
            this.baw.setEnabled(false);
            this.baC.setEnabled(true);
            return;
        }
        this.baw.setEnabled(false);
        this.baC.setEnabled(false);
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        if (n == -1) {
            final int checkedRadioButtonId = this.bav.getCheckedRadioButtonId();
            final int selectedItemPosition = this.baw.getSelectedItemPosition();
            final int selectedItemPosition2 = this.baC.getSelectedItemPosition();
            int n2;
            String s2;
            String s3;
            PotentialFix potentialFix2;
            if (checkedRadioButtonId == 2131558812) {
                final PotentialFix potentialFix = this.baD.get(0);
                final String s = (String)this.baw.getSelectedItem();
                n2 = 0;
                s2 = "0";
                s3 = s;
                potentialFix2 = potentialFix;
            }
            else if (checkedRadioButtonId == 2131558816) {
                final PotentialFix potentialFix3 = this.baD.get(1);
                final String s4 = (String)this.baC.getSelectedItem();
                n2 = 1;
                s2 = "1";
                s3 = s4;
                potentialFix2 = potentialFix3;
            }
            else {
                n2 = 2;
                s2 = "2";
                potentialFix2 = null;
                s3 = null;
            }
            ((ComposeActivityGmail)this.getActivity()).a(potentialFix2, s3, new FixPermissionDialogState(this.bap, checkedRadioButtonId, selectedItemPosition, selectedItemPosition2), this.baD, this.baj, this.awy);
            com.android.mail.a.a.oq().a("acl_fixer", "fix_selected", s2, n2);
            com.android.mail.a.a.oq().a("acl_fixer", "acl_fixer_dialog", "first_spinner_position", selectedItemPosition);
            if (this.bap) {
                com.android.mail.a.a.oq().a("acl_fixer", "acl_fixer_dialog", "second_spinner_position", selectedItemPosition2);
            }
            com.android.mail.a.a.oq().a("acl_fixer", "acl_fixer_dialog", "confirm", 0L);
        }
        else if (n == -2) {
            com.android.mail.a.a.oq().a("acl_fixer", "acl_fixer_dialog", "cancel", 0L);
        }
    }
    
    public final void onClick(final View view) {
        final int id = view.getId();
        if (id == 2131558814) {
            this.Dp();
            com.android.mail.a.a.oq().a("acl_fixer", "acl_fixer_dialog", "more_options_clicked", 0L);
        }
        else if (id == 2131558820) {
            ay.bd((Context)this.getActivity());
        }
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)this.getActivity());
        final Context context = alertDialog$Builder.getContext();
        final LayoutInflater from = LayoutInflater.from(context);
        final Bundle arguments = this.getArguments();
        this.baE = (FixPermissionDialogState)arguments.getParcelable("dialogState");
        this.baD = (ArrayList<PotentialFix>)arguments.getParcelableArrayList("potentialFixes");
        this.baj = arguments.getInt("numFiles");
        this.awy = arguments.getBoolean("showToast");
        if (bundle != null) {
            this.bap = bundle.getBoolean("secondOptionShown", false);
            this.baE = null;
        }
        else if (this.baE != null) {
            this.bap = this.baE.Dm();
        }
        final View inflate = from.inflate(2130968693, (ViewGroup)null);
        inflate.findViewById(2131558820).setOnClickListener((View$OnClickListener)this);
        final View inflate2 = from.inflate(2130968692, (ViewGroup)null);
        this.bav = (RadioGroup)inflate2.findViewById(2131558811);
        if (this.baE != null) {
            this.bav.check(this.baE.getCheckedRadioButtonId());
        }
        final PotentialFix potentialFix = this.baD.get(0);
        int dn;
        if (this.baE != null) {
            dn = this.baE.Dn();
        }
        else {
            dn = 0;
        }
        this.baw = a(context, inflate2, potentialFix, true, dn, this.baj);
        this.baB = inflate2.findViewById(2131558817);
        if (this.baD.size() > 1) {
            this.bay = inflate2.findViewById(2131558814);
            final PotentialFix potentialFix2 = this.baD.get(1);
            int do1;
            if (this.baE != null) {
                do1 = this.baE.Do();
            }
            else {
                do1 = 0;
            }
            this.baC = a(context, inflate2, potentialFix2, false, do1, this.baj);
            this.baz = inflate2.findViewById(2131558815);
            this.baA = (RadioButton)inflate2.findViewById(2131558816);
            this.baB.setVisibility(8);
            this.bax = inflate2.findViewById(2131558813).findViewById(2131558824);
            if (this.bap) {
                this.Dp();
            }
            else {
                this.bax.setVisibility(8);
                this.bay.setVisibility(0);
                this.bay.setOnClickListener((View$OnClickListener)this);
            }
        }
        else {
            this.baB.setVisibility(8);
            (this.baC = (Spinner)this.baB.findViewById(2131558821)).setId(2131558415);
        }
        this.baC.setId(2131558415);
        this.bav.setOnCheckedChangeListener((RadioGroup$OnCheckedChangeListener)this);
        this.onCheckedChanged(this.bav, this.bav.getCheckedRadioButtonId());
        ((RadioButton)inflate2.findViewById(2131558818)).setText(2131297197);
        return (Dialog)alertDialog$Builder.setCustomTitle(inflate).setView(inflate2).setPositiveButton(2131296411, (DialogInterface$OnClickListener)this).setNegativeButton(2131296556, (DialogInterface$OnClickListener)null).create();
    }
    
    public final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("secondOptionShown", this.bap);
    }
}
