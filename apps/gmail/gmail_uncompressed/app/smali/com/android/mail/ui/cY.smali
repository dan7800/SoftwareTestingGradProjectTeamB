.class public final Lcom/android/mail/ui/cY;
.super Lcom/android/mail/ui/bT;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/mail/ui/bT;-><init>()V

    return-void
.end method


# virtual methods
.method protected final db(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 120
    iget-object v0, p0, Lcom/android/mail/ui/cY;->TE:Lcom/android/mail/ui/cX;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/cX;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 121
    instance-of v1, v0, Lcom/android/mail/ui/bX;

    if-eqz v1, :cond_0

    .line 122
    check-cast v0, Lcom/android/mail/ui/bX;

    invoke-virtual {v0}, Lcom/android/mail/ui/bX;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    new-instance v2, Lcom/android/mail/ui/FolderOperation;

    iget-object v3, p0, Lcom/android/mail/ui/cY;->aKp:Lcom/android/mail/providers/Folder;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/mail/ui/FolderOperation;-><init>(Lcom/android/mail/providers/Folder;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v2, Lcom/android/mail/ui/FolderOperation;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/mail/ui/FolderOperation;-><init>(Lcom/android/mail/providers/Folder;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0}, Lcom/android/mail/ui/cY;->ya()Lcom/android/mail/ui/aP;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mail/ui/cY;->aEs:Ljava/util/Collection;

    iget-boolean v3, p0, Lcom/android/mail/ui/cY;->aKo:Z

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/android/mail/ui/aP;->a(Ljava/util/Collection;Ljava/util/Collection;ZZ)V

    .line 129
    invoke-virtual {p0}, Lcom/android/mail/ui/cY;->dismiss()V

    .line 131
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/mail/ui/bT;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f09013c

    iput v0, p0, Lcom/android/mail/ui/cY;->aKq:I

    .line 54
    new-instance v1, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 55
    const-string v2, "folderQueryUri"

    iget-object v0, p0, Lcom/android/mail/ui/cY;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayi:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/cY;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayi:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/mail/ui/cY;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/android/mail/ui/cY;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/android/mail/ui/cZ;

    invoke-direct {v4, p0, v0}, Lcom/android/mail/ui/cZ;-><init>(Lcom/android/mail/ui/cY;Landroid/content/Context;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 116
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/cY;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    goto :goto_0
.end method
