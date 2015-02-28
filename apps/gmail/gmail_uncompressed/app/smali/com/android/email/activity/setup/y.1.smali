.class final Lcom/android/email/activity/setup/y;
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
.field final synthetic MX:Lcom/android/email/activity/setup/x;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/x;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/email/activity/setup/y;->MX:Lcom/android/email/activity/setup/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
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
    .line 265
    iget-object v0, p0, Lcom/android/email/activity/setup/y;->MX:Lcom/android/email/activity/setup/x;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/x;->hB()Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/email/activity/setup/y;->MX:Lcom/android/email/activity/setup/x;

    invoke-static {v0}, Lcom/android/email/activity/setup/x;->a(Lcom/android/email/activity/setup/x;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/z;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/z;-><init>(Lcom/android/email/activity/setup/y;)V

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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    return-void
.end method
