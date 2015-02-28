.class final Lcom/android/mail/ui/y;
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
.field final synthetic aEa:Lcom/android/mail/ui/a;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/a;)V
    .locals 0

    .prologue
    .line 3479
    iput-object p1, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/a;B)V
    .locals 0

    .prologue
    .line 3479
    invoke-direct {p0, p1}, Lcom/android/mail/ui/y;-><init>(Lcom/android/mail/ui/a;)V

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
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3482
    sget-object v2, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    .line 3483
    packed-switch p1, :pswitch_data_0

    .line 3527
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v2, "FolderLoads.onCreateLoader(%d) for invalid id"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 3530
    :goto_0
    return-object v0

    .line 3485
    :pswitch_0
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "LOADER_FOLDER_CURSOR created"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3486
    new-instance v0, Lcom/android/mail/c/c;

    iget-object v1, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, v1, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v3, v3, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v3, v3, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v3, v3, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    sget-object v4, Lcom/android/mail/providers/Folder;->aqh:Lcom/android/mail/c/a;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    .line 3489
    iget-object v1, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v1}, Lcom/android/mail/ui/a;->h(Lcom/android/mail/ui/a;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/c/c;->setUpdateThrottle(J)V

    goto :goto_0

    .line 3492
    :pswitch_1
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "LOADER_RECENT_FOLDERS created"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3493
    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayu:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayu:Landroid/net/Uri;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3495
    new-instance v0, Lcom/android/mail/c/c;

    iget-object v1, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, v1, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v3, v3, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v3, v3, Lcom/android/mail/providers/Account;->ayu:Landroid/net/Uri;

    sget-object v4, Lcom/android/mail/providers/Folder;->aqh:Lcom/android/mail/c/a;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    goto :goto_0

    .line 3500
    :pswitch_2
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "LOADER_ACCOUNT_INBOX created"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3501
    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-static {v0}, Lcom/android/mail/providers/Settings;->a(Lcom/android/mail/providers/Settings;)Landroid/net/Uri;

    move-result-object v0

    .line 3502
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    .line 3504
    :cond_0
    sget-object v3, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v4, "Loading the default inbox: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3505
    if-eqz v0, :cond_2

    .line 3506
    new-instance v1, Lcom/android/mail/c/c;

    iget-object v3, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v3, v3, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/mail/providers/Folder;->aqh:Lcom/android/mail/c/a;

    invoke-direct {v1, v3, v0, v2, v4}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 3511
    :pswitch_3
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "LOADER_SEARCH created"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3512
    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    const-string v1, "query"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v3, v3, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v3}, Lcom/android/mail/ui/MailActivity;->xg()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/providers/Folder;->a(Lcom/android/mail/providers/Account;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/android/mail/c/c;

    move-result-object v0

    goto/16 :goto_0

    .line 3518
    :pswitch_4
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "LOADER_FIRST_FOLDER created"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3519
    const-string v0, "folderUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3520
    iget-object v3, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    const-string v1, "conversationUri"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Conversation;

    invoke-static {v3, v1}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/providers/Conversation;

    .line 3521
    iget-object v1, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v1}, Lcom/android/mail/ui/a;->i(Lcom/android/mail/ui/a;)Lcom/android/mail/providers/Conversation;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v1}, Lcom/android/mail/ui/a;->i(Lcom/android/mail/ui/a;)Lcom/android/mail/providers/Conversation;

    move-result-object v1

    iget v1, v1, Lcom/android/mail/providers/Conversation;->position:I

    if-gez v1, :cond_1

    .line 3522
    iget-object v1, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v1}, Lcom/android/mail/ui/a;->i(Lcom/android/mail/ui/a;)Lcom/android/mail/providers/Conversation;

    move-result-object v1

    iput v6, v1, Lcom/android/mail/providers/Conversation;->position:I

    .line 3524
    :cond_1
    new-instance v1, Lcom/android/mail/c/c;

    iget-object v3, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v3, v3, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/mail/providers/Folder;->aqh:Lcom/android/mail/c/a;

    invoke-direct {v1, v3, v0, v2, v4}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 3530
    goto/16 :goto_0

    .line 3483
    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3479
    check-cast p2, Lcom/android/mail/c/b;

    if-nez p2, :cond_0

    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "Received null cursor from loader id: %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    iget-object v1, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v1, v0}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Folder;)V

    iget-object v1, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iput-object v0, v1, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->j(Lcom/android/mail/ui/a;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v4, "Unable to get the folder %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    :goto_1
    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/mail/c/b;->getCount()I

    move-result v0

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->k(Lcom/android/mail/ui/a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayv:Landroid/net/Uri;

    sget-object v3, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v4, "Default recents at %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v3, Lcom/android/mail/ui/z;

    invoke-direct {v3, p0}, Lcom/android/mail/ui/z;-><init>(Lcom/android/mail/ui/y;)V

    new-array v1, v1, [Landroid/net/Uri;

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Lcom/android/mail/ui/z;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "Reading recent folders from the cursor."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aCU:Lcom/android/mail/ui/cN;

    invoke-virtual {v0, p2}, Lcom/android/mail/ui/cN;->f(Lcom/android/mail/c/b;)V

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->wo()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->l(Lcom/android/mail/ui/a;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->m(Lcom/android/mail/ui/a;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto/16 :goto_0

    :pswitch_2
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/mail/c/b;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    iget-object v1, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v1, v0, v2}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/providers/Folder;Z)V

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v4, "Unable to get the account inbox for account %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_7
    const-string v0, ""

    goto :goto_2

    :pswitch_3
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/android/mail/c/b;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToFirst()Z

    invoke-virtual {p2}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    iget-object v3, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v3, v0}, Lcom/android/mail/ui/a;->b(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Folder;)V

    iget-object v3, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v4, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v4, v4, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v5, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v5, v5, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v6, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v6, v6, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v6}, Lcom/android/mail/ui/MailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "query"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/mail/c;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Ljava/lang/String;)Lcom/android/mail/c;

    move-result-object v4

    iput-object v4, v3, Lcom/android/mail/ui/a;->aCV:Lcom/android/mail/c;

    iget-object v3, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v4, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v4, v4, Lcom/android/mail/ui/a;->aCV:Lcom/android/mail/c;

    invoke-virtual {v3, v4}, Lcom/android/mail/ui/a;->b(Lcom/android/mail/c;)V

    iget-object v3, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v3, v3, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v3}, Lcom/android/mail/ui/MailActivity;->invalidateOptionsMenu()V

    iget-object v3, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget v0, v0, Lcom/android/mail/providers/Folder;->aAg:I

    if-lez v0, :cond_8

    move v0, v1

    :goto_3
    iput-boolean v0, v3, Lcom/android/mail/ui/a;->aDJ:Z

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "Null/empty cursor returned by LOADER_SEARCH loader"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :pswitch_4
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/mail/c/b;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v3, v0, v2}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/providers/Folder;Z)V

    move v2, v1

    :cond_a
    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->i(Lcom/android/mail/ui/a;)Lcom/android/mail/providers/Conversation;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v2, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v2}, Lcom/android/mail/ui/a;->i(Lcom/android/mail/ui/a;)Lcom/android/mail/providers/Conversation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/a;->j(Lcom/android/mail/providers/Conversation;)V

    :goto_4
    if-nez v1, :cond_b

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->vS()V

    :cond_b
    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/providers/Conversation;

    iget-object v0, p0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    :cond_c
    move v1, v2

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
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
    .line 3640
    return-void
.end method
