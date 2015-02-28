.class final Lcom/android/email/activity/setup/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p2, p0, Lcom/android/email/activity/setup/M;->mContext:Landroid/content/Context;

    .line 532
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/M;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 581
    new-instance v1, Lcom/android/email/activity/setup/L;

    iget-object v2, p0, Lcom/android/email/activity/setup/M;->mContext:Landroid/content/Context;

    const-string v0, "accountEmail"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "accountId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/email/activity/setup/L;-><init>(Landroid/content/Context;Ljava/lang/String;JB)V

    return-object v1
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 524
    check-cast p2, Ljava/util/Map;

    iget-object v0, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const-string v0, "uiAccount"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    invoke-static {v3, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->a(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Account;

    iget-object v3, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const-string v0, "account"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    invoke-static {v3, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->a(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/Account;

    iget-object v0, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->a(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->a(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->dM:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/setup/M;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->a(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v4

    invoke-static {v0, v4, v5, v1}, Lcom/android/email/activity/setup/AccountSecurity;->b(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/M;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const-string v0, "inbox"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    invoke-static {v3, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->a(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/mail/providers/Folder;)Lcom/android/mail/providers/Folder;

    iget-object v0, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->b(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/providers/Account;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->a(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v2, p0, Lcom/android/email/activity/setup/M;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->a(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/M;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/provider/Account;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->a(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/email/service/o;)Lcom/android/email/service/o;

    iget-object v0, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->c(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->a(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/mail/i/e;)Lcom/android/mail/i/e;

    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->d(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->d(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->c(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->e(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    new-instance v2, Lcom/android/mail/i/e;

    iget-object v3, p0, Lcom/android/email/activity/setup/M;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->b(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/providers/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/M;->Nu:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->c(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/mail/providers/Folder;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/android/mail/i/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    invoke-static {v0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->a(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/mail/i/e;)Lcom/android/mail/i/e;

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 586
    return-void
.end method
