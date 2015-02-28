.class final Lcom/android/email/activity/setup/n;
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
.field final synthetic MB:Lcom/android/email/activity/setup/m;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/m;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/email/activity/setup/n;->MB:Lcom/android/email/activity/setup/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 74
    new-instance v1, Lcom/android/email/activity/setup/q;

    iget-object v2, p0, Lcom/android/email/activity/setup/n;->MB:Lcom/android/email/activity/setup/m;

    invoke-static {v2}, Lcom/android/email/activity/setup/m;->a(Lcom/android/email/activity/setup/m;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/email/activity/setup/q;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    return-object v1
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 70
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/n;->MB:Lcom/android/email/activity/setup/m;

    invoke-static {v0}, Lcom/android/email/activity/setup/m;->b(Lcom/android/email/activity/setup/m;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/o;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/o;-><init>(Lcom/android/email/activity/setup/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
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
    .line 95
    return-void
.end method
