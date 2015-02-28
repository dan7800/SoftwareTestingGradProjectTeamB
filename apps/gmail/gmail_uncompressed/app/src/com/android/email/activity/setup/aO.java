package com.android.email.activity.setup;

import android.content.*;
import android.widget.*;
import com.android.emailcommon.provider.*;
import android.os.*;
import com.android.email.activity.*;
import com.android.email.service.*;
import android.view.*;

public final class ao extends ab
{
    private Spinner OH;
    private Spinner OI;
    private View OJ;
    private CheckBox OK;
    private CheckBox OL;
    private CheckBox OM;
    private CheckBox ON;
    private CheckBox OO;
    
    public static ao il() {
        return new ao();
    }
    
    private void k(final Account account) {
        int i = 0;
        this.OI.setVisibility(0);
        this.OJ.setVisibility(0);
        final CharSequence[] textArray = this.getResources().getTextArray(2131689491);
        final CharSequence[] textArray2 = this.getResources().getTextArray(2131689490);
        int length = textArray2.length;
        final Policy pw = account.PW;
        if (pw != null) {
            final int aac = pw.aac;
            if (aac != 0) {
                length = aac + 1;
            }
        }
        final bd[] array = new bd[length];
        int selection = -1;
        while (i < length) {
            final int intValue = Integer.valueOf(textArray[i].toString());
            array[i] = new bd(intValue, textArray2[i].toString());
            if (intValue == 3) {
                selection = i;
            }
            ++i;
        }
        final ArrayAdapter adapter = new ArrayAdapter((Context)this.getActivity(), 17367048, (Object[])array);
        adapter.setDropDownViewResource(17367049);
        this.OI.setAdapter((SpinnerAdapter)adapter);
        bd.a(this.OI, account.lz());
        if (selection >= 0) {
            this.OI.setSelection(selection);
        }
    }
    
    public final boolean im() {
        return this.OO.isChecked();
    }
    
    public final Integer in() {
        return (Integer)((bd)this.OH.getSelectedItem()).value;
    }
    
    public final Integer io() {
        if (this.OI.getVisibility() != 0) {
            return null;
        }
        return (Integer)((bd)this.OI.getSelectedItem()).value;
    }
    
    public final boolean ip() {
        return this.ON.isChecked();
    }
    
    public final boolean iq() {
        return this.OM.isChecked();
    }
    
    public final boolean ir() {
        return this.OL.isChecked();
    }
    
    public final boolean is() {
        return this.OK.isChecked();
    }
    
    public final void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        final View view = this.getView();
        final SetupDataFragment hn = ((bc)this.getActivity()).hN();
        final Account ib = hn.iB();
        final o z = hn.z((Context)this.getActivity());
        final CharSequence[] uw = z.UW;
        final CharSequence[] uv = z.UV;
        final bd[] array = new bd[uv.length];
        for (int i = 0; i < uv.length; ++i) {
            array[i] = new bd(Integer.valueOf(uw[i].toString()), uv[i].toString());
        }
        final ArrayAdapter adapter = new ArrayAdapter((Context)this.getActivity(), 17367048, (Object[])array);
        adapter.setDropDownViewResource(17367049);
        this.OH.setAdapter((SpinnerAdapter)adapter);
        bd.a(this.OH, ib.ly());
        if (z.UP) {
            this.k(ib);
        }
        if (z.US) {
            this.OL.setVisibility(0);
            this.OL.setChecked(true);
            a.e(view, 2131558598, 0);
        }
        if (z.UT) {
            this.OM.setVisibility(0);
            this.OM.setChecked(true);
            a.e(view, 2131558599, 0);
        }
        if (!z.UU) {
            this.OO.setVisibility(8);
            a.e(view, 2131558600, 8);
        }
    }
    
    public final View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        final View a = this.a(layoutInflater, viewGroup, 2130968617, 2131296850);
        this.OH = (Spinner)com.android.email.activity.a.m(a, 2131558590);
        this.OI = (Spinner)com.android.email.activity.a.m(a, 2131558592);
        (this.OK = (CheckBox)com.android.email.activity.a.m(a, 2131558593)).setChecked(true);
        this.OL = (CheckBox)com.android.email.activity.a.m(a, 2131558594);
        this.OM = (CheckBox)com.android.email.activity.a.m(a, 2131558595);
        (this.ON = (CheckBox)com.android.email.activity.a.m(a, 2131558596)).setChecked(true);
        (this.OO = (CheckBox)com.android.email.activity.a.m(a, 2131558597)).setChecked(true);
        this.OJ = com.android.email.activity.a.m(a, 2131558591);
        return a;
    }
}
