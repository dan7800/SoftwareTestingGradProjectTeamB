.class final Lcom/google/android/gm/t;
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
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aXl:Lcom/google/android/gm/ComposeActivityGmail;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/ComposeActivityGmail;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/google/android/gm/t;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/ComposeActivityGmail;B)V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/google/android/gm/t;-><init>(Lcom/google/android/gm/ComposeActivityGmail;)V

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
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 438
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/gm/t;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    iget-object v2, p0, Lcom/google/android/gm/t;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-static {v2}, Lcom/google/android/gm/ComposeActivityGmail;->f(Lcom/google/android/gm/ComposeActivityGmail;)Lcom/android/mail/providers/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/t;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-static {v3}, Lcom/google/android/gm/ComposeActivityGmail;->g(Lcom/google/android/gm/ComposeActivityGmail;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/GmailProvider;->R(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/gm/provider/Gmail;->bdU:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 416
    check-cast p2, Landroid/database/Cursor;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "body"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/t;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-static {v1, v0}, Lcom/google/android/gm/ComposeActivityGmail;->a(Lcom/google/android/gm/ComposeActivityGmail;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gm/t;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-static {v0}, Lcom/google/android/gm/ComposeActivityGmail;->c(Lcom/google/android/gm/ComposeActivityGmail;)I

    iget-object v0, p0, Lcom/google/android/gm/t;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    iget-object v1, p0, Lcom/google/android/gm/t;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-static {v1}, Lcom/google/android/gm/ComposeActivityGmail;->d(Lcom/google/android/gm/ComposeActivityGmail;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gm/t;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-virtual {v2}, Lcom/google/android/gm/ComposeActivityGmail;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/t;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-static {v3}, Lcom/google/android/gm/ComposeActivityGmail;->e(Lcom/google/android/gm/ComposeActivityGmail;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/ComposeActivityGmail;->a(Lcom/google/android/gm/ComposeActivityGmail;ILandroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gm/ComposeActivityGmail;->Cz()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Problem with cursor returned from loader"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/gm/t;->aXl:Lcom/google/android/gm/ComposeActivityGmail;

    invoke-static {v0}, Lcom/google/android/gm/ComposeActivityGmail;->b(Lcom/google/android/gm/ComposeActivityGmail;)Ljava/lang/String;

    .line 421
    return-void
.end method
