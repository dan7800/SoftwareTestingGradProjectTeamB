.class public Lcom/android/email/activity/setup/MailboxSettings;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# instance fields
.field private Pr:Landroid/net/Uri;

.field private Ps:I

.field private final Pt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->Pt:Ljava/util/List;

    .line 226
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/providers/Folder;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/MailboxSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string v1, "FOLDERS_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    const-string v1, "INBOX_ID"

    iget v2, p2, Lcom/android/mail/providers/Folder;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    return-object v0
.end method

.method static synthetic a(Lcom/android/email/activity/setup/MailboxSettings;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->Pr:Landroid/net/Uri;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/preference/ListPreference;IZ)V
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 170
    if-eqz p3, :cond_1

    .line 171
    const v1, 0x7f0f0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 173
    const v1, 0x7f0f0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 175
    const/4 v0, 0x1

    move v3, v0

    move-object v0, v2

    move v2, v3

    .line 182
    :goto_0
    if-lez p2, :cond_0

    .line 183
    add-int/2addr v2, p2

    .line 184
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 185
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 188
    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    return-void

    .line 177
    :cond_1
    const v1, 0x7f0f0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 178
    const v1, 0x7f0f0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 179
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v2

    move v2, v3

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/email/activity/setup/MailboxSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->Pt:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->Pt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 118
    const v1, 0x7f0901fb

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 119
    const-class v1, Lcom/android/email/activity/setup/aQ;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 120
    iget v1, p0, Lcom/android/email/activity/setup/MailboxSettings;->Ps:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/aQ;->n(J)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 121
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->Pt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 124
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 125
    iget-object v3, v0, Lcom/android/mail/providers/Folder;->aAp:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 126
    iget-object v3, v0, Lcom/android/mail/providers/Folder;->aAp:Ljava/lang/String;

    iput-object v3, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 130
    :goto_1
    const-class v3, Lcom/android/email/activity/setup/aQ;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 131
    iget v3, v0, Lcom/android/mail/providers/Folder;->id:I

    int-to-long v4, v3

    invoke-static {v4, v5}, Lcom/android/email/activity/setup/aQ;->n(J)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 132
    iget v0, v0, Lcom/android/mail/providers/Folder;->id:I

    iget v3, p0, Lcom/android/email/activity/setup/MailboxSettings;->Ps:I

    if-ne v0, v3, :cond_3

    .line 133
    const/4 v0, 0x0

    invoke-interface {p1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v3, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    iput-object v3, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_1

    .line 135
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "INBOX_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->Ps:I

    .line 95
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FOLDERS_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->Pr:Landroid/net/Uri;

    .line 97
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings;->Pr:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/android/email/activity/setup/aP;

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/setup/aP;-><init>(Lcom/android/email/activity/setup/MailboxSettings;B)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 102
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 109
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 110
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 112
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/email/activity/setup/MailboxSettings;->onBackPressed()V

    .line 151
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
