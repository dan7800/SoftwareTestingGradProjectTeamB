package com.google.android.gm.preference;

import com.android.mail.ui.settings.*;
import android.preference.*;
import android.os.*;
import com.google.android.gm.provider.*;
import com.google.common.collect.*;
import java.util.*;
import com.android.mail.utils.*;

public final class InboxSectionsPreferenceFragment extends f
{
    private MailEngine bbE;
    private CheckBoxPreference bbF;
    private CheckBoxPreference bbG;
    private CheckBoxPreference bbH;
    private CheckBoxPreference bbI;
    private CheckBoxPreference bbJ;
    private boolean bbK;
    private boolean bbL;
    private boolean bbM;
    private boolean bbN;
    private boolean bbO;
    private String mAccount;
    
    public final void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.bbE != null) {
            this.getActivity().getActionBar().setSubtitle((CharSequence)this.bbE.FP());
        }
    }
    
    @Override
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.mAccount = this.getArguments().getString("account");
        this.bbE = MailEngine.eO(this.mAccount);
        if (this.bbE == null) {
            return;
        }
        this.addPreferencesFromResource(2131099666);
        this.bbF = (CheckBoxPreference)this.findPreference((CharSequence)"inbox-category-social");
        this.bbG = (CheckBoxPreference)this.findPreference((CharSequence)"inbox-category-promo");
        this.bbH = (CheckBoxPreference)this.findPreference((CharSequence)"inbox-category-notification");
        this.bbI = (CheckBoxPreference)this.findPreference((CharSequence)"inbox-category-group");
        this.bbJ = (CheckBoxPreference)this.findPreference((CharSequence)"inbox-sections-starred-in-personal");
        final MailEngine bbE = this.bbE;
        final Collection<ai> values = bbE.Fu().values();
        final z<String> zx = ImmutableSet.Zx();
        if (bbE.Fw()) {
            final Iterator<ai> iterator = values.iterator();
            while (iterator.hasNext()) {
                zx.aH(iterator.next().getLabel());
            }
        }
        else {
            zx.aH("^sq_ig_i_personal");
        }
        final ImmutableSet<String> zy = zx.Zy();
        this.bbK = zy.contains("^sq_ig_i_social");
        this.bbL = zy.contains("^sq_ig_i_promo");
        this.bbM = zy.contains("^sq_ig_i_notification");
        this.bbN = zy.contains("^sq_ig_i_group");
        this.bbO = bbE.Fv();
        this.bbF.setChecked(this.bbK);
        this.bbG.setChecked(this.bbL);
        this.bbH.setChecked(this.bbM);
        this.bbI.setChecked(this.bbN);
        this.bbJ.setChecked(this.bbO);
    }
    
    public final void onPause() {
        super.onPause();
        if (this.bbE == null) {
            return;
        }
        final boolean checked = this.bbF.isChecked();
        final boolean checked2 = this.bbG.isChecked();
        final boolean checked3 = this.bbH.isChecked();
        final boolean checked4 = this.bbI.isChecked();
        final boolean checked5 = this.bbJ.isChecked();
        if (this.bbK != checked || this.bbL != checked2 || this.bbM != checked3 || this.bbN != checked4 || this.bbO != checked5) {
            final z<Integer> zx = ImmutableSet.Zx();
            final z<String> zx2 = ImmutableSet.Zx();
            zx.aH(0);
            zx2.aH("^sq_ig_i_personal");
            if (checked) {
                zx.aH(1);
                zx2.aH("^sq_ig_i_social");
            }
            if (checked2) {
                zx.aH(2);
                zx2.aH("^sq_ig_i_promo");
            }
            if (checked3) {
                zx.aH(3);
                zx2.aH("^sq_ig_i_notification");
            }
            if (checked4) {
                zx.aH(4);
                zx2.aH("^sq_ig_i_group");
            }
            this.bbE.a(zx.Zy(), zx2.Zy(), checked5);
            final Bundle bundle = new Bundle(1);
            bundle.putBoolean("expedited", true);
            this.bbE.t(bundle);
            return;
        }
        E.c(D.AU(), "Section configuration was not changed, so leave as is", new Object[0]);
    }
}
