package com.android.email.activity.setup;

import com.android.email.service.*;
import com.android.mail.providers.*;
import android.text.*;
import android.net.*;
import android.provider.*;
import com.android.mail.i.*;
import com.android.mail.utils.*;
import com.android.mail.ui.settings.*;
import com.android.emailcommon.provider.*;
import android.media.*;
import android.os.*;
import android.app.*;
import android.view.*;
import android.content.*;
import com.android.email.provider.*;
import android.preference.*;

public class AccountSettingsFragment extends c implements Preference$OnPreferenceChangeListener
{
    private Account Ml;
    private EditTextPreference Ng;
    private EditTextPreference Nh;
    private EditTextPreference Ni;
    private ListPreference Nj;
    private ListPreference Nk;
    private Preference Nl;
    private CheckBoxPreference Nm;
    private Preference Nn;
    private com.android.mail.providers.Account No;
    private o Np;
    private Folder Nq;
    private Ringtone Nr;
    private e Ns;
    private String Nt;
    private Context mContext;
    
    private void hK() {
        String summary;
        if (this.Nr != null) {
            summary = this.Nr.getTitle(this.mContext);
        }
        else {
            summary = this.mContext.getString(2131296638);
        }
        this.Nn.setSummary((CharSequence)summary);
    }
    
    private void hL() {
        final a a = new a(this.mContext, this.No.lw());
        if (this.Ns != null) {
            N.a(a, this.Ns);
        }
        final String aa = this.Ml.aa(this.mContext);
        if (this.Np == null) {
            E.f(E.TAG, "Could not find service info for account %d with protocol %s", this.Ml.Ln, aa);
            this.getActivity().onBackPressed();
        }
        else {
            final android.accounts.Account uf = this.No.uf();
            (this.Ng = (EditTextPreference)this.findPreference((CharSequence)"account_description")).setSummary((CharSequence)this.Ml.getDisplayName());
            this.Ng.setText(this.Ml.getDisplayName());
            this.Ng.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
            this.Nh = (EditTextPreference)this.findPreference((CharSequence)"account_name");
            String ik = this.No.ik();
            if (ik == null) {
                ik = "";
            }
            this.Nh.setSummary((CharSequence)ik);
            this.Nh.setText(ik);
            this.Nh.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
            final String lx = this.Ml.lx();
            (this.Ni = (EditTextPreference)this.findPreference((CharSequence)"account_signature")).setText(lx);
            this.Ni.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
            g.a((Preference)this.Ni, lx);
            (this.Nj = (ListPreference)this.findPreference((CharSequence)"account_check_frequency")).setEntries(this.Np.UV);
            this.Nj.setEntryValues(this.Np.UW);
            if (this.Np.US || this.Np.UT) {
                this.Nj.setValue(String.valueOf(this.Ml.ly()));
            }
            else if (ContentResolver.getSyncAutomatically(uf, EmailContent.AUTHORITY)) {
                this.Nj.setValue(String.valueOf(this.Ml.ly()));
            }
            else {
                this.Nj.setValue("-1");
            }
            this.Nj.setSummary(this.Nj.getEntry());
            this.Nj.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
            final Preference preference = this.findPreference((CharSequence)"account_quick_responses");
            if (preference != null) {
                preference.setOnPreferenceClickListener((Preference$OnPreferenceClickListener)new G(this));
            }
            final PreferenceCategory preferenceCategory = (PreferenceCategory)this.findPreference((CharSequence)"data_usage");
            if (this.Np.UP) {
                if (this.Nk == null) {
                    (this.Nk = new ListPreference(this.mContext)).setKey("account_sync_window");
                    preferenceCategory.addPreference((Preference)this.Nk);
                }
                this.Nk.setTitle(2131296865);
                this.Nk.setValue(String.valueOf(this.Ml.lz()));
                int aac;
                if (this.Ml.PW != null) {
                    aac = this.Ml.PW.aac;
                }
                else {
                    aac = 0;
                }
                MailboxSettings.a(this.mContext, this.Nk, aac, false);
                this.Nk.setOrder(2);
                this.Nk.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
                if (this.Nl == null) {
                    (this.Nl = new Preference(this.mContext)).setKey("account_sync_settings");
                    preferenceCategory.addPreference(this.Nl);
                }
                this.Nl.setEnabled(this.Nq != null);
                this.Nl.setTitle(2131297005);
                this.Nl.setOrder(3);
            }
            final PreferenceCategory preferenceCategory2 = (PreferenceCategory)this.findPreference((CharSequence)"system_folders");
            if (preferenceCategory2 != null) {
                if (this.Np.Vb) {
                    final Preference preference2 = this.findPreference((CharSequence)"system_folders_trash");
                    final Intent intent = new Intent(this.mContext, (Class)w.class);
                    final Uri build = EmailContent.CONTENT_URI.buildUpon().appendQueryParameter("account", Long.toString(this.Ml.getId())).build();
                    intent.setData(build);
                    intent.putExtra("mailbox_type", 6);
                    preference2.setIntent(intent);
                    final Preference preference3 = this.findPreference((CharSequence)"system_folders_sent");
                    final Intent intent2 = new Intent(this.mContext, (Class)w.class);
                    intent2.setData(build);
                    intent2.putExtra("mailbox_type", 5);
                    preference3.setIntent(intent2);
                }
                else {
                    this.getPreferenceScreen().removePreference((Preference)preferenceCategory2);
                }
            }
            final CheckBoxPreference checkBoxPreference = (CheckBoxPreference)this.findPreference((CharSequence)"account_background_attachments");
            if (checkBoxPreference != null) {
                if (!this.Np.UU) {
                    preferenceCategory.removePreference((Preference)checkBoxPreference);
                }
                else {
                    checkBoxPreference.setChecked((0x100 & this.Ml.getFlags()) != 0x0);
                    checkBoxPreference.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
                }
            }
            final PreferenceCategory preferenceCategory3 = (PreferenceCategory)this.findPreference((CharSequence)"account_notifications");
            if (this.Ns != null) {
                final CheckBoxPreference checkBoxPreference2 = (CheckBoxPreference)this.findPreference((CharSequence)"notifications-enabled");
                checkBoxPreference2.setChecked(this.Ns.to());
                checkBoxPreference2.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
                this.Nn = this.findPreference((CharSequence)"notification-ringtone");
                final String tu = this.Ns.tu();
                if (!TextUtils.isEmpty((CharSequence)tu)) {
                    this.Nr = RingtoneManager.getRingtone((Context)this.getActivity(), Uri.parse(tu));
                }
                this.hK();
                this.Nn.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
                this.Nn.setOnPreferenceClickListener((Preference$OnPreferenceClickListener)new H(this));
                preferenceCategory3.setEnabled(true);
                this.Nm = (CheckBoxPreference)this.findPreference((CharSequence)"notification-vibrate");
                if (this.Nm != null) {
                    this.Nm.setChecked(this.Ns.tv());
                    if (((Vibrator)this.mContext.getSystemService("vibrator")).hasVibrator()) {
                        this.Nm.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
                    }
                    else {
                        preferenceCategory3.removePreference((Preference)this.Nm);
                        this.Nm = null;
                    }
                }
            }
            else {
                preferenceCategory3.setEnabled(false);
            }
            final Preference preference4 = this.findPreference((CharSequence)"policies_retry_account");
            final PreferenceCategory preferenceCategory4 = (PreferenceCategory)this.findPreference((CharSequence)"account_policies");
            if (preferenceCategory4 != null) {
                this.getPreferenceScreen().removePreference((Preference)preferenceCategory4);
            }
            if (preference4 != null) {
                preference4.setOnPreferenceClickListener((Preference$OnPreferenceClickListener)new I(this, preferenceCategory4, preference4));
            }
            this.findPreference((CharSequence)"incoming").setOnPreferenceClickListener((Preference$OnPreferenceClickListener)new J(this));
            final Preference preference5 = this.findPreference((CharSequence)"outgoing");
            if (preference5 != null) {
                if (this.Np.UK && this.Ml.XM != null) {
                    preference5.setOnPreferenceClickListener((Preference$OnPreferenceClickListener)new K(this));
                }
                else {
                    if (this.Np.UK) {
                        E.f(E.TAG, "Account %d has a bad outbound hostauth", this.Ml.getId());
                    }
                    ((PreferenceCategory)this.findPreference((CharSequence)"account_servers")).removePreference(preference5);
                }
            }
            final CheckBoxPreference checkBoxPreference3 = (CheckBoxPreference)this.findPreference((CharSequence)"account_sync_contacts");
            final CheckBoxPreference checkBoxPreference4 = (CheckBoxPreference)this.findPreference((CharSequence)"account_sync_calendar");
            final CheckBoxPreference checkBoxPreference5 = (CheckBoxPreference)this.findPreference((CharSequence)"account_sync_email");
            if (checkBoxPreference3 != null && checkBoxPreference4 != null && checkBoxPreference5 != null) {
                if (this.Np.US || this.Np.UT) {
                    if (this.Np.US) {
                        checkBoxPreference3.setChecked(ContentResolver.getSyncAutomatically(uf, "com.android.contacts"));
                        checkBoxPreference3.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
                    }
                    else {
                        checkBoxPreference3.setChecked(false);
                        checkBoxPreference3.setEnabled(false);
                    }
                    if (this.Np.UT) {
                        checkBoxPreference4.setChecked(ContentResolver.getSyncAutomatically(uf, "com.android.calendar"));
                        checkBoxPreference4.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
                    }
                    else {
                        checkBoxPreference4.setChecked(false);
                        checkBoxPreference4.setEnabled(false);
                    }
                    checkBoxPreference5.setChecked(ContentResolver.getSyncAutomatically(uf, EmailContent.AUTHORITY));
                    checkBoxPreference5.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
                    return;
                }
                preferenceCategory.removePreference((Preference)checkBoxPreference3);
                preferenceCategory.removePreference((Preference)checkBoxPreference4);
                preferenceCategory.removePreference((Preference)checkBoxPreference5);
            }
        }
    }
    
    public final void b(final com.android.mail.providers.Account account) {
        ((PreferenceActivity)this.getActivity()).startPreferencePanel(D.class.getName(), D.a(account), 2131296932, (CharSequence)null, (Fragment)null, 0);
    }
    
    public final void h(final Account account) {
        this.getActivity().startActivity(AccountServerSettingsActivity.c((Context)this.getActivity(), account));
    }
    
    public final void i(final Account account) {
        this.getActivity().startActivity(AccountServerSettingsActivity.d((Context)this.getActivity(), account));
    }
    
    public void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        final Bundle bundle2 = new Bundle(1);
        if (!TextUtils.isEmpty((CharSequence)this.Nt)) {
            bundle2.putString("accountEmail", this.Nt);
        }
        else {
            bundle2.putLong("accountId", this.getArguments().getLong("account_id", -1L));
        }
        this.getLoaderManager().initLoader(0, bundle2, (LoaderManager$LoaderCallbacks)new M(this, (Context)this.getActivity(), (byte)0));
    }
    
    public void onActivityResult(final int n, final int n2, final Intent intent) {
        switch (n) {
            case 0: {
                if (n2 == -1 && intent != null) {
                    final Uri uri = (Uri)intent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI");
                    if (uri != null) {
                        this.Ns.bE(uri.toString());
                        this.Nr = RingtoneManager.getRingtone((Context)this.getActivity(), uri);
                    }
                    else {
                        this.Ns.bE("");
                        this.Nr = null;
                    }
                    this.hK();
                    return;
                }
                break;
            }
        }
    }
    
    public void onAttach(final Activity mContext) {
        super.onAttach(mContext);
        this.mContext = (Context)mContext;
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setHasOptionsMenu(true);
        this.addPreferencesFromResource(2131099649);
        if (!this.getResources().getBoolean(2131623952)) {
            final Preference preference = this.findPreference((CharSequence)"account_quick_responses");
            if (preference != null) {
                this.getPreferenceScreen().removePreference(preference);
            }
        }
        final Bundle arguments = this.getArguments();
        if (arguments != null) {
            this.Nt = arguments.getString("email");
        }
        if (bundle != null) {
            final CharSequence[] charSequenceArray = bundle.getCharSequenceArray("savestate_sync_interval_strings");
            final CharSequence[] charSequenceArray2 = bundle.getCharSequenceArray("savestate_sync_intervals");
            this.Nj = (ListPreference)this.findPreference((CharSequence)"account_check_frequency");
            if (this.Nj != null) {
                this.Nj.setEntries(charSequenceArray);
                this.Nj.setEntryValues(charSequenceArray2);
            }
        }
    }
    
    public void onCreateOptionsMenu(final Menu menu, final MenuInflater menuInflater) {
        menu.clear();
        menuInflater.inflate(2131755026, menu);
    }
    
    public boolean onPreferenceChange(final Preference preference, final Object o) {
        final String key = preference.getKey();
        final ContentValues contentValues = new ContentValues(1);
        if (key.equals("account_description")) {
            String s = o.toString().trim();
            if (TextUtils.isEmpty((CharSequence)s)) {
                s = this.No.lw();
            }
            this.Ng.setSummary((CharSequence)s);
            this.Ng.setText(s);
            contentValues.put("displayName", s);
        }
        else if (key.equals("account_name")) {
            final String trim = o.toString().trim();
            if (!TextUtils.isEmpty((CharSequence)trim)) {
                this.Nh.setSummary((CharSequence)trim);
                this.Nh.setText(trim);
                contentValues.put("senderName", trim);
            }
        }
        else if (key.equals("account_signature")) {
            String string = o.toString();
            if (string.trim().isEmpty()) {
                string = "";
            }
            this.Ni.setText(string);
            g.a((Preference)this.Ni, string);
            contentValues.put("signature", string);
        }
        else if (key.equals("account_check_frequency")) {
            final String string2 = o.toString();
            this.Nj.setSummary(this.Nj.getEntries()[this.Nj.findIndexOfValue(string2)]);
            this.Nj.setValue(string2);
            if (this.Np.US || this.Np.UT) {
                contentValues.put("syncInterval", Integer.parseInt(string2));
            }
            else {
                final android.accounts.Account account = new android.accounts.Account(this.Ml.NP, this.Np.accountType);
                if (Integer.parseInt(string2) == -1) {
                    ContentResolver.setSyncAutomatically(account, EmailContent.AUTHORITY, false);
                }
                else {
                    ContentResolver.setSyncAutomatically(account, EmailContent.AUTHORITY, true);
                    contentValues.put("syncInterval", Integer.parseInt(string2));
                }
            }
        }
        else if (key.equals("account_sync_window")) {
            final String string3 = o.toString();
            this.Nk.setSummary(this.Nk.getEntries()[this.Nk.findIndexOfValue(string3)]);
            this.Nk.setValue(string3);
            contentValues.put("syncLookback", Integer.parseInt(string3));
        }
        else if (key.equals("account_sync_email")) {
            ContentResolver.setSyncAutomatically(new android.accounts.Account(this.Ml.NP, this.Np.accountType), EmailContent.AUTHORITY, (boolean)o);
            this.hL();
        }
        else if (key.equals("account_sync_contacts")) {
            ContentResolver.setSyncAutomatically(new android.accounts.Account(this.Ml.NP, this.Np.accountType), "com.android.contacts", (boolean)o);
            this.hL();
        }
        else if (key.equals("account_sync_calendar")) {
            ContentResolver.setSyncAutomatically(new android.accounts.Account(this.Ml.NP, this.Np.accountType), "com.android.calendar", (boolean)o);
            this.hL();
        }
        else if (key.equals("account_background_attachments")) {
            final int n = 0xFFFFFEFF & this.Ml.getFlags();
            int n2;
            if (o) {
                n2 = 256;
            }
            else {
                n2 = 0;
            }
            contentValues.put("flags", n2 | n);
        }
        else {
            if ("notifications-enabled".equals(key)) {
                this.Ns.aW((boolean)o);
                return true;
            }
            if ("notification-vibrate".equals(key)) {
                final boolean booleanValue = (boolean)o;
                this.Nm.setChecked(booleanValue);
                this.Ns.aX(booleanValue);
                return true;
            }
            if ("notification-ringtone".equals(key)) {
                return true;
            }
            E.c(E.TAG, "Unknown preference key %s", key);
            return true;
        }
        if (contentValues.size() > 0) {
            new com.android.mail.utils.g().b(this.mContext.getContentResolver(), this.Ml.getUri(), contentValues);
            EmailProvider.I(this.mContext);
        }
        return false;
    }
    
    public boolean onPreferenceTreeClick(final PreferenceScreen preferenceScreen, final Preference preference) {
        if (preference.getKey().equals("account_sync_settings")) {
            this.startActivity(MailboxSettings.a((Context)this.getActivity(), this.No.ayi, this.Nq));
            return true;
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.Nj != null) {
            bundle.putCharSequenceArray("savestate_sync_interval_strings", this.Nj.getEntries());
            bundle.putCharSequenceArray("savestate_sync_intervals", this.Nj.getEntryValues());
        }
    }
}
