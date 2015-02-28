.class final Lcom/android/email/activity/setup/d;
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
    .line 287
    iput-object p1, p0, Lcom/android/email/activity/setup/d;->Mr:Lcom/android/email/activity/setup/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/c;B)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/d;-><init>(Lcom/android/email/activity/setup/c;)V

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
    .line 291
    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 292
    new-instance v1, Lcom/android/email/activity/setup/e;

    iget-object v2, p0, Lcom/android/email/activity/setup/d;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v2}, Lcom/android/email/activity/setup/c;->a(Lcom/android/email/activity/setup/c;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/email/activity/setup/e;-><init>(Lcom/android/email/activity/setup/d;Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    return-object v1
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 287
    check-cast p2, Lcom/android/emailcommon/provider/Account;

    iget-object v0, p0, Lcom/android/email/activity/setup/d;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v0}, Lcom/android/email/activity/setup/c;->c(Lcom/android/email/activity/setup/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/f;

    invoke-direct {v1, p0, p2}, Lcom/android/email/activity/setup/f;-><init>(Lcom/android/email/activity/setup/d;Lcom/android/emailcommon/provider/Account;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
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
    .line 339
    return-void
.end method
