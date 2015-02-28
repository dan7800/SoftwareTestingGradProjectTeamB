.class final Lcom/android/mail/ui/w;
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
        "Lcom/android/mail/browse/u;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/a;)V
    .locals 0

    .prologue
    .line 3404
    iput-object p1, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/a;B)V
    .locals 0

    .prologue
    .line 3404
    invoke-direct {p0, p1}, Lcom/android/mail/ui/w;-><init>(Lcom/android/mail/ui/a;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/browse/u;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3409
    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/mail/providers/Account;

    .line 3410
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/mail/providers/Folder;

    .line 3411
    const-string v0, "ignore-initial-conversation-limit"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 3413
    if-eqz v2, :cond_0

    if-nez v4, :cond_1

    .line 3414
    :cond_0
    const/4 v0, 0x0

    .line 3416
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/mail/ui/au;

    iget-object v1, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, v1, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    iget-object v3, v4, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/android/mail/providers/Folder;->va()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/au;-><init>(Landroid/app/Activity;Lcom/android/mail/providers/Account;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3404
    check-cast p2, Lcom/android/mail/browse/u;

    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "IN AAC.ConversationCursor.onLoadFinished, data=%s loader=%s this=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    aput-object p1, v2, v4

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->wL()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->c(Lcom/android/mail/ui/a;)Lcom/android/mail/ui/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/C;->wN()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "ConversationListLoaderCallbacks.onLoadFinished: ignoring."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0, v4}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/a;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->d(Lcom/android/mail/ui/a;)V

    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    iput-object p2, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v1, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/browse/y;)V

    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->e(Lcom/android/mail/ui/a;)Lcom/android/mail/utils/l;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, v1, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0, v1}, Lcom/android/mail/utils/l;->a(Lcom/android/mail/utils/m;)V

    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDv:Lcom/android/mail/ui/aI;

    invoke-virtual {v0}, Lcom/android/mail/ui/aI;->yI()V

    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->f(Lcom/android/mail/ui/a;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->g(Lcom/android/mail/ui/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/B;

    invoke-interface {v0}, Lcom/android/mail/ui/B;->wI()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->g(Lcom/android/mail/ui/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v1, v0}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/a;Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0, v4}, Lcom/android/mail/ui/a;->bl(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->wv()V

    goto :goto_0
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/browse/u;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3459
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "IN AAC.ConversationCursor.onLoaderReset, data=%s loader=%s this=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    iget-object v4, v4, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3463
    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    if-eqz v0, :cond_0

    .line 3465
    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v1, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/u;->b(Lcom/android/mail/browse/y;)V

    .line 3466
    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->e(Lcom/android/mail/ui/a;)Lcom/android/mail/utils/l;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/mail/utils/l;->a(Lcom/android/mail/utils/m;)V

    .line 3467
    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    iput-object v5, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    .line 3470
    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDv:Lcom/android/mail/ui/aI;

    invoke-virtual {v0}, Lcom/android/mail/ui/aI;->yI()V

    .line 3471
    iget-object v0, p0, Lcom/android/mail/ui/w;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->f(Lcom/android/mail/ui/a;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 3473
    :cond_0
    return-void
.end method
