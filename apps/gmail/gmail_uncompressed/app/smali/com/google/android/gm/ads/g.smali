.class final Lcom/google/android/gm/ads/g;
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
.field final synthetic aZO:Lcom/google/android/gm/ads/AdTeaserView;

.field private aZP:Z


# direct methods
.method constructor <init>(Lcom/google/android/gm/ads/AdTeaserView;)V
    .locals 1

    .prologue
    .line 621
    iput-object p1, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ads/g;->aZP:Z

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
    .line 711
    const-string v0, "AdTeaserView"

    const-string v1, "Creating ads loader"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 713
    new-instance v0, Lcom/android/mail/c/c;

    iget-object v1, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-virtual {v1}, Lcom/google/android/gm/ads/AdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v2}, Lcom/google/android/gm/ads/AdTeaserView;->m(Lcom/google/android/gm/ads/AdTeaserView;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/gm/provider/Gmail;->bdT:[Ljava/lang/String;

    sget-object v4, Lcom/google/android/gm/provider/Advertisement;->aqh:Lcom/android/mail/c/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    .line 715
    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 621
    check-cast p2, Lcom/android/mail/c/b;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AdTeaserView"

    const-string v3, "Ad loaded"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p2}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Advertisement;

    iget-object v3, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v3}, Lcom/google/android/gm/ads/AdTeaserView;->b(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/providers/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gm/provider/GmailProvider;->R(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    check-cast p1, Lcom/android/mail/c/c;

    invoke-virtual {p1, v3}, Lcom/android/mail/c/c;->setUri(Landroid/net/Uri;)V

    iput-boolean v2, p0, Lcom/google/android/gm/ads/g;->aZP:Z

    iget-object v3, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v3}, Lcom/google/android/gm/ads/AdTeaserView;->j(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/google/android/gm/provider/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gm/provider/e;->a(Lcom/google/android/gm/provider/Advertisement;)V

    iget-object v3, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v3}, Lcom/google/android/gm/ads/AdTeaserView;->j(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/google/android/gm/provider/e;

    move-result-object v3

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v3}, Lcom/google/android/gm/ads/AdTeaserView;->c(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v3}, Lcom/google/android/gm/ads/AdTeaserView;->c(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v3, v2}, Lcom/google/android/gm/ads/AdTeaserView;->a(Lcom/google/android/gm/ads/AdTeaserView;Z)Z

    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v3, v0}, Lcom/google/android/gm/ads/AdTeaserView;->a(Lcom/google/android/gm/ads/AdTeaserView;Lcom/google/android/gm/provider/Advertisement;)Lcom/google/android/gm/provider/Advertisement;

    iget-object v3, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    new-instance v4, Lcom/android/mail/browse/R;

    invoke-direct {v4}, Lcom/android/mail/browse/R;-><init>()V

    invoke-static {v3, v4}, Lcom/google/android/gm/ads/AdTeaserView;->a(Lcom/google/android/gm/ads/AdTeaserView;Lcom/android/mail/browse/R;)Lcom/android/mail/browse/R;

    new-instance v3, Lcom/android/mail/providers/ConversationInfo;

    invoke-direct {v3}, Lcom/android/mail/providers/ConversationInfo;-><init>()V

    iget-object v4, v0, Lcom/google/android/gm/provider/Advertisement;->bcg:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/mail/providers/ConversationInfo;->azO:Ljava/lang/String;

    new-instance v4, Lcom/android/mail/providers/i;

    invoke-direct {v4}, Lcom/android/mail/providers/i;-><init>()V

    invoke-virtual {v4, v3}, Lcom/android/mail/providers/i;->a(Lcom/android/mail/providers/ConversationInfo;)Lcom/android/mail/providers/i;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gm/provider/Advertisement;->bcf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/mail/providers/i;->bM(Ljava/lang/String;)Lcom/android/mail/providers/i;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/gm/provider/Advertisement;->azc:Z

    invoke-virtual {v3, v4}, Lcom/android/mail/providers/i;->bh(Z)Lcom/android/mail/providers/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mail/providers/i;->uM()Lcom/android/mail/providers/Conversation;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mail/providers/FolderList;->p(Ljava/util/Collection;)Lcom/android/mail/providers/FolderList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mail/providers/Conversation;->a(Lcom/android/mail/providers/FolderList;)V

    iget-object v4, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-virtual {v4}, Lcom/google/android/gm/ads/AdTeaserView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v5}, Lcom/google/android/gm/ads/AdTeaserView;->k(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/browse/R;

    move-result-object v5

    iput-object v3, v5, Lcom/android/mail/browse/R;->amQ:Lcom/android/mail/providers/Conversation;

    iget-object v3, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v3}, Lcom/google/android/gm/ads/AdTeaserView;->k(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/browse/R;

    move-result-object v3

    iput-boolean v1, v3, Lcom/android/mail/browse/R;->apK:Z

    iget-object v3, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v3}, Lcom/google/android/gm/ads/AdTeaserView;->k(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/browse/R;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v5}, Lcom/google/android/gm/ads/AdTeaserView;->i(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/ui/ae;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mail/ui/ae;->qJ()Landroid/support/v4/e/a;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gm/provider/Advertisement;->bce:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/mail/browse/R;->apL:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v3}, Lcom/google/android/gm/ads/AdTeaserView;->k(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/browse/R;

    move-result-object v3

    iget v5, v0, Lcom/google/android/gm/provider/Advertisement;->bco:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    :goto_0
    iput-boolean v1, v3, Lcom/android/mail/browse/R;->apC:Z

    iget-object v1, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdTeaserView;->k(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/browse/R;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v3}, Lcom/google/android/gm/ads/AdTeaserView;->l(Lcom/google/android/gm/ads/AdTeaserView;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mail/browse/R;->apG:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdTeaserView;->k(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/browse/R;

    move-result-object v1

    const v3, 0x7f09039f

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/mail/browse/R;->apH:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdTeaserView;->k(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/browse/R;

    move-result-object v1

    iput-boolean v2, v1, Lcom/android/mail/browse/R;->apE:Z

    iget-object v1, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdTeaserView;->k(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/browse/R;

    move-result-object v1

    const v2, 0x7f0c00ec

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/mail/browse/R;->apI:I

    iget-object v1, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    iget-object v0, v0, Lcom/google/android/gm/provider/Advertisement;->bcj:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/google/android/gm/ads/AdTeaserView;->a(Lcom/google/android/gm/ads/AdTeaserView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v0}, Lcom/google/android/gm/ads/AdTeaserView;->i(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gm/ads/g;->aZP:Z

    if-nez v0, :cond_3

    const-string v0, "AdTeaserView"

    const-string v1, "Problem with cursor from loader; ad has gone away"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v0, v3}, Lcom/google/android/gm/ads/AdTeaserView;->a(Lcom/google/android/gm/ads/AdTeaserView;Lcom/google/android/gm/provider/Advertisement;)Lcom/google/android/gm/provider/Advertisement;

    iget-object v0, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v0, v3}, Lcom/google/android/gm/ads/AdTeaserView;->a(Lcom/google/android/gm/ads/AdTeaserView;Lcom/android/mail/browse/R;)Lcom/android/mail/browse/R;

    iget-object v0, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v0, v3}, Lcom/google/android/gm/ads/AdTeaserView;->a(Lcom/google/android/gm/ads/AdTeaserView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v0}, Lcom/google/android/gm/ads/AdTeaserView;->i(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    goto :goto_1

    :cond_3
    const-string v0, "AdTeaserView"

    const-string v1, "Problem with cursor from loader; likely no ads available"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v0}, Lcom/google/android/gm/ads/AdTeaserView;->j(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/google/android/gm/provider/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/e;->a(Lcom/google/android/gm/provider/Advertisement;)V

    iget-object v0, p0, Lcom/google/android/gm/ads/g;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v0}, Lcom/google/android/gm/ads/AdTeaserView;->j(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/google/android/gm/provider/e;

    move-result-object v0

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
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
            "Lcom/google/android/gm/provider/Advertisement;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 631
    return-void
.end method
