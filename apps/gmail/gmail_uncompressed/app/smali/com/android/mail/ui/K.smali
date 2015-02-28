.class final Lcom/android/mail/ui/K;
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
        "Lcom/android/mail/browse/ConversationMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic aEV:Lcom/android/mail/ui/F;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/F;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/F;B)V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/android/mail/ui/K;-><init>(Lcom/android/mail/ui/F;)V

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
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 487
    new-instance v0, Lcom/android/mail/ui/J;

    iget-object v1, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    iget-object v1, v1, Lcom/android/mail/ui/F;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    iget-object v2, v2, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v2, v2, Lcom/android/mail/providers/Conversation;->ayY:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/android/mail/ui/J;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 482
    check-cast p2, Lcom/android/mail/c/b;

    iget-object v0, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    invoke-static {v0}, Lcom/android/mail/ui/F;->a(Lcom/android/mail/ui/F;)Lcom/android/mail/browse/aC;

    move-result-object v0

    if-eq v0, p2, :cond_2

    check-cast p2, Lcom/android/mail/browse/aC;

    iget-object v0, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    invoke-virtual {p2, v0}, Lcom/android/mail/browse/aC;->a(Lcom/android/mail/browse/aD;)V

    invoke-static {}, Lcom/android/mail/ui/F;->km()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mail/ui/F;->km()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADED CONVERSATION= %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/mail/browse/aC;->rz()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    invoke-virtual {p2}, Lcom/android/mail/browse/aC;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/android/mail/browse/aC;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/android/mail/providers/G;->cG(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    invoke-static {v0}, Lcom/android/mail/ui/F;->b(Lcom/android/mail/ui/F;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    invoke-static {v0}, Lcom/android/mail/ui/F;->c(Lcom/android/mail/ui/F;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    invoke-static {v0}, Lcom/android/mail/ui/F;->d(Lcom/android/mail/ui/F;)V

    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    invoke-static {v0, v6}, Lcom/android/mail/ui/F;->a(Lcom/android/mail/ui/F;Lcom/android/mail/browse/aC;)Lcom/android/mail/browse/aC;

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lcom/android/mail/ui/F;->km()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CVF: offscreen conv has no messages, ignoring update in anticipation of conv cursor update. c=%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    iget-object v3, v3, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v3, v3, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/android/mail/browse/aC;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    invoke-static {v0, v6}, Lcom/android/mail/ui/F;->a(Lcom/android/mail/ui/F;Lcom/android/mail/browse/aC;)Lcom/android/mail/browse/aC;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    invoke-static {v0}, Lcom/android/mail/ui/F;->a(Lcom/android/mail/ui/F;)Lcom/android/mail/browse/aC;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    invoke-static {v1, p2}, Lcom/android/mail/ui/F;->a(Lcom/android/mail/ui/F;Lcom/android/mail/browse/aC;)Lcom/android/mail/browse/aC;

    iget-object v1, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    iget-object v2, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    invoke-static {v2}, Lcom/android/mail/ui/F;->a(Lcom/android/mail/ui/F;)Lcom/android/mail/browse/aC;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/ui/F;->a(Lcom/android/mail/browse/aC;Lcom/android/mail/browse/aC;)V

    goto :goto_1
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
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/mail/ui/K;->aEV:Lcom/android/mail/ui/F;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mail/ui/F;->a(Lcom/android/mail/ui/F;Lcom/android/mail/browse/aC;)Lcom/android/mail/browse/aC;

    .line 548
    return-void
.end method
