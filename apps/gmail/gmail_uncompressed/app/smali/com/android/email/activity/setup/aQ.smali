.class public Lcom/android/email/activity/setup/aQ;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# instance fields
.field private Pv:Lcom/android/emailcommon/provider/Mailbox;

.field private Pw:I

.field private Px:Landroid/preference/CheckBoxPreference;

.field private Py:Landroid/preference/ListPreference;

.field private final Pz:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 417
    new-instance v0, Lcom/android/email/activity/setup/aR;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/aR;-><init>(Lcom/android/email/activity/setup/aQ;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/aQ;->Pz:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 250
    return-void
.end method

.method static synthetic a(Lcom/android/email/activity/setup/aQ;I)I
    .locals 0

    .prologue
    .line 226
    iput p1, p0, Lcom/android/email/activity/setup/aQ;->Pw:I

    return p1
.end method

.method static synthetic a(Lcom/android/email/activity/setup/aQ;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/email/activity/setup/aQ;->Pv:Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method

.method static synthetic a(Lcom/android/email/activity/setup/aQ;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/email/activity/setup/aQ;->Pv:Lcom/android/emailcommon/provider/Mailbox;

    return-object p1
.end method

.method private af(Z)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/email/activity/setup/aQ;->Px:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/email/activity/setup/aQ;->Py:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 284
    return-void
.end method

.method static synthetic b(Lcom/android/email/activity/setup/aQ;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/email/activity/setup/aQ;->Px:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic c(Lcom/android/email/activity/setup/aQ;)Landroid/preference/ListPreference;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/email/activity/setup/aQ;->Py:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic d(Lcom/android/email/activity/setup/aQ;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/email/activity/setup/aQ;->iy()V

    return-void
.end method

.method static synthetic e(Lcom/android/email/activity/setup/aQ;)V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/aQ;->af(Z)V

    return-void
.end method

.method private iy()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 398
    iget-object v0, p0, Lcom/android/email/activity/setup/aQ;->Pv:Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v0}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aQ;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/android/email/activity/setup/aQ;->Pv:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Mailbox;->Xy:Ljava/lang/String;

    .line 403
    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 405
    const v1, 0x7f0902bb

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/aQ;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 412
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aQ;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/aQ;->Py:Landroid/preference/ListPreference;

    iget v2, p0, Lcom/android/email/activity/setup/aQ;->Pw:I

    invoke-static {v0, v1, v2, v5}, Lcom/android/email/activity/setup/MailboxSettings;->a(Landroid/content/Context;Landroid/preference/ListPreference;IZ)V

    .line 414
    return-void

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aQ;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0902bc

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/setup/aQ;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic n(J)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "MailboxId"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 254
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aQ;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MailboxId"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 256
    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aQ;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 260
    :cond_0
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/aQ;->addPreferencesFromResource(I)V

    .line 262
    const-string v0, "sync_enabled"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/aQ;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/aQ;->Px:Landroid/preference/CheckBoxPreference;

    .line 263
    const-string v0, "sync_window"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/aQ;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/email/activity/setup/aQ;->Py:Landroid/preference/ListPreference;

    .line 265
    iget-object v0, p0, Lcom/android/email/activity/setup/aQ;->Py:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/email/activity/setup/aQ;->Pz:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 267
    if-eqz p1, :cond_1

    .line 268
    const-string v0, "MailboxSettings.mailbox"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    iput-object v0, p0, Lcom/android/email/activity/setup/aQ;->Pv:Lcom/android/emailcommon/provider/Mailbox;

    .line 269
    const-string v0, "MailboxSettings.maxLookback"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/aQ;->Pw:I

    .line 270
    iget-object v0, p0, Lcom/android/email/activity/setup/aQ;->Px:Landroid/preference/CheckBoxPreference;

    const-string v1, "MailboxSettings.syncEnabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/email/activity/setup/aQ;->Py:Landroid/preference/ListPreference;

    const-string v1, "MailboxSettings.syncWindow"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/android/email/activity/setup/aQ;->iy()V

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/aQ;->af(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aQ;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/aQ;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/aU;

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/setup/aU;-><init>(Lcom/android/email/activity/setup/aQ;B)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 300
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 301
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aQ;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    if-nez v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/android/email/activity/setup/aQ;->Pv:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/aQ;->Px:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v0

    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/setup/aQ;->Py:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, p0, Lcom/android/email/activity/setup/aQ;->Pv:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->XB:I

    if-eq v3, v2, :cond_3

    move v2, v0

    :goto_1
    iget-object v4, p0, Lcom/android/email/activity/setup/aQ;->Pv:Lcom/android/emailcommon/provider/Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/Mailbox;->XA:I

    if-eq v5, v4, :cond_4

    move v4, v0

    :goto_2
    if-nez v2, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v6, "Saving mailbox settings..."

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/aQ;->af(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/aQ;->Pv:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v6, v0, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-virtual {p0}, Lcom/android/email/activity/setup/aQ;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-instance v0, Lcom/android/email/activity/setup/aS;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/setup/aS;-><init>(Lcom/android/email/activity/setup/aQ;ZIZIJLandroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/email/activity/setup/aS;->mf()Lcom/android/emailcommon/b/g;

    .line 304
    :cond_1
    return-void

    :cond_2
    move v3, v1

    .line 302
    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 289
    const-string v0, "MailboxSettings.mailbox"

    iget-object v1, p0, Lcom/android/email/activity/setup/aQ;->Pv:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 290
    const-string v0, "MailboxSettings.maxLookback"

    iget v1, p0, Lcom/android/email/activity/setup/aQ;->Pw:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string v0, "MailboxSettings.syncEnabled"

    iget-object v1, p0, Lcom/android/email/activity/setup/aQ;->Px:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    const-string v0, "MailboxSettings.syncWindow"

    iget-object v1, p0, Lcom/android/email/activity/setup/aQ;->Py:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method
