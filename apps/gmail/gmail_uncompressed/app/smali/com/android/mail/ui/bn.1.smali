.class final Lcom/android/mail/ui/bn;
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
        "Lcom/android/mail/providers/Folder;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic aIR:Lcom/android/mail/ui/bl;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/bl;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/mail/ui/bn;->aIR:Lcom/android/mail/ui/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/android/mail/providers/Folder;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcom/android/mail/c/c;

    iget-object v1, p0, Lcom/android/mail/ui/bn;->aIR:Lcom/android/mail/ui/bl;

    invoke-virtual {v1}, Lcom/android/mail/ui/bl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/bn;->aIR:Lcom/android/mail/ui/bl;

    invoke-static {v2}, Lcom/android/mail/ui/bl;->c(Lcom/android/mail/ui/bl;)Lcom/android/mail/providers/Account;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    sget-object v3, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    sget-object v4, Lcom/android/mail/providers/Folder;->aqh:Lcom/android/mail/c/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 87
    check-cast p2, Lcom/android/mail/c/b;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p2}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    iget v1, v0, Lcom/android/mail/providers/Folder;->type:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/mail/ui/bn;->aIR:Lcom/android/mail/ui/bl;

    invoke-static {v1, v0}, Lcom/android/mail/ui/bl;->a(Lcom/android/mail/ui/bl;Lcom/android/mail/providers/Folder;)Lcom/android/mail/providers/Folder;

    iget-object v1, p0, Lcom/android/mail/ui/bn;->aIR:Lcom/android/mail/ui/bl;

    iget v0, v0, Lcom/android/mail/providers/Folder;->aAg:I

    invoke-static {v1, v0}, Lcom/android/mail/ui/bl;->a(Lcom/android/mail/ui/bl;I)V

    :cond_1
    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method
