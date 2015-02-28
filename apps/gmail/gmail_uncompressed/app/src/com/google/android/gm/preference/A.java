package com.google.android.gm.preference;

import com.android.mail.i.*;
import com.google.android.gm.persistence.*;
import android.text.*;
import com.android.mail.ui.settings.*;
import com.google.common.collect.*;
import android.content.res.*;
import android.accounts.*;
import android.text.format.*;
import com.android.mail.providers.*;
import android.os.*;
import com.android.mail.utils.*;
import android.app.*;
import java.util.*;
import com.google.android.gm.provider.*;
import com.google.android.gm.*;
import android.content.*;
import com.android.mail.ui.*;
import com.google.android.gm.vacation.*;
import android.preference.*;

public final class a extends c implements Preference$OnPreferenceChangeListener, ds, e, o
{
    private String PS;
    private com.android.mail.i.a aHs;
    private b aWK;
    private Gmail$Settings aWU;
    private Preference bbs;
    
    private void DF() {
        final Activity activity = this.getActivity();
        final String a = this.aWK.a((Context)activity, this.PS, true);
        final ListPreference listPreference = (ListPreference)this.findPreference((CharSequence)"inbox-type");
        listPreference.setValue(a);
        listPreference.setSummary(listPreference.getEntry());
        final MailEngine eo = MailEngine.eO(this.PS);
        final boolean e = this.aWK.E((Context)this.getActivity(), this.PS);
        final boolean fx = eo.Fx();
        if ("default".equals(a) && (e || fx)) {
            if (this.getPreferenceScreen().findPreference((CharSequence)"inbox-categories") == null) {
                this.getPreferenceScreen().addPreference(this.bbs);
            }
            ImmutableSet<String> set;
            if (e) {
                final Collection<ai> values = eo.Fu().values();
                final z<String> zx = ImmutableSet.Zx();
                final Iterator<ai> iterator = values.iterator();
                while (iterator.hasNext()) {
                    zx.aH(iterator.next().getLabel());
                }
                set = zx.Zy();
            }
            else {
                set = ImmutableSet.aG("^sq_ig_i_personal");
            }
            final ArrayList list = new ArrayList<String>(set.size());
            final Iterator<Object> iterator2 = set.iterator();
            while (iterator2.hasNext()) {
                list.add(T.U((Context)activity, iterator2.next()));
            }
            this.bbs.setSummary((CharSequence)TextUtils.join((CharSequence)((Context)activity).getString(2131296553), (Iterable)list));
        }
        else {
            this.getPreferenceScreen().removePreference(this.bbs);
        }
        ((IntegerPickerPreference)this.findPreference((CharSequence)"number-picker")).a(this, (int)this.aWU.Ey());
        g.a(this.findPreference((CharSequence)"signature"), this.aWK.B((Context)activity, this.PS));
        this.DG();
        final Preference preference = this.findPreference((CharSequence)"vacation-responder");
        final bH gb = eo.GB();
        if (gb.enabled) {
            final long bnr = gb.bnr;
            final long n = gb.bns - 86400000L;
            final Resources resources = this.getResources();
            String summary;
            if (gb.bns <= 0L) {
                summary = resources.getString(2131296695, new Object[] { this.Y(bnr) });
            }
            else {
                String s;
                String s2;
                if (!M(bnr) || !M(n)) {
                    s = this.Z(bnr);
                    s2 = this.Z(n);
                }
                else {
                    s = this.Y(bnr);
                    s2 = this.Y(n);
                }
                summary = resources.getString(2131296696, new Object[] { s, s2 });
            }
            preference.setSummary((CharSequence)summary);
        }
        else {
            preference.setSummary(2131296694);
        }
        final ListPreference listPreference2 = (ListPreference)this.findPreference((CharSequence)"show-images-in-cv");
        if (listPreference2 != null) {
            if (!eo.FZ().FB()) {
                ((PreferenceGroup)this.findPreference((CharSequence)"data-usage")).removePreference((Preference)listPreference2);
                return;
            }
            String value;
            if (eo.FZ().FC()) {
                value = "always";
            }
            else {
                value = "ask";
            }
            listPreference2.setValue(value);
            listPreference2.setSummary(listPreference2.getEntry());
        }
    }
    
    private void DG() {
        final boolean masterSyncAutomatically = ContentResolver.getMasterSyncAutomatically();
        final boolean syncAutomatically = ContentResolver.getSyncAutomatically(new Account(this.PS, "com.google"), "gmail-ls");
        this.l("sync_status", masterSyncAutomatically && syncAutomatically);
        final Preference preference = this.findPreference((CharSequence)"sync_status");
        if (masterSyncAutomatically) {
            preference.setSummary((CharSequence)null);
            return;
        }
        preference.setSummary(2131297125);
    }
    
    private static boolean M(final long n) {
        final Time time = new Time();
        time.set(n);
        final int year = time.year;
        time.set(System.currentTimeMillis());
        return year == time.year;
    }
    
    private String Y(final long n) {
        return DateUtils.formatDateTime((Context)this.getActivity(), n, 524288);
    }
    
    private String Z(final long n) {
        return DateUtils.formatDateTime((Context)this.getActivity(), n, 524292);
    }
    
    private void bV(final Context context) {
        final Preference preference = this.findPreference((CharSequence)"inbox-settings");
        if (preference != null) {
            final Vibrator vibrator = (Vibrator)this.getActivity().getSystemService("vibrator");
            int n;
            if (vibrator != null && vibrator.hasVibrator()) {
                n = 1;
            }
            else {
                n = 0;
            }
            final String a = this.aWK.a(context, this.PS, true);
            int title;
            if (n != 0) {
                if ("priority".equals(a)) {
                    title = 2131297122;
                }
                else {
                    title = 2131297120;
                }
            }
            else if ("priority".equals(a)) {
                title = 2131297123;
            }
            else {
                title = 2131297121;
            }
            preference.setTitle(title);
            preference.setSummary((CharSequence)ay.f(context, this.PS, b.I(context, this.PS)));
        }
    }
    
    private void dL(final String s) {
        final Preference preference = this.findPreference((CharSequence)s);
        if (preference != null) {
            preference.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)this);
        }
    }
    
    private void i(final Activity activity) {
        this.l("notifications-enabled", this.aHs.to());
        final Folder i = ay.i((Context)this.getActivity(), this.PS, b.I((Context)this.getActivity(), this.PS));
        final Preference preference = this.findPreference((CharSequence)"notifications-enabled");
        if (preference != null) {
            if (i == null) {
                preference.setEnabled(false);
            }
            else {
                preference.setEnabled(true);
            }
        }
        this.bV((Context)activity);
    }
    
    private void l(final String s, final boolean checked) {
        final CheckBoxPreference checkBoxPreference = (CheckBoxPreference)this.findPreference((CharSequence)s);
        if (checkBoxPreference != null) {
            checkBoxPreference.setChecked(checked);
        }
    }
    
    public final void An() {
        this.findPreference((CharSequence)"sync_status").setSummary((CharSequence)null);
    }
    
    public final void Ao() {
        this.l("sync_status", false);
    }
    
    public final void DH() {
        ((CheckBoxPreference)this.findPreference((CharSequence)"notifications-enabled")).setChecked(this.aHs.to());
    }
    
    public final void dB(final int n) {
        this.aWU.ai(n);
        this.DF();
    }
    
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.PS = this.getArguments().getString("email");
        this.aWK = b.DD();
        this.aHs = new i((Context)this.getActivity(), this.PS);
        final Activity activity = this.getActivity();
        boolean b;
        if (activity instanceof PreferenceActivity) {
            b = ((PreferenceActivity)activity).onIsMultiPane();
        }
        else {
            b = ag.b(activity.getResources());
        }
        if (!b) {
            final ActionBar actionBar = this.getActivity().getActionBar();
            if (actionBar != null) {
                actionBar.setTitle((CharSequence)this.PS);
            }
        }
        this.aWU = Gmail.P((Context)this.getActivity(), this.PS);
        this.addPreferencesFromResource(2131099664);
        this.bbs = this.findPreference((CharSequence)"inbox-categories");
        this.bbs.getExtras().putString("account", this.PS);
    }
    
    public final void onDestroy() {
        super.onDestroy();
    }
    
    public final void onPause() {
        super.onPause();
        Gmail.a(this.PS, this.aWU, this.getActivity().getContentResolver());
    }
    
    public final boolean onPreferenceChange(final Preference preference, final Object o) {
        int n = 0;
        final Context context = preference.getContext();
        final String key = preference.getKey();
        boolean b;
        if ("signature".equals(key)) {
            this.aWK.m(context, this.PS, o.toString());
            this.DF();
            b = true;
        }
        else {
            if ("inbox-type".equals(key)) {
                final String s = (String)o;
                if (!s.equals(this.aWK.a(context, this.PS, true))) {
                    for (String[] stringArray = this.getActivity().getResources().getStringArray(2131689502); n < stringArray.length && !stringArray[n].equals(s); ++n) {}
                    preference.setSummary((CharSequence)this.getActivity().getResources().getStringArray(2131689501)[n]);
                    final String i = com.google.android.gm.persistence.b.I(context, this.PS);
                    this.aWK.o((Context)this.getActivity(), this.PS, s);
                    final String j = com.google.android.gm.persistence.b.I(context, this.PS);
                    this.i(this.getActivity());
                    Set<String> set;
                    if ("^sq_ig_i_personal".equals(j)) {
                        set = MailEngine.eO(this.PS).Fu().keySet();
                    }
                    else {
                        set = ImmutableSet.aG(j);
                    }
                    com.google.android.gm.persistence.b.a(context, this.PS, i, j, set, null);
                    A.O((Context)this.getActivity(), this.PS);
                    this.DF();
                }
                return true;
            }
            final boolean equals = "show-images-in-cv".equals(key);
            b = false;
            if (equals) {
                final ListPreference listPreference = (ListPreference)preference;
                final String value = (String)o;
                listPreference.setValue(value);
                listPreference.setSummary(listPreference.getEntry());
                MailEngine.eO(this.PS).FZ().bV("always".equals(value));
                GmailProvider.R(context, this.PS);
                return true;
            }
        }
        return b;
    }
    
    public final boolean onPreferenceTreeClick(final PreferenceScreen preferenceScreen, final Preference preference) {
        final String key = preference.getKey();
        if (key == null) {
            return false;
        }
        if ("notifications-enabled".equals(key)) {
            if (!((CheckBoxPreference)this.findPreference((CharSequence)"notifications-enabled")).isChecked()) {
                new com.google.android.gm.preference.b(this).execute((Object[])null);
            }
            else {
                new j((Context)this.getActivity(), this.PS, ay.i((Context)this.getActivity(), this.PS, b.I((Context)this.getActivity(), this.PS)), true).aW(true);
                this.bV((Context)this.getActivity());
                this.aHs.aW(true);
                A.O((Context)this.getActivity(), this.PS);
            }
        }
        else if (key.equals("prefetch-attachments")) {
            this.aWK.b((Context)this.getActivity(), this.PS, ((CheckBoxPreference)preference).isChecked());
        }
        else if (key.equals("manage-labels")) {
            final Intent intent = new Intent((Context)this.getActivity(), (Class)LabelsActivity.class);
            intent.putExtra("account_key", this.PS);
            this.startActivity(intent);
        }
        else if (key.equals("inbox-settings")) {
            final String i = b.I((Context)this.getActivity(), this.PS);
            final Intent intent2 = new Intent((Context)this.getActivity(), (Class)LabelsActivity.class);
            intent2.putExtra("account_key", this.PS);
            intent2.putExtra("label", i);
            this.startActivity(intent2);
        }
        else if (key.equals("sync_status")) {
            final boolean masterSyncAutomatically = ContentResolver.getMasterSyncAutomatically();
            final Account account = new Account(this.PS, "com.google");
            if (!masterSyncAutomatically) {
                final dp b = dp.b(account, "gmail-ls");
                b.a(this);
                b.show(this.getFragmentManager(), "auto sync");
            }
            else {
                ContentResolver.setSyncAutomatically(account, "gmail-ls", ((CheckBoxPreference)this.findPreference((CharSequence)"sync_status")).isChecked());
            }
        }
        else {
            if (!"vacation-responder".equals(key)) {
                return super.onPreferenceTreeClick(preferenceScreen, preference);
            }
            final Intent intent3 = new Intent((Context)this.getActivity(), (Class)VacationResponderActivity.class);
            intent3.putExtra("account_key", this.PS);
            this.startActivity(intent3);
        }
        return true;
    }
    
    public final void onResume() {
        super.onResume();
        final Activity activity = this.getActivity();
        this.DG();
        final Folder i = ay.i((Context)this.getActivity(), this.PS, b.I((Context)this.getActivity(), this.PS));
        final Preference preference = this.findPreference((CharSequence)"manage-labels");
        if (preference != null) {
            preference.setEnabled(i != null);
        }
        this.l("prefetch-attachments", this.aWK.H((Context)activity, this.PS));
        final String b = this.aWK.B((Context)activity, this.PS);
        final EditTextPreference editTextPreference = (EditTextPreference)this.findPreference((CharSequence)"signature");
        if (editTextPreference != null) {
            editTextPreference.setText(b);
        }
        this.i(activity);
        this.dL("inbox-type");
        this.dL("signature");
        this.dL("show-images-in-cv");
        final com.google.android.gm.preference.c c = (com.google.android.gm.preference.c)this.getFragmentManager().findFragmentByTag("DisableAccountNotificationsDialogFragment");
        if (c != null) {
            c.a(this);
        }
        this.DF();
    }
}
