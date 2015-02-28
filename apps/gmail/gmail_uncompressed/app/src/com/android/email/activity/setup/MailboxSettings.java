package com.android.email.activity.setup;

import android.net.*;
import com.android.mail.providers.*;
import android.content.*;
import android.content.res.*;
import android.text.*;
import java.util.*;
import android.os.*;
import android.app.*;
import android.view.*;
import com.android.emailcommon.provider.*;
import android.preference.*;
import com.google.common.base.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;

public class MailboxSettings extends PreferenceActivity
{
    private Uri Pr;
    private int Ps;
    private final List<Folder> Pt;
    
    public MailboxSettings() {
        this.Pt = new ArrayList<Folder>();
    }
    
    public static Intent a(final Context context, final Uri uri, final Folder folder) {
        final Intent intent = new Intent(context, (Class)MailboxSettings.class);
        intent.putExtra("FOLDERS_URI", (Parcelable)uri);
        intent.putExtra("INBOX_ID", folder.id);
        return intent;
    }
    
    public static void a(final Context context, final ListPreference listPreference, final int n, final boolean b) {
        final Resources resources = context.getResources();
        CharSequence[] entryValues;
        CharSequence[] entries;
        int n2;
        if (b) {
            final CharSequence[] textArray = resources.getTextArray(2131689492);
            entryValues = resources.getTextArray(2131689493);
            entries = textArray;
            n2 = 1;
        }
        else {
            final CharSequence[] textArray2 = resources.getTextArray(2131689490);
            entryValues = resources.getTextArray(2131689491);
            entries = textArray2;
            n2 = 0;
        }
        if (n > 0) {
            final int n3 = n2 + n;
            entries = Arrays.copyOf(entries, n3);
            entryValues = Arrays.copyOf(entryValues, n3);
        }
        listPreference.setEntries(entries);
        listPreference.setEntryValues(entryValues);
        listPreference.setSummary(listPreference.getEntry());
    }
    
    protected boolean isValidFragment(final String s) {
        return true;
    }
    
    public void onBuildHeaders(final List<PreferenceActivity$Header> list) {
        if (this.Pt.isEmpty()) {
            final PreferenceActivity$Header preferenceActivity$Header = new PreferenceActivity$Header();
            preferenceActivity$Header.titleRes = 2131296763;
            preferenceActivity$Header.fragment = aQ.class.getName();
            preferenceActivity$Header.fragmentArguments = aQ.n(this.Ps);
            list.add(preferenceActivity$Header);
        }
        else {
            for (final Folder folder : this.Pt) {
                final PreferenceActivity$Header preferenceActivity$Header2 = new PreferenceActivity$Header();
                if (!TextUtils.isEmpty((CharSequence)folder.aAp)) {
                    preferenceActivity$Header2.title = folder.aAp;
                }
                else {
                    preferenceActivity$Header2.title = folder.name;
                }
                preferenceActivity$Header2.fragment = aQ.class.getName();
                preferenceActivity$Header2.fragmentArguments = aQ.n(folder.id);
                if (folder.id == this.Ps) {
                    list.add(0, preferenceActivity$Header2);
                }
                else {
                    list.add(preferenceActivity$Header2);
                }
            }
        }
    }
    
    protected void onCreate(final Bundle bundle) {
        this.Ps = this.getIntent().getIntExtra("INBOX_ID", -1);
        this.Pr = (Uri)this.getIntent().getParcelableExtra("FOLDERS_URI");
        if (this.Pr != null) {
            this.getLoaderManager().initLoader(0, (Bundle)null, (LoaderManager$LoaderCallbacks)new aP(this, (byte)0));
        }
        super.onCreate(bundle);
        final ActionBar actionBar = this.getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayOptions(4, 4);
            actionBar.setIcon(17170445);
            actionBar.setDisplayUseLogoEnabled(false);
        }
    }
    
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            this.onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
