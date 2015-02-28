.class public Lcom/android/email/activity/setup/Q;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/android/email/activity/setup/bc;


# instance fields
.field protected Mk:Lcom/android/email/activity/setup/SetupDataFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final hN()Lcom/android/email/activity/setup/SetupDataFragment;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/email/activity/setup/Q;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    if-nez p1, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/android/email/activity/setup/Q;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    const-string v1, "com.android.email.setupdata"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SetupDataFragment;

    iput-object v0, p0, Lcom/android/email/activity/setup/Q;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    .line 39
    iget-object v0, p0, Lcom/android/email/activity/setup/Q;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/email/activity/setup/Q;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/email/activity/setup/Q;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    const-string v2, "setupData"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 42
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 50
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/Q;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-direct {v0}, Lcom/android/email/activity/setup/SetupDataFragment;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/Q;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    .line 52
    invoke-virtual {p0}, Lcom/android/email/activity/setup/Q;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/android/email/activity/setup/Q;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    const-string v2, "setupData"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 54
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 56
    :cond_1
    return-void

    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/Q;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "setupData"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SetupDataFragment;

    iput-object v0, p0, Lcom/android/email/activity/setup/Q;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    goto :goto_0
.end method
