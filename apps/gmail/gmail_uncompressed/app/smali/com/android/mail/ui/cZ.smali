.class final Lcom/android/mail/ui/cZ;
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

.field final synthetic aNc:Lcom/android/mail/ui/cY;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/cY;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mail/ui/cZ;->aNc:Lcom/android/mail/ui/cY;

    iput-object p2, p0, Lcom/android/mail/ui/cZ;->OE:Landroid/content/Context;

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

    .line 62
    const-string v0, "folderQueryUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 63
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/mail/ui/cZ;->OE:Landroid/content/Context;

    sget-object v3, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 59
    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/mail/ui/cZ;->aNc:Lcom/android/mail/ui/cY;

    invoke-virtual {v0}, Lcom/android/mail/ui/cY;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/cZ;->aNc:Lcom/android/mail/ui/cY;

    invoke-virtual {v0}, Lcom/android/mail/ui/cY;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/mail/ui/cZ;->aNc:Lcom/android/mail/ui/cY;

    iget-object v2, v2, Lcom/android/mail/ui/cY;->TE:Lcom/android/mail/ui/cX;

    invoke-virtual {v2}, Lcom/android/mail/ui/cX;->Aa()V

    new-instance v2, Lcom/android/mail/ui/dm;

    iget-object v3, p0, Lcom/android/mail/ui/cZ;->aNc:Lcom/android/mail/ui/cY;

    iget-object v3, v3, Lcom/android/mail/ui/cY;->aKp:Lcom/android/mail/providers/Folder;

    invoke-direct {v2, v1, p2, v3}, Lcom/android/mail/ui/dm;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mail/providers/Folder;)V

    invoke-virtual {v2}, Lcom/android/mail/ui/dm;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/mail/ui/cZ;->aNc:Lcom/android/mail/ui/cY;

    iget-object v3, v3, Lcom/android/mail/ui/cY;->TE:Lcom/android/mail/ui/cX;

    invoke-virtual {v3, v2}, Lcom/android/mail/ui/cX;->a(Lcom/android/mail/ui/bW;)V

    :cond_2
    new-instance v2, Lcom/android/mail/ui/dC;

    invoke-static {p2}, Lcom/android/mail/ui/ad;->k(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/ui/cZ;->aNc:Lcom/android/mail/ui/cY;

    iget-object v4, v4, Lcom/android/mail/ui/cY;->aKp:Lcom/android/mail/providers/Folder;

    invoke-direct {v2, v1, v3, v4}, Lcom/android/mail/ui/dC;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mail/providers/Folder;)V

    invoke-virtual {v2}, Lcom/android/mail/ui/dC;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/mail/ui/cZ;->aNc:Lcom/android/mail/ui/cY;

    iget-object v1, v1, Lcom/android/mail/ui/cY;->TE:Lcom/android/mail/ui/cX;

    invoke-virtual {v1, v2}, Lcom/android/mail/ui/cX;->a(Lcom/android/mail/ui/bW;)V

    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/cZ;->aNc:Lcom/android/mail/ui/cY;

    iget-object v1, v1, Lcom/android/mail/ui/cY;->TE:Lcom/android/mail/ui/cX;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

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
    .line 113
    iget-object v0, p0, Lcom/android/mail/ui/cZ;->aNc:Lcom/android/mail/ui/cY;

    iget-object v0, v0, Lcom/android/mail/ui/cY;->TE:Lcom/android/mail/ui/cX;

    invoke-virtual {v0}, Lcom/android/mail/ui/cX;->Aa()V

    .line 114
    return-void
.end method
