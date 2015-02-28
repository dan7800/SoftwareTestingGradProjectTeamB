.class final Lcom/android/email/activity/setup/g;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Mr:Lcom/android/email/activity/setup/c;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/c;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/email/activity/setup/g;->Mr:Lcom/android/email/activity/setup/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/Account;

    .line 168
    const-string v0, "email"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 169
    const-string v0, "calendar"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 170
    const-string v0, "contacts"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 171
    const-string v0, "notifications"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 176
    new-instance v0, Lcom/android/email/activity/setup/h;

    iget-object v1, p0, Lcom/android/email/activity/setup/g;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v1}, Lcom/android/email/activity/setup/c;->a(Lcom/android/email/activity/setup/c;)Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/email/activity/setup/h;-><init>(Lcom/android/email/activity/setup/g;Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZZ)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 161
    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/g;->Mr:Lcom/android/email/activity/setup/c;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/c;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/setup/g;->Mr:Lcom/android/email/activity/setup/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/c;->a(Lcom/android/email/activity/setup/c;I)I

    iget-object v0, p0, Lcom/android/email/activity/setup/g;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v0}, Lcom/android/email/activity/setup/c;->b(Lcom/android/email/activity/setup/c;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/g;->Mr:Lcom/android/email/activity/setup/c;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/j;

    iget-object v1, p0, Lcom/android/email/activity/setup/g;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v1}, Lcom/android/email/activity/setup/c;->c(Lcom/android/email/activity/setup/c;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/i;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/setup/i;-><init>(Lcom/android/email/activity/setup/g;Lcom/android/email/activity/setup/j;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    return-void
.end method
