.class final Lcom/android/mail/ui/cG;
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
.field final synthetic aMy:Lcom/android/mail/ui/NestedFolderTeaserView;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/NestedFolderTeaserView;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

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
    .line 517
    new-instance v0, Lcom/android/mail/c/c;

    iget-object v1, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-virtual {v1}, Lcom/android/mail/ui/NestedFolderTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v2}, Lcom/android/mail/ui/NestedFolderTeaserView;->h(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mail/providers/E;->aCw:[Ljava/lang/String;

    sget-object v4, Lcom/android/mail/providers/Folder;->aqh:Lcom/android/mail/c/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    .line 520
    iget-object v1, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v1}, Lcom/android/mail/ui/NestedFolderTeaserView;->i(Lcom/android/mail/ui/NestedFolderTeaserView;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/c/c;->setUpdateThrottle(J)V

    .line 521
    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 423
    check-cast p2, Lcom/android/mail/c/b;

    if-eqz p2, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->e(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/f/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/f/o;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v1}, Lcom/android/mail/ui/NestedFolderTeaserView;->e(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/f/o;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/f/o;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v1}, Lcom/android/mail/ui/NestedFolderTeaserView;->e(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/f/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/f/o;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    invoke-virtual {p2}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/mail/providers/Folder;

    iget-object v0, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->e(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/f/o;

    move-result-object v0

    iget v4, v1, Lcom/android/mail/providers/Folder;->id:I

    invoke-virtual {v0, v4}, Landroid/support/v4/f/o;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/cI;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/mail/ui/cI;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/cI;->d(Lcom/android/mail/providers/Folder;)V

    if-eqz v4, :cond_2

    iget v4, v4, Lcom/android/mail/providers/Folder;->aAf:I

    iget v5, v1, Lcom/android/mail/providers/Folder;->aAf:I

    if-eq v4, v5, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    iget-object v5, v1, Lcom/android/mail/providers/Folder;->aAs:Ljava/lang/String;

    invoke-static {v4, v0, v5}, Lcom/android/mail/ui/NestedFolderTeaserView;->a(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/android/mail/ui/cI;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v4, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->a(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/android/mail/ui/cI;)V

    :cond_3
    :goto_1
    iget-boolean v4, v1, Lcom/android/mail/providers/Folder;->aAa:Z

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/android/mail/ui/cI;->zT()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-virtual {v4}, Lcom/android/mail/ui/NestedFolderTeaserView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget v0, v1, Lcom/android/mail/providers/Folder;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_5
    new-instance v0, Lcom/google/common/collect/E;

    sget-object v1, Lcom/android/mail/ui/cI;->aMD:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/common/collect/E;-><init>(Ljava/util/Comparator;)V

    :goto_2
    iget-object v1, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v1}, Lcom/android/mail/ui/NestedFolderTeaserView;->e(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/f/o;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/f/o;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    iget-object v1, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v1}, Lcom/android/mail/ui/NestedFolderTeaserView;->e(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/f/o;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/f/o;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/E;->aJ(Ljava/lang/Object;)Lcom/google/common/collect/E;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    iget-object v4, v1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/mail/ui/NestedFolderTeaserView;->a(Lcom/android/mail/ui/NestedFolderTeaserView;Ljava/lang/CharSequence;)Lcom/android/mail/ui/cI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/cI;->d(Lcom/android/mail/providers/Folder;)V

    iget-object v4, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v4}, Lcom/android/mail/ui/NestedFolderTeaserView;->e(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/f/o;

    move-result-object v4

    iget v5, v1, Lcom/android/mail/providers/Folder;->id:I

    invoke-virtual {v4, v5, v0}, Landroid/support/v4/f/o;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    iget-object v5, v1, Lcom/android/mail/providers/Folder;->aAs:Ljava/lang/String;

    invoke-static {v4, v0, v5}, Lcom/android/mail/ui/NestedFolderTeaserView;->a(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/android/mail/ui/cI;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v4, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->a(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/android/mail/ui/cI;)V

    iget-object v4, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v4}, Lcom/android/mail/ui/NestedFolderTeaserView;->c(Lcom/android/mail/ui/NestedFolderTeaserView;)Z

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-virtual {v0}, Lcom/google/common/collect/E;->ZB()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->a(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/google/common/collect/ImmutableSortedSet;)Lcom/google/common/collect/ImmutableSortedSet;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v2}, Lcom/android/mail/ui/NestedFolderTeaserView;->e(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/f/o;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/f/o;->remove(I)V

    iget-object v2, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v2}, Lcom/android/mail/ui/NestedFolderTeaserView;->f(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/app/LoaderManager;

    move-result-object v2

    invoke-static {v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->dg(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-object v0, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->c(Lcom/android/mail/ui/NestedFolderTeaserView;)Z

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->g(Lcom/android/mail/ui/NestedFolderTeaserView;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mail/ui/cG;->aMy:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->d(Lcom/android/mail/ui/NestedFolderTeaserView;)Lcom/android/mail/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    :cond_9
    :goto_4
    return-void

    :cond_a
    const-string v0, "NestedFolderTeaserView"

    const-string v1, "Problem with folder list cursor returned from loader"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4
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
    .line 427
    return-void
.end method
