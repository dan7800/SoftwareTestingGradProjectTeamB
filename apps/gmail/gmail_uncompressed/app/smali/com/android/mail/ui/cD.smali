.class final Lcom/android/mail/ui/cD;
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
.field final synthetic OE:Landroid/content/Context;

.field final synthetic aMi:Lcom/android/mail/ui/cC;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/cC;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/mail/ui/cD;->aMi:Lcom/android/mail/ui/cC;

    iput-object p2, p0, Lcom/android/mail/ui/cD;->OE:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 87
    const-string v0, "folderQueryUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 88
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/mail/ui/cD;->OE:Landroid/content/Context;

    sget-object v3, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x400

    .line 84
    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/mail/ui/cD;->aMi:Lcom/android/mail/ui/cC;

    invoke-virtual {v0}, Lcom/android/mail/ui/cC;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz p2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/cD;->aMi:Lcom/android/mail/ui/cC;

    invoke-virtual {v0}, Lcom/android/mail/ui/cC;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/mail/ui/cD;->aMi:Lcom/android/mail/ui/cC;

    iget-object v1, v1, Lcom/android/mail/ui/cC;->aEs:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Conversation;

    invoke-virtual {v1}, Lcom/android/mail/providers/Conversation;->uD()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-static {v1}, Lcom/android/mail/providers/Folder;->t(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/mail/ui/cD;->aMi:Lcom/android/mail/ui/cC;

    iget-object v1, v1, Lcom/android/mail/ui/cC;->aKp:Lcom/android/mail/providers/Folder;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v1, v1, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lcom/google/common/collect/ImmutableSet;->L(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    iget-object v1, p0, Lcom/android/mail/ui/cD;->aMi:Lcom/android/mail/ui/cC;

    invoke-static {v1}, Lcom/android/mail/ui/cC;->a(Lcom/android/mail/ui/cC;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mail/ui/FolderOperation;

    iget-boolean v2, v2, Lcom/android/mail/ui/FolderOperation;->aKh:Z

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/mail/ui/cD;->aMi:Lcom/android/mail/ui/cC;

    iget-object v1, v1, Lcom/android/mail/ui/cC;->TE:Lcom/android/mail/ui/cX;

    invoke-virtual {v1}, Lcom/android/mail/ui/cX;->Aa()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p2, v1, v5, v2}, Lcom/android/mail/ui/ad;->a(Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;Z)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/android/mail/ui/cD;->aMi:Lcom/android/mail/ui/cC;

    iget-object v2, v2, Lcom/android/mail/ui/cC;->TE:Lcom/android/mail/ui/cX;

    new-instance v6, Lcom/android/mail/ui/ad;

    invoke-direct {v6, v3, v1, v4}, Lcom/android/mail/ui/ad;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;)V

    invoke-virtual {v2, v6}, Lcom/android/mail/ui/cX;->a(Lcom/android/mail/ui/bW;)V

    :cond_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v1, v5, v2}, Lcom/android/mail/ui/ad;->a(Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;Z)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/android/mail/ui/cD;->aMi:Lcom/android/mail/ui/cC;

    iget-object v2, v2, Lcom/android/mail/ui/cC;->TE:Lcom/android/mail/ui/cX;

    new-instance v5, Lcom/android/mail/ui/ad;

    invoke-direct {v5, v3, v1, v4}, Lcom/android/mail/ui/ad;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;)V

    invoke-virtual {v2, v5}, Lcom/android/mail/ui/cX;->a(Lcom/android/mail/ui/bW;)V

    :cond_7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/cD;->aMi:Lcom/android/mail/ui/cC;

    iget-object v1, v1, Lcom/android/mail/ui/cC;->TE:Lcom/android/mail/ui/cX;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
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
    .line 163
    iget-object v0, p0, Lcom/android/mail/ui/cD;->aMi:Lcom/android/mail/ui/cC;

    iget-object v0, v0, Lcom/android/mail/ui/cC;->TE:Lcom/android/mail/ui/cX;

    invoke-virtual {v0}, Lcom/android/mail/ui/cX;->Aa()V

    .line 164
    return-void
.end method
