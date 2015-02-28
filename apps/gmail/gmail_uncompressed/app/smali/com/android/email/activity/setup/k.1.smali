.class final Lcom/android/email/activity/setup/k;
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
        "Lcom/android/emailcommon/provider/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Mr:Lcom/android/email/activity/setup/c;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/c;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/email/activity/setup/k;->Mr:Lcom/android/email/activity/setup/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/c;B)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/k;-><init>(Lcom/android/email/activity/setup/c;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 252
    new-instance v1, Lcom/android/email/activity/setup/l;

    iget-object v2, p0, Lcom/android/email/activity/setup/k;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v2}, Lcom/android/email/activity/setup/c;->a(Lcom/android/email/activity/setup/c;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/email/activity/setup/l;-><init>(Lcom/android/email/activity/setup/k;Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    return-object v1
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 247
    check-cast p2, Lcom/android/emailcommon/provider/Account;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/k;->Mr:Lcom/android/email/activity/setup/c;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/c;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/k;->Mr:Lcom/android/email/activity/setup/c;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v0, p2, Lcom/android/emailcommon/provider/Account;->dM:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/setup/k;->Mr:Lcom/android/email/activity/setup/c;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v2, p2, Lcom/android/emailcommon/provider/Account;->Ln:J

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/android/email/activity/setup/AccountSecurity;->b(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/k;->Mr:Lcom/android/email/activity/setup/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/setup/c;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/k;->Mr:Lcom/android/email/activity/setup/c;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/c;->a(Lcom/android/email/activity/setup/c;I)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/k;->Mr:Lcom/android/email/activity/setup/c;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/c;->a(Lcom/android/email/activity/setup/c;I)I

    iget-object v0, p0, Lcom/android/email/activity/setup/k;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v0}, Lcom/android/email/activity/setup/c;->d(Lcom/android/email/activity/setup/c;)V

    goto :goto_0
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    return-void
.end method
