package com.google.android.gm.preference;

import com.android.mail.i.*;
import android.accounts.*;
import com.android.mail.utils.*;
import android.preference.*;
import java.io.*;
import com.android.mail.ui.*;
import android.text.*;
import android.net.*;
import android.provider.*;
import android.content.*;
import android.media.*;
import android.app.*;
import com.google.android.gm.*;
import com.google.android.gm.persistence.*;
import android.os.*;
import java.util.*;
import com.google.android.gm.provider.*;

public final class q extends PreferenceFragment implements Preference$OnPreferenceChangeListener, X
{
    private Ringtone Nr;
    private String PS;
    private String aXZ;
    private Object aYe;
    private W aYg;
    private final SyncStatusObserver aYi;
    private e bbU;
    private boolean bbV;
    private boolean bbW;
    private B bbX;
    private final Handler mHandler;
    
    public q() {
        this.mHandler = new Handler();
        this.aYi = (SyncStatusObserver)new t(this);
    }
    
    private void CR() {
        g.dN(this.PS).show(this.getFragmentManager(), "EnableAccountSyncDialogFragment");
    }
    
    private void DK() {
        boolean enabled = true;
        final boolean masterSyncAutomatically = ContentResolver.getMasterSyncAutomatically();
        if (ContentResolver.getSyncAutomatically(new Account(this.PS, "com.google"), "gmail-ls") && masterSyncAutomatically) {
            if (this.bbX != null) {
                this.getPreferenceScreen().removePreference((Preference)this.bbX);
            }
        }
        else {
            if (this.bbX == null) {
                (this.bbX = new B((Context)this.getActivity())).setOrder(0);
                if (masterSyncAutomatically) {
                    this.bbX.setSummary(2131297172);
                }
                else {
                    this.bbX.setSummary(2131297171);
                }
                this.bbX.setOnPreferenceClickListener((Preference$OnPreferenceClickListener)new w(this));
            }
            this.getPreferenceScreen().addPreference((Preference)this.bbX);
        }
        final boolean contains = this.aYg.Cu().contains(this.aXZ);
        final boolean contains2 = this.aYg.Cv().contains(this.aXZ);
        final boolean b = !contains && !contains2 && enabled;
        final Preference preference = this.findPreference((CharSequence)"label-sync");
        String summary;
        if (contains) {
            summary = this.getActivity().getString(2131297175);
        }
        else if (contains2) {
            summary = ag.a((Context)this.getActivity(), 2131820574, this.aYg.Cw());
        }
        else {
            summary = this.getActivity().getString(2131297176);
        }
        preference.setSummary((CharSequence)summary);
        final PreferenceGroup preferenceGroup = (PreferenceGroup)this.findPreference((CharSequence)"label-notifications-category");
        if (b) {
            preferenceGroup.removeAll();
            final z z = new z((Context)this.getActivity());
            preferenceGroup.addPreference((Preference)z);
            z.setTitle(2131297177);
            return;
        }
        if (this.bbW) {
            if (this.findPreference((CharSequence)"notifications-enabled") == null || !enabled) {
                preferenceGroup.removeAll();
                final CheckBoxPreference checkBoxPreference = new CheckBoxPreference((Context)this.getActivity());
                checkBoxPreference.setDefaultValue((Object)this.bbU.to());
                checkBoxPreference.setKey("notifications-enabled");
                checkBoxPreference.setTitle(2131297127);
                checkBoxPreference.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
                preferenceGroup.addPreference((Preference)checkBoxPreference);
                final Preference preference2 = new Preference((Context)this.getActivity());
                preference2.setKey("notification-ringtone");
                preference2.setPersistent(false);
                preference2.setTitle(2131297118);
                preference2.setOnPreferenceClickListener((Preference$OnPreferenceClickListener)new x(this));
                preference2.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
                preferenceGroup.addPreference(preference2);
                preference2.setDependency("notifications-enabled");
                if (this.bbV) {
                    final CheckBoxPreference checkBoxPreference2 = new CheckBoxPreference((Context)this.getActivity());
                    checkBoxPreference2.setDefaultValue((Object)false);
                    checkBoxPreference2.setKey("notification-vibrate");
                    checkBoxPreference2.setTitle(2131296952);
                    checkBoxPreference2.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
                    preferenceGroup.addPreference((Preference)checkBoxPreference2);
                    checkBoxPreference2.setDependency("notifications-enabled");
                }
                final CheckBoxPreference checkBoxPreference3 = new CheckBoxPreference((Context)this.getActivity());
                checkBoxPreference3.setDefaultValue((Object)false);
                checkBoxPreference3.setKey("notification-notify-every-message");
                checkBoxPreference3.setSummary(2131297086);
                checkBoxPreference3.setTitle(2131297085);
                checkBoxPreference3.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
                preferenceGroup.addPreference((Preference)checkBoxPreference3);
                checkBoxPreference3.setDependency("notifications-enabled");
            }
            if (!this.bbW || b) {
                enabled = false;
            }
            ((CheckBoxPreference)this.findPreference((CharSequence)"notifications-enabled")).setEnabled(enabled);
            final Preference preference3 = this.findPreference((CharSequence)"notification-ringtone");
            final Ringtone nr = this.Nr;
            String summary2;
            if (nr != null) {
                summary2 = nr.getTitle((Context)this.getActivity());
            }
            else {
                summary2 = this.getActivity().getString(2131296638);
            }
            preference3.setSummary((CharSequence)summary2);
            return;
        }
        preferenceGroup.removeAll();
        final Preference preference4 = new Preference((Context)this.getActivity());
        preferenceGroup.addPreference(preference4);
        preference4.setPersistent(false);
        preference4.setTitle(2131297127);
        preference4.setSummary(2131297128);
        preference4.setOnPreferenceClickListener((Preference$OnPreferenceClickListener)new y(this));
    }
    
    public static Fragment J(final String s, final String s2) {
        final q q = new q();
        final Bundle arguments = new Bundle();
        arguments.putString("account", s);
        arguments.putString("label", s2);
        ((Fragment)q).setArguments(arguments);
        return (Fragment)q;
    }
    
    private void notifyObservers() {
        if (!this.bbU.to()) {
            A.O((Context)this.getActivity(), this.PS);
        }
        this.aYg.notifyChanged();
    }
    
    public final void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        (this.aYg = (W)this.getActivity()).a(this);
        final Activity activity = this.getActivity();
        final i i = new i((Context)activity, this.PS);
        final String tu = this.bbU.tu();
        if (!TextUtils.isEmpty((CharSequence)tu)) {
            this.Nr = RingtoneManager.getRingtone((Context)activity, Uri.parse(tu));
        }
        this.bbW = i.to();
        this.DK();
    }
    
    public final void onActivityResult(final int n, final int n2, final Intent intent) {
        switch (n) {
            case 0: {
                if (n2 != -1 || intent == null) {
                    break;
                }
                final Uri uri = (Uri)intent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI");
                if (uri != null) {
                    this.bbU.bE(uri.toString());
                    this.Nr = RingtoneManager.getRingtone((Context)this.getActivity(), uri);
                    break;
                }
                this.bbU.bE("");
                this.Nr = null;
                break;
            }
            case 1: {
                if (n2 == -1 && intent != null) {
                    this.aYg.i(intent.getStringArrayListExtra("included-labels"));
                    this.aYg.j(intent.getStringArrayListExtra("partial-labels"));
                    break;
                }
                break;
            }
            case 2: {
                final boolean masterSyncAutomatically = ContentResolver.getMasterSyncAutomatically();
                final boolean syncAutomatically = ContentResolver.getSyncAutomatically(new Account(this.PS, "com.google"), "gmail-ls");
                if (masterSyncAutomatically && !syncAutomatically) {
                    this.CR();
                    break;
                }
                break;
            }
        }
        this.notifyObservers();
    }
    
    public final void onChanged() {
        this.DK();
    }
    
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final Bundle arguments = this.getArguments();
        this.PS = arguments.getString("account");
        this.getActivity().getApplicationContext();
        this.aXZ = arguments.getString("label");
        this.bbU = new j((Context)this.getActivity(), this.PS, ay.i((Context)this.getActivity(), this.PS, this.aXZ), b.I((Context)this.getActivity(), this.PS).equals(this.aXZ));
        final Vibrator vibrator = (Vibrator)this.getActivity().getSystemService("vibrator");
        this.bbV = (vibrator != null && vibrator.hasVibrator());
        this.getPreferenceManager().setSharedPreferencesName(this.bbU.getSharedPreferencesName());
        this.addPreferencesFromResource(2131099667);
        this.findPreference((CharSequence)"label-sync").setOnPreferenceClickListener((Preference$OnPreferenceClickListener)new r(this));
    }
    
    public final void onDestroyView() {
        this.aYg.b(this);
        super.onDestroyView();
    }
    
    public final void onPause() {
        super.onPause();
        ContentResolver.removeStatusChangeListener(this.aYe);
    }
    
    public final boolean onPreferenceChange(final Preference preference, final Object o) {
        boolean b = true;
        if (this.getActivity() == null) {
            return false;
        }
        final String key = preference.getKey();
        final boolean b2 = ("label-sync".equals(key) || "notifications-enabled".equals(key) || "notification-ringtone".equals(key) || "notification-vibrate".equals(key) || "notification-notify-every-message".equals(key)) && b;
        Label_0312: {
            if ("notifications-enabled".equals(key) && Boolean.FALSE.equals(o)) {
                final U c = Y.c((Context)this.getActivity(), this.PS, false);
                final ArrayList list = new ArrayList(this.aYg.Cu());
                list.addAll(this.aYg.Cv());
                final String i = com.google.android.gm.persistence.b.I((Context)this.getActivity(), this.PS);
                int j = -1 + c.size();
                while (true) {
                    while (j >= 0) {
                        final String canonicalName = c.dP(j).getCanonicalName();
                        final boolean to = new j((Context)this.getActivity(), this.PS, ay.i((Context)this.getActivity(), this.PS, canonicalName), i.equals(canonicalName)).to();
                        final boolean b3 = i.equals(canonicalName) && !list.contains(i) && b;
                        if (to && !b3 && !canonicalName.equals(this.aXZ)) {
                            if (!b) {
                                new i((Context)this.getActivity(), this.PS).aW(this.bbW = false);
                                this.DK();
                            }
                            break Label_0312;
                        }
                        else {
                            --j;
                        }
                    }
                    b = false;
                    continue;
                }
            }
        }
        this.mHandler.post((Runnable)new s(this));
        return b2;
    }
    
    public final void onResume() {
        int i = 0;
        super.onResume();
        for (String[] array = { "label-sync", "notifications-enabled", "notification-ringtone", "notification-vibrate", "notification-notify-every-message" }; i < array.length; ++i) {
            final Preference preference = this.findPreference((CharSequence)array[i]);
            if (preference != null) {
                preference.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
            }
        }
        this.aYe = ContentResolver.addStatusChangeListener(1, this.aYi);
    }
}
