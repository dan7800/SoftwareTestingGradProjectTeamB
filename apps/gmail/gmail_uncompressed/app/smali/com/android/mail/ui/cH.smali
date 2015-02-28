.class final Lcom/android/mail/ui/cH;
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
        "Lcom/android/mail/providers/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic aMy:Lcom/android/mail/ui/NestedFolderTeaserView;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/NestedFolderTeaserView;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/mail/ui/cH;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

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
            "Lcom/android/mail/providers/Conversation;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 644
    invoke-static {p1}, Lcom/android/mail/ui/NestedFolderTeaserView;->dh(I)I

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/android/mail/ui/cH;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v1}, Lcom/android/mail/ui/NestedFolderTeaserView;->e(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/f/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/f/o;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/cI;

    invoke-static {v0}, Lcom/android/mail/ui/cI;->a(Lcom/android/mail/ui/cI;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "use_network"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "20"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 651
    new-instance v1, Lcom/android/mail/c/c;

    iget-object v2, p0, Lcom/android/mail/ui/cH;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-virtual {v2}, Lcom/android/mail/ui/NestedFolderTeaserView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/mail/providers/E;->aCx:[Ljava/lang/String;

    sget-object v4, Lcom/android/mail/providers/Conversation;->aqh:Lcom/android/mail/c/a;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    return-object v1
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 566
    check-cast p2, Lcom/android/mail/c/b;

    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->dh(I)I

    move-result v2

    iget-object v0, p0, Lcom/android/mail/ui/cH;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->e(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/f/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/f/o;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/cI;

    invoke-static {v0}, Lcom/android/mail/ui/cI;->a(Lcom/android/mail/ui/cI;)Lcom/android/mail/providers/Folder;

    move-result-object v3

    iget v9, v3, Lcom/android/mail/providers/Folder;->aAf:I

    if-lez v9, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "NestedFolderTeaserView"

    const-string v4, "Folder id %d loader finished"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v2, v1

    :goto_0
    invoke-virtual {p2}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Conversation;

    iget-boolean v3, v1, Lcom/android/mail/providers/Conversation;->aza:Z

    if-nez v3, :cond_2

    const/high16 v3, -0x80000000

    iget-object v1, v1, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    iget-object v1, v1, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v4, v6

    move-object v5, v6

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/ParticipantInfo;

    if-eqz v5, :cond_0

    iget v11, v1, Lcom/android/mail/providers/ParticipantInfo;->priority:I

    if-ge v3, v11, :cond_8

    :cond_0
    iget-object v4, v1, Lcom/android/mail/providers/ParticipantInfo;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/mail/providers/ParticipantInfo;->aBF:Ljava/lang/String;

    iget v1, v1, Lcom/android/mail/providers/ParticipantInfo;->priority:I

    :goto_2
    move-object v5, v4

    move-object v4, v3

    move v3, v1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v3, v10, :cond_4

    move-object v5, v1

    :goto_3
    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v1, v2

    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    if-lt v1, v9, :cond_7

    :cond_3
    :goto_4
    invoke-virtual {v0, v8}, Lcom/android/mail/ui/cI;->z(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/mail/ui/cH;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v1, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->a(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/android/mail/ui/cI;)V

    return-void

    :cond_4
    invoke-interface {v8, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v8, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    const-string v2, "NestedFolderTeaserView"

    const-string v3, "Problem with folder cursor returned from loader"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4

    :cond_7
    move v2, v1

    goto :goto_0

    :cond_8
    move v1, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_2
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
            "Lcom/android/mail/providers/Conversation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 570
    return-void
.end method
