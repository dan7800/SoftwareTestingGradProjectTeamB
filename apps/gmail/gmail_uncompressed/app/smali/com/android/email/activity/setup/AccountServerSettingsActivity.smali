.class public Lcom/android/email/activity/setup/AccountServerSettingsActivity;
.super Lcom/android/email/activity/setup/Q;
.source "SourceFile"

# interfaces
.implements Lcom/android/email/activity/setup/A;
.implements Lcom/android/email/activity/setup/aD;
.implements Lcom/android/email/activity/setup/aG;
.implements Lcom/android/email/activity/setup/b;
.implements Lcom/android/email/activity/setup/ba;


# instance fields
.field private MZ:Lcom/android/email/activity/setup/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/email/activity/setup/Q;-><init>()V

    .line 225
    return-void
.end method

.method static synthetic a(Lcom/android/email/activity/setup/AccountServerSettingsActivity;)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Lcom/android/email/activity/setup/Q;->onBackPressed()V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountServerSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    const-string v1, "whichSettings"

    const-string v2, "incoming"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    return-object v0
.end method

.method public static d(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountServerSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    const-string v1, "whichSettings"

    const-string v2, "outgoing"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    return-object v0
.end method

.method private hG()V
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "AccountCheckStgFrag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckProgressDialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 189
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 193
    return-void
.end method


# virtual methods
.method public final Y(Z)V
    .locals 1

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->MZ:Lcom/android/email/activity/setup/x;

    .line 199
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/android/email/activity/setup/x;->hA()V

    .line 204
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->hG()V

    .line 175
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/az;->b(ILjava/lang/String;)Lcom/android/email/activity/setup/az;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckSettingsErrorDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/az;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public final aO(I)V
    .locals 4

    .prologue
    .line 139
    invoke-static {p1}, Lcom/android/email/activity/setup/aE;->aR(I)Lcom/android/email/activity/setup/aE;

    move-result-object v0

    .line 140
    invoke-static {p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->aN(I)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v1

    .line 141
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "CheckProgressDialog"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v2, "AccountCheckStgFrag"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 145
    return-void
.end method

.method public final hE()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/email/activity/setup/Q;->onBackPressed()V

    .line 135
    return-void
.end method

.method public final hF()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->hG()V

    .line 150
    return-void
.end method

.method public final hH()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public final hI()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->MZ:Lcom/android/email/activity/setup/x;

    .line 214
    instance-of v1, v0, Lcom/android/email/activity/setup/ad;

    if-eqz v1, :cond_0

    .line 215
    check-cast v0, Lcom/android/email/activity/setup/ad;

    .line 216
    invoke-virtual {v0}, Lcom/android/email/activity/setup/ad;->hU()V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Tried to change cert on non-incoming screen?"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final hn()V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->hG()V

    .line 159
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->MZ:Lcom/android/email/activity/setup/x;

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/android/email/activity/setup/x;->hA()V

    .line 163
    :cond_0
    return-void
.end method

.method public final ho()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final hv()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->hG()V

    .line 168
    invoke-static {p1}, Lcom/android/email/activity/setup/aX;->v(Ljava/lang/String;)Lcom/android/email/activity/setup/aX;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SecurityRequiredDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/aX;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/Q;->onAttachFragment(Landroid/app/Fragment;)V

    .line 96
    instance-of v0, p1, Lcom/android/email/activity/setup/x;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lcom/android/email/activity/setup/x;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->MZ:Lcom/android/email/activity/setup/x;

    .line 99
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->MZ:Lcom/android/email/activity/setup/x;

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/android/email/activity/setup/x;->hz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/android/email/activity/setup/B;->hJ()Lcom/android/email/activity/setup/B;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "UnsavedChangesDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/B;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/android/email/activity/setup/Q;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 67
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/Q;->onCreate(Landroid/os/Bundle;)V

    .line 69
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/SetupDataFragment;->aT(I)V

    .line 71
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->setContentView(I)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->setFinishOnTouchOutside(Z)V

    .line 74
    if-nez p1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 76
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No account present in intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/SetupDataFragment;->e(Lcom/android/emailcommon/provider/Account;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "whichSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "outgoing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-static {v2}, Lcom/android/email/activity/setup/aq;->ae(Z)Lcom/android/email/activity/setup/aq;

    move-result-object v0

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d0099

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 91
    :cond_1
    return-void

    .line 85
    :cond_2
    invoke-static {v2}, Lcom/android/email/activity/setup/ad;->ac(Z)Lcom/android/email/activity/setup/ad;

    move-result-object v0

    goto :goto_0
.end method
