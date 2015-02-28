package com.android.mail.ui.settings;

import com.android.mail.i.*;
import android.preference.*;
import android.content.*;
import android.widget.*;
import android.os.*;
import android.view.*;
import android.app.*;
import com.android.mail.utils.*;

public class GeneralPrefsFragment extends f implements DialogInterface$OnClickListener, Preference$OnPreferenceChangeListener
{
    private static final int[] aOQ;
    protected g aHo;
    private AlertDialog aOO;
    private ListPreference aOP;
    
    static {
        aOQ = new int[] { 2, 1, 3 };
    }
    
    private void u(final String... array) {
        for (int length = array.length, i = 0; i < length; ++i) {
            final Preference preference = this.findPreference((CharSequence)array[i]);
            if (preference != null) {
                preference.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
            }
        }
    }
    
    public void onClick(final DialogInterface dialogInterface, final int n) {
        if (dialogInterface.equals(this.aOO) && n == -1) {
            new b(this, (Context)this.getActivity()).execute((Object[])new Void[0]);
            Toast.makeText((Context)this.getActivity(), 2131296735, 0).show();
        }
    }
    
    @Override
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setHasOptionsMenu(true);
        this.aHo = g.ao((Context)this.getActivity());
        this.getPreferenceManager().setSharedPreferencesName(this.aHo.getSharedPreferencesName());
        this.addPreferencesFromResource(2131099663);
        this.aOP = (ListPreference)this.findPreference((CharSequence)"auto-advance-widget");
    }
    
    @Override
    public void onCreateOptionsMenu(final Menu menu, final MenuInflater menuInflater) {
        menu.clear();
        menuInflater.inflate(2131755019, menu);
    }
    
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        final int itemId = menuItem.getItemId();
        if (itemId == 2131559060) {
            this.aOO = new AlertDialog$Builder((Context)this.getActivity()).setMessage(2131296737).setTitle(2131296736).setIconAttribute(16843605).setPositiveButton(2131296557, (DialogInterface$OnClickListener)this).setNegativeButton(2131296556, (DialogInterface$OnClickListener)this).show();
            return true;
        }
        if (itemId == 2131559061) {
            a.AN().show(this.getActivity().getFragmentManager(), "ClearPictureApprovalsDialogFragment");
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
    
    public boolean onPreferenceChange(final Preference preference, final Object o) {
        if (this.getActivity() == null) {
            return false;
        }
        final String key = preference.getKey();
        if ("removal-action".equals(key)) {
            this.aHo.bF(o.toString());
        }
        else if ("auto-advance-widget".equals(key)) {
            this.aHo.cu(GeneralPrefsFragment.aOQ[this.aOP.findIndexOfValue((String)o)]);
        }
        else if (!"conversation-list-swipe".equals(key) && !"conversation-list-sender-image".equals(key) && !"default-reply-all".equals(key) && !"conversation-overview-mode".equals(key) && !"confirm-delete".equals(key) && !"confirm-archive".equals(key) && !"confirm-send".equals(key)) {
            return false;
        }
        return true;
    }
    
    public void onResume() {
        super.onResume();
        final int[] aoq = GeneralPrefsFragment.aOQ;
        final int tp = this.aHo.tP();
    Label_0031:
        while (true) {
            for (int i = 0; i < aoq.length; ++i) {
                if (aoq[i] == tp) {
                    this.aOP.setValueIndex(i);
                    this.u("removal-action", "conversation-list-swipe", "conversation-list-sender-image", "default-reply-all", "conversation-overview-mode", "auto-advance-widget", "confirm-delete", "confirm-archive", "confirm-send");
                    return;
                }
            }
            E.f(E.TAG, "Can't map preference value " + tp, new Object[0]);
            for (int i = 0; i < aoq.length; ++i) {
                if (aoq[i] == 3) {
                    continue Label_0031;
                }
            }
            break;
        }
        throw new IllegalArgumentException("Can't map default preference value " + tp);
    }
    
    public void onStop() {
        super.onStop();
        if (this.aOO != null && this.aOO.isShowing()) {
            this.aOO.dismiss();
        }
    }
}
