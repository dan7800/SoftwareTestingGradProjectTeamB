.class public final Lcom/android/mail/ui/cC;
.super Lcom/android/mail/ui/bT;
.source "SourceFile"


# instance fields
.field private aMg:Z

.field private final aMh:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/mail/ui/FolderOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/mail/ui/bT;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/cC;->aMh:Ljava/util/HashMap;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/cC;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mail/ui/cC;->aMh:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method protected final db(I)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/mail/ui/cC;->TE:Lcom/android/mail/ui/cX;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/cX;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 178
    instance-of v1, v0, Lcom/android/mail/ui/bX;

    if-eqz v1, :cond_3

    .line 179
    check-cast v0, Lcom/android/mail/ui/bX;

    invoke-virtual {v0}, Lcom/android/mail/ui/bX;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v3, v1

    :goto_0
    iget-boolean v1, p0, Lcom/android/mail/ui/cC;->aMg:Z

    if-eqz v1, :cond_2

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/android/mail/ui/cC;->TE:Lcom/android/mail/ui/cX;

    invoke-virtual {v1}, Lcom/android/mail/ui/cX;->getCount()I

    move-result v6

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_2

    iget-object v1, p0, Lcom/android/mail/ui/cC;->TE:Lcom/android/mail/ui/cX;

    invoke-virtual {v1, v5}, Lcom/android/mail/ui/cX;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Lcom/android/mail/ui/bX;

    if-eqz v1, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/android/mail/ui/bX;

    invoke-virtual {v1, v4}, Lcom/android/mail/ui/bX;->bx(Z)V

    check-cast v2, Lcom/android/mail/ui/bX;

    invoke-virtual {v2}, Lcom/android/mail/ui/bX;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/cC;->aMh:Ljava/util/HashMap;

    iget-object v7, v1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v7, v7, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    new-instance v8, Lcom/android/mail/ui/FolderOperation;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v8, v1, v9}, Lcom/android/mail/ui/FolderOperation;-><init>(Lcom/android/mail/providers/Folder;Ljava/lang/Boolean;)V

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/mail/ui/bX;->bx(Z)V

    iget-object v1, p0, Lcom/android/mail/ui/cC;->TE:Lcom/android/mail/ui/cX;

    invoke-virtual {v1}, Lcom/android/mail/ui/cX;->notifyDataSetChanged()V

    invoke-virtual {v0}, Lcom/android/mail/ui/bX;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/cC;->aMh:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v2, v2, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    new-instance v4, Lcom/android/mail/ui/FolderOperation;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Lcom/android/mail/ui/FolderOperation;-><init>(Lcom/android/mail/providers/Folder;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_3
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 216
    packed-switch p2, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 218
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mail/ui/cC;->ya()Lcom/android/mail/ui/aP;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/cC;->aMh:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/cC;->aEs:Ljava/util/Collection;

    iget-boolean v3, p0, Lcom/android/mail/ui/cC;->aKo:Z

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/mail/ui/aP;->a(Ljava/util/Collection;Ljava/util/Collection;ZZ)V

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/android/mail/ui/bT;->onCreate(Landroid/os/Bundle;)V

    .line 67
    iget-object v0, p0, Lcom/android/mail/ui/cC;->Nc:Lcom/android/mail/providers/Account;

    const/16 v3, 0x2000

    invoke-virtual {v0, v3}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/ui/cC;->aMg:Z

    .line 69
    const v0, 0x7f09013b

    iput v0, p0, Lcom/android/mail/ui/cC;->aKq:I

    .line 71
    if-eqz p1, :cond_1

    .line 72
    const-string v0, "operations"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lcom/android/mail/ui/FolderOperation;

    check-cast v0, [Lcom/android/mail/ui/FolderOperation;

    .line 74
    array-length v4, v0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 75
    iget-object v6, p0, Lcom/android/mail/ui/cC;->aMh:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/android/mail/ui/FolderOperation;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v7, v7, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v7, v7, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 67
    goto :goto_0

    .line 79
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 80
    const-string v1, "folderQueryUri"

    iget-object v0, p0, Lcom/android/mail/ui/cC;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayi:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/cC;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayi:Landroid/net/Uri;

    :goto_2
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/mail/ui/cC;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/android/mail/ui/cC;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v4, Lcom/android/mail/ui/cD;

    invoke-direct {v4, p0, v0}, Lcom/android/mail/ui/cD;-><init>(Lcom/android/mail/ui/cC;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 166
    return-void

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/cC;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    goto :goto_2
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/android/mail/ui/bT;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 171
    const-string v1, "operations"

    iget-object v0, p0, Lcom/android/mail/ui/cC;->aMh:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mail/ui/cC;->aMh:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/mail/ui/FolderOperation;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 173
    return-void
.end method
