.class final Lcom/google/android/gm/ads/v;
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
        "Lcom/android/mail/c/b",
        "<",
        "Lcom/google/android/gm/provider/Advertisement;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic aZX:Lcom/google/android/gm/ads/s;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/ads/s;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/gm/ads/v;->aZX:Lcom/google/android/gm/ads/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/ads/s;B)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/google/android/gm/ads/v;-><init>(Lcom/google/android/gm/ads/s;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/google/android/gm/provider/Advertisement;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lcom/android/mail/c/c;

    iget-object v1, p0, Lcom/google/android/gm/ads/v;->aZX:Lcom/google/android/gm/ads/s;

    invoke-virtual {v1}, Lcom/google/android/gm/ads/s;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ads/v;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v2}, Lcom/google/android/gm/ads/s;->e(Lcom/google/android/gm/ads/s;)Lcom/android/mail/providers/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/ads/v;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v3}, Lcom/google/android/gm/ads/s;->b(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/GmailProvider;->R(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/gm/provider/Gmail;->bdS:[Ljava/lang/String;

    sget-object v4, Lcom/google/android/gm/provider/Advertisement;->aqh:Lcom/android/mail/c/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 201
    check-cast p2, Lcom/android/mail/c/b;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Advertisement;

    iget-object v1, p0, Lcom/google/android/gm/ads/v;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v1}, Lcom/google/android/gm/ads/s;->b(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/ads/v;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v1}, Lcom/google/android/gm/ads/s;->b(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gm/provider/Advertisement;->bck:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/ads/v;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v1}, Lcom/google/android/gm/ads/s;->b(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/ads/v;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v1, v0}, Lcom/google/android/gm/ads/s;->a(Lcom/google/android/gm/ads/s;Lcom/google/android/gm/provider/Advertisement;)Lcom/google/android/gm/provider/Advertisement;

    iget-object v0, p0, Lcom/google/android/gm/ads/v;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v0}, Lcom/google/android/gm/ads/s;->c(Lcom/google/android/gm/ads/s;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/ads/v;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v1}, Lcom/google/android/gm/ads/s;->b(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/ads/v;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v1}, Lcom/google/android/gm/ads/s;->b(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/ads/v;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v1, v0}, Lcom/google/android/gm/ads/s;->a(Lcom/google/android/gm/ads/s;Lcom/google/android/gm/provider/Advertisement;)Lcom/google/android/gm/provider/Advertisement;

    iget-object v0, p0, Lcom/google/android/gm/ads/v;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v0}, Lcom/google/android/gm/ads/s;->d(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/ads/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ads/v;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v1}, Lcom/google/android/gm/ads/s;->b(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ads/c;->a(Lcom/google/android/gm/provider/Advertisement;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gm/ads/s;->Dj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Problem with cursor returned from loader"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/google/android/gm/provider/Advertisement;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/gm/ads/v;->aZX:Lcom/google/android/gm/ads/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gm/ads/s;->a(Lcom/google/android/gm/ads/s;Lcom/google/android/gm/provider/Advertisement;)Lcom/google/android/gm/provider/Advertisement;

    .line 206
    return-void
.end method
