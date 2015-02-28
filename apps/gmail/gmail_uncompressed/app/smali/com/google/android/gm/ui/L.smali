.class final Lcom/google/android/gm/ui/L;
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
.field final synthetic bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/google/android/gm/ui/L;->bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ed(I)V
    .locals 5

    .prologue
    .line 747
    invoke-static {}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->HX()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SectionedInboxTeaserView: Initializing section loader %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 749
    iget-object v0, p0, Lcom/google/android/gm/ui/L;->bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;

    invoke-static {v0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->h(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gm/ui/L;->bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;

    invoke-static {v2}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->g(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 750
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
    .line 754
    new-instance v0, Lcom/android/mail/c/c;

    iget-object v1, p0, Lcom/google/android/gm/ui/L;->bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;

    invoke-virtual {v1}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ui/L;->bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;

    invoke-static {v2}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->e(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)Lcom/android/mail/providers/Account;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    sget-object v3, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    sget-object v4, Lcom/android/mail/providers/Folder;->aqh:Lcom/android/mail/c/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    .line 756
    iget-object v1, p0, Lcom/google/android/gm/ui/L;->bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;

    invoke-static {v1}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->i(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/c/c;->setUpdateThrottle(J)V

    .line 757
    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 686
    check-cast p2, Lcom/android/mail/c/b;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v0

    :goto_0
    invoke-virtual {p2}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    iget-object v1, p0, Lcom/google/android/gm/ui/L;->bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;

    invoke-static {v1}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->e(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)Lcom/android/mail/providers/Account;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v1, v1, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    iget-object v3, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v3, v3, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "defaultParent"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/mail/utils/p;

    invoke-direct {v4, v3}, Lcom/android/mail/utils/p;-><init>(Landroid/net/Uri;)V

    iput-object v4, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iput-object v1, v0, Lcom/android/mail/providers/Folder;->aAq:Landroid/net/Uri;

    iget-object v3, v0, Lcom/android/mail/providers/Folder;->azY:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/ui/L;->bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;

    invoke-static {v1}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->f(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ui/N;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gm/ui/N;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v4

    invoke-virtual {v1, v0}, Lcom/google/android/gm/ui/N;->d(Lcom/android/mail/providers/Folder;)V

    if-eqz v4, :cond_0

    iget v1, v4, Lcom/android/mail/providers/Folder;->aAe:I

    iget v5, v0, Lcom/android/mail/providers/Folder;->aAe:I

    if-ne v1, v5, :cond_0

    iget-wide v4, v4, Lcom/android/mail/providers/Folder;->aAr:J

    iget-wide v0, v0, Lcom/android/mail/providers/Folder;->aAr:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v2, 0x1

    const-string v0, "^sq_ig_i_social"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3e9

    invoke-direct {p0, v0}, Lcom/google/android/gm/ui/L;->ed(I)V

    move v0, v2

    :goto_1
    invoke-virtual {p2}, Lcom/android/mail/c/b;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/ui/L;->bqJ:Lcom/google/android/gm/ui/SectionedInboxTeaserView;

    invoke-static {v0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->d(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)Lcom/android/mail/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string v0, "^sq_ig_i_promo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3ea

    invoke-direct {p0, v0}, Lcom/google/android/gm/ui/L;->ed(I)V

    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "^sq_ig_i_notification"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3eb

    invoke-direct {p0, v0}, Lcom/google/android/gm/ui/L;->ed(I)V

    move v0, v2

    goto :goto_1

    :cond_4
    const-string v0, "^sq_ig_i_group"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x3ec

    invoke-direct {p0, v0}, Lcom/google/android/gm/ui/L;->ed(I)V

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->HX()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SectionedInboxTeaserView: Problem with cursor returned from loader"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    :cond_7
    move v2, v0

    goto/16 :goto_0
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
    .line 690
    return-void
.end method
