.class public Lcom/android/email/activity/setup/AccountCredentials;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/android/email/activity/setup/V;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountCredentials;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const-string v1, "protocol"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    return-object v0
.end method


# virtual methods
.method public final g(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 54
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/email/activity/setup/AccountCredentials;->setResult(ILandroid/content/Intent;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCredentials;->finish()V

    .line 56
    return-void
.end method

.method public final hv()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCredentials;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "credentials"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/U;

    .line 62
    invoke-virtual {v0}, Lcom/android/email/activity/setup/U;->hT()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountCredentials;->g(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f040017

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountCredentials;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCredentials;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCredentials;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "protocol"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountCredentials;->setFinishOnTouchOutside(Z)V

    .line 37
    if-nez p1, :cond_0

    .line 38
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/email/activity/setup/U;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/email/activity/setup/U;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCredentials;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d0090

    const-string v3, "credentials"

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 47
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountCredentials;->setResult(I)V

    .line 48
    return-void
.end method
