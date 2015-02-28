.class public Lcom/android/email/activity/setup/AccountSettingsFragment;
.super Lcom/android/mail/ui/settings/c;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private Ml:Lcom/android/emailcommon/provider/Account;

.field private Ng:Landroid/preference/EditTextPreference;

.field private Nh:Landroid/preference/EditTextPreference;

.field private Ni:Landroid/preference/EditTextPreference;

.field private Nj:Landroid/preference/ListPreference;

.field private Nk:Landroid/preference/ListPreference;

.field private Nl:Landroid/preference/Preference;

.field private Nm:Landroid/preference/CheckBoxPreference;

.field private Nn:Landroid/preference/Preference;

.field private No:Lcom/android/mail/providers/Account;

.field private Np:Lcom/android/email/service/o;

.field private Nq:Lcom/android/mail/providers/Folder;

.field private Nr:Landroid/media/Ringtone;

.field private Ns:Lcom/android/mail/i/e;

.field private Nt:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/mail/ui/settings/c;-><init>()V

    .line 524
    return-void
.end method

.method static synthetic a(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/email/service/o;)Lcom/android/email/service/o;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    return-object p1
.end method

.method static synthetic a(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic a(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/Account;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    return-object p1
.end method

.method static synthetic a(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/mail/i/e;)Lcom/android/mail/i/e;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ns:Lcom/android/mail/i/e;

    return-object p1
.end method

.method static synthetic a(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Account;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->No:Lcom/android/mail/providers/Account;

    return-object p1
.end method

.method static synthetic a(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/mail/providers/Folder;)Lcom/android/mail/providers/Folder;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nq:Lcom/android/mail/providers/Folder;

    return-object p1
.end method

.method static synthetic b(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->No:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method static synthetic c(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nq:Lcom/android/mail/providers/Folder;

    return-object v0
.end method

.method static synthetic d(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nl:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic e(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->hL()V

    return-void
.end method

.method static synthetic f(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ns:Lcom/android/mail/i/e;

    invoke-virtual {v1}, Lcom/android/mail/i/e;->tu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic g(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private hK()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nr:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nr:Landroid/media/Ringtone;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nn:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 274
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f09017e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hL()V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 641
    new-instance v0, Lcom/android/mail/i/a;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->No:Lcom/android/mail/providers/Account;

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/mail/i/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 643
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ns:Lcom/android/mail/i/e;

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ns:Lcom/android/mail/i/e;

    invoke-static {v0, v1}, Lcom/android/mail/utils/N;->a(Lcom/android/mail/i/a;Lcom/android/mail/i/e;)V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    if-nez v1, :cond_2

    .line 650
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "Could not find service info for account %d with protocol %s"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    aput-object v0, v5, v3

    invoke-static {v1, v2, v5}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 653
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 947
    :cond_1
    :goto_0
    return-void

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->No:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v5

    .line 659
    const-string v0, "account_description"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ng:Landroid/preference/EditTextPreference;

    .line 660
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ng:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ng:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ng:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 664
    const-string v0, "account_name"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nh:Landroid/preference/EditTextPreference;

    .line 665
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->No:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->ik()Ljava/lang/String;

    move-result-object v0

    .line 667
    if-nez v0, :cond_3

    .line 668
    const-string v0, ""

    .line 670
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nh:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nh:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nh:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 674
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->lx()Ljava/lang/String;

    move-result-object v1

    .line 675
    const-string v0, "account_signature"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ni:Landroid/preference/EditTextPreference;

    .line 676
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ni:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ni:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 678
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ni:Landroid/preference/EditTextPreference;

    invoke-static {v0, v1}, Lcom/android/mail/ui/settings/g;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 681
    const-string v0, "account_check_frequency"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    .line 682
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-object v1, v1, Lcom/android/email/service/o;->UV:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 683
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-object v1, v1, Lcom/android/email/service/o;->UW:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 684
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-boolean v0, v0, Lcom/android/email/service/o;->US:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-boolean v0, v0, Lcom/android/email/service/o;->UT:Z

    if-eqz v0, :cond_11

    .line 689
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->ly()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 704
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 707
    const-string v0, "account_quick_responses"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 708
    if-eqz v0, :cond_5

    .line 709
    new-instance v1, Lcom/android/email/activity/setup/G;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/G;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 720
    :cond_5
    const-string v0, "data_usage"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 723
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-boolean v1, v1, Lcom/android/email/service/o;->UP:Z

    if-eqz v1, :cond_8

    .line 724
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nk:Landroid/preference/ListPreference;

    if-nez v1, :cond_6

    .line 725
    new-instance v1, Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nk:Landroid/preference/ListPreference;

    .line 726
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nk:Landroid/preference/ListPreference;

    const-string v2, "account_sync_window"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 727
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nk:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 729
    :cond_6
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nk:Landroid/preference/ListPreference;

    const v2, 0x7f090261

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 730
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nk:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->lz()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->PW:Lcom/android/emailcommon/provider/Policy;

    if-eqz v1, :cond_13

    .line 733
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->PW:Lcom/android/emailcommon/provider/Policy;

    iget v1, v1, Lcom/android/emailcommon/provider/Policy;->aac:I

    .line 738
    :goto_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nk:Landroid/preference/ListPreference;

    invoke-static {v2, v6, v1, v4}, Lcom/android/email/activity/setup/MailboxSettings;->a(Landroid/content/Context;Landroid/preference/ListPreference;IZ)V

    .line 742
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nk:Landroid/preference/ListPreference;

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setOrder(I)V

    .line 743
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nk:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 745
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nl:Landroid/preference/Preference;

    if-nez v1, :cond_7

    .line 746
    new-instance v1, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nl:Landroid/preference/Preference;

    .line 747
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nl:Landroid/preference/Preference;

    const-string v2, "account_sync_settings"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 748
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nl:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 750
    :cond_7
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nl:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nq:Lcom/android/mail/providers/Folder;

    if-eqz v1, :cond_14

    move v1, v3

    :goto_3
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 751
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nl:Landroid/preference/Preference;

    const v2, 0x7f0902ed

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 752
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nl:Landroid/preference/Preference;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 755
    :cond_8
    const-string v1, "system_folders"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 757
    if-eqz v1, :cond_9

    .line 758
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-boolean v2, v2, Lcom/android/email/service/o;->Vb:Z

    if-eqz v2, :cond_15

    .line 759
    const-string v1, "system_folders_trash"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 760
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/email/provider/w;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 761
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "account"

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 763
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 764
    const-string v7, "mailbox_type"

    const/4 v8, 0x6

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 765
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 767
    const-string v1, "system_folders_sent"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 768
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/email/provider/w;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 769
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 770
    const-string v6, "mailbox_type"

    const/4 v7, 0x5

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 771
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 777
    :cond_9
    :goto_4
    const-string v1, "account_background_attachments"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 779
    if-eqz v1, :cond_a

    .line 780
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-boolean v2, v2, Lcom/android/email/service/o;->UU:Z

    if-nez v2, :cond_16

    .line 781
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 789
    :cond_a
    :goto_5
    const-string v1, "account_notifications"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 792
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ns:Lcom/android/mail/i/e;

    if-eqz v2, :cond_19

    .line 793
    const-string v2, "notifications-enabled"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 795
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ns:Lcom/android/mail/i/e;

    invoke-virtual {v6}, Lcom/android/mail/i/e;->to()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 796
    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 798
    const-string v2, "notification-ringtone"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nn:Landroid/preference/Preference;

    .line 799
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ns:Lcom/android/mail/i/e;

    invoke-virtual {v2}, Lcom/android/mail/i/e;->tu()Ljava/lang/String;

    move-result-object v2

    .line 800
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 801
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nr:Landroid/media/Ringtone;

    .line 803
    :cond_b
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->hK()V

    .line 804
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nn:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 805
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nn:Landroid/preference/Preference;

    new-instance v6, Lcom/android/email/activity/setup/H;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/H;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 814
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 817
    const-string v2, "notification-vibrate"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nm:Landroid/preference/CheckBoxPreference;

    .line 819
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nm:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_c

    .line 820
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nm:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ns:Lcom/android/mail/i/e;

    invoke-virtual {v6}, Lcom/android/mail/i/e;->tv()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 822
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 823
    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 825
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 836
    :cond_c
    :goto_6
    const-string v1, "policies_retry_account"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 837
    const-string v1, "account_policies"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 839
    if-eqz v1, :cond_d

    .line 860
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 865
    :cond_d
    if-eqz v2, :cond_e

    .line 866
    new-instance v6, Lcom/android/email/activity/setup/I;

    invoke-direct {v6, p0, v1, v2}, Lcom/android/email/activity/setup/I;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 880
    :cond_e
    const-string v1, "incoming"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/J;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/J;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 890
    const-string v1, "outgoing"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 891
    if-eqz v2, :cond_f

    .line 892
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-boolean v1, v1, Lcom/android/email/service/o;->UK:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->XM:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v1, :cond_1a

    .line 893
    new-instance v1, Lcom/android/email/activity/setup/K;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/K;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 914
    :cond_f
    :goto_7
    const-string v1, "account_sync_contacts"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 916
    const-string v2, "account_sync_calendar"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 918
    const-string v3, "account_sync_email"

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 920
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 921
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-boolean v6, v6, Lcom/android/email/service/o;->US:Z

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-boolean v6, v6, Lcom/android/email/service/o;->UT:Z

    if-eqz v6, :cond_1e

    .line 922
    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-boolean v0, v0, Lcom/android/email/service/o;->US:Z

    if-eqz v0, :cond_1c

    .line 923
    const-string v0, "com.android.contacts"

    invoke-static {v5, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 925
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 930
    :goto_8
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-boolean v0, v0, Lcom/android/email/service/o;->UT:Z

    if-eqz v0, :cond_1d

    .line 931
    const-string v0, "com.android.calendar"

    invoke-static {v5, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 933
    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 938
    :goto_9
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 940
    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 696
    :cond_11
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 698
    if-eqz v0, :cond_12

    .line 699
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->ly()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 701
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_13
    move v1, v4

    .line 735
    goto/16 :goto_2

    :cond_14
    move v1, v4

    .line 750
    goto/16 :goto_3

    .line 773
    :cond_15
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 783
    :cond_16
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_17

    move v2, v3

    :goto_a
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 785
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_5

    :cond_17
    move v2, v4

    .line 783
    goto :goto_a

    .line 828
    :cond_18
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 829
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nm:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_6

    .line 833
    :cond_19
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_6

    .line 902
    :cond_1a
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-boolean v1, v1, Lcom/android/email/service/o;->UK:Z

    if-eqz v1, :cond_1b

    .line 905
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v6, "Account %d has a bad outbound hostauth"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v1, v6, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 908
    :cond_1b
    const-string v1, "account_servers"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 910
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 927
    :cond_1c
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 928
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_8

    .line 935
    :cond_1d
    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 936
    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_9

    .line 942
    :cond_1e
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 943
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 944
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public final b(Lcom/android/mail/providers/Account;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 970
    invoke-static {p1}, Lcom/android/email/activity/setup/D;->a(Lcom/android/mail/providers/Account;)Landroid/os/Bundle;

    move-result-object v2

    .line 971
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 972
    const-class v1, Lcom/android/email/activity/setup/D;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0902a4

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 974
    return-void
.end method

.method public final h(Lcom/android/emailcommon/provider/Account;)V
    .locals 2

    .prologue
    .line 980
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->c(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Landroid/content/Intent;

    move-result-object v0

    .line 982
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 983
    return-void
.end method

.method public final i(Lcom/android/emailcommon/provider/Account;)V
    .locals 2

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->d(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Landroid/content/Intent;

    move-result-object v0

    .line 991
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 992
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 230
    invoke-super {p0, p1}, Lcom/android/mail/ui/settings/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 231
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 232
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    const-string v1, "accountEmail"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/M;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v6}, Lcom/android/email/activity/setup/M;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/content/Context;B)V

    invoke-virtual {v1, v6, v0, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 239
    return-void

    .line 235
    :cond_0
    const-string v1, "accountId"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "account_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 243
    packed-switch p1, :pswitch_data_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 245
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 246
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 247
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ns:Lcom/android/mail/i/e;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mail/i/e;->bE(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nr:Landroid/media/Ringtone;

    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->hK()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ns:Lcom/android/mail/i/e;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mail/i/e;->bE(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nr:Landroid/media/Ringtone;

    goto :goto_1

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/android/mail/ui/settings/c;->onAttach(Landroid/app/Activity;)V

    .line 169
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    .line 170
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/android/mail/ui/settings/c;->onCreate(Landroid/os/Bundle;)V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->setHasOptionsMenu(Z)V

    .line 183
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addPreferencesFromResource(I)V

    .line 185
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const-string v0, "account_quick_responses"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_1

    .line 196
    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nt:Ljava/lang/String;

    .line 198
    :cond_1
    if-eqz p1, :cond_2

    .line 205
    const-string v0, "savestate_sync_interval_strings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 207
    const-string v0, "savestate_sync_intervals"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 209
    const-string v0, "account_check_frequency"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    .line 210
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 215
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 414
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 415
    const v0, 0x7f100012

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 416
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 298
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 299
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 300
    const-string v4, "account_description"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->No:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ng:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ng:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 307
    const-string v2, "displayName"

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_1
    :goto_0
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 406
    new-instance v0, Lcom/android/mail/utils/g;

    invoke-direct {v0}, Lcom/android/mail/utils/g;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/Account;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/mail/utils/g;->b(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 407
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/provider/EmailProvider;->I(Landroid/content/Context;)V

    .line 409
    :cond_2
    :goto_1
    return v1

    .line 308
    :cond_3
    const-string v4, "account_name"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 309
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 311
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nh:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nh:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 313
    const-string v2, "senderName"

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_4
    const-string v4, "account_signature"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 319
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 321
    const-string v0, ""

    .line 323
    :cond_5
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ni:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ni:Landroid/preference/EditTextPreference;

    invoke-static {v2, v0}, Lcom/android/mail/ui/settings/g;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 326
    const-string v2, "signature"

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_6
    const-string v4, "account_check_frequency"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 328
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 330
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v4, v6, v4

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 332
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-boolean v4, v4, Lcom/android/email/service/o;->US:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-boolean v4, v4, Lcom/android/email/service/o;->UT:Z

    if-eqz v4, :cond_8

    .line 338
    :cond_7
    const-string v0, "syncInterval"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 345
    :cond_8
    new-instance v4, Landroid/accounts/Account;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->NP:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-object v6, v6, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_9

    .line 350
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v4, v0, v1}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 354
    :cond_9
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v4, v5, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 356
    const-string v0, "syncInterval"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 359
    :cond_a
    const-string v4, "account_sync_window"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 360
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nk:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 362
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nk:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nk:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v2, v5, v2

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nk:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 364
    const-string v2, "syncLookback"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 365
    :cond_b
    const-string v4, "account_sync_email"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 366
    new-instance v0, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->NP:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-object v4, v4, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v0, v2, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 370
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->hL()V

    goto/16 :goto_0

    .line 371
    :cond_c
    const-string v4, "account_sync_contacts"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 372
    new-instance v0, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->NP:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-object v4, v4, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v2, "com.android.contacts"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v0, v2, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 376
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->hL()V

    goto/16 :goto_0

    .line 377
    :cond_d
    const-string v4, "account_sync_calendar"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 378
    new-instance v0, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->NP:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Np:Lcom/android/email/service/o;

    iget-object v4, v4, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v2, "com.android.calendar"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v0, v2, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 382
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->hL()V

    goto/16 :goto_0

    .line 383
    :cond_e
    const-string v4, "account_background_attachments"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 384
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getFlags()I

    move-result v0

    and-int/lit16 v2, v0, -0x101

    .line 386
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x100

    :goto_2
    or-int/2addr v0, v2

    .line 389
    const-string v2, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_f
    move v0, v1

    .line 386
    goto :goto_2

    .line 390
    :cond_10
    const-string v3, "notifications-enabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 391
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ns:Lcom/android/mail/i/e;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mail/i/e;->aW(Z)V

    move v1, v0

    .line 392
    goto/16 :goto_1

    .line 393
    :cond_11
    const-string v3, "notification-vibrate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 394
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 395
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 396
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Ns:Lcom/android/mail/i/e;

    invoke-virtual {v2, v1}, Lcom/android/mail/i/e;->aX(Z)V

    move v1, v0

    .line 397
    goto/16 :goto_1

    .line 398
    :cond_12
    const-string v3, "notification-ringtone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    move v1, v0

    .line 399
    goto/16 :goto_1

    .line 402
    :cond_13
    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v4, "Unknown preference key %s"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v0

    .line 403
    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 279
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 280
    const-string v1, "account_sync_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->No:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->ayi:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nq:Lcom/android/mail/providers/Folder;

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/MailboxSettings;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/providers/Folder;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 283
    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/settings/c;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/android/mail/ui/settings/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 220
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "savestate_sync_interval_strings"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 223
    const-string v0, "savestate_sync_intervals"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->Nj:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 226
    :cond_0
    return-void
.end method
