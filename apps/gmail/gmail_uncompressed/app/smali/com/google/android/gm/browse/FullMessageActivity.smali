.class public Lcom/google/android/gm/browse/FullMessageActivity;
.super Lcom/android/mail/ui/P;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/mail/ui/P;-><init>()V

    return-void
.end method


# virtual methods
.method protected final ck(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/android/gm/browse/FullMessageActivity;->oN()Lcom/android/mail/providers/Account;

    move-result-object v0

    const v1, 0x7f0902f7

    invoke-virtual {p0, v1}, Lcom/google/android/gm/browse/FullMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/gm/ay;->a(Landroid/app/Activity;Lcom/android/mail/providers/Account;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/mail/ui/P;->onCreate(Landroid/os/Bundle;)V

    .line 30
    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gm/browse/FullMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 32
    const-string v1, "permalink"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v2, "account-name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    const-string v3, "server-message-id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gm/browse/FullMessageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 39
    const v4, 0x7f0d0095

    invoke-static {v1, v2, v0}, Lcom/google/android/gm/browse/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/browse/a;

    move-result-object v0

    const-string v1, "full_message_fragment"

    invoke-virtual {v3, v4, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 42
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 44
    :cond_0
    return-void
.end method
