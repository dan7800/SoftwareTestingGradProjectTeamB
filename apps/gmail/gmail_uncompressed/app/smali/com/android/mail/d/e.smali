.class final Lcom/android/mail/d/e;
.super Lcom/android/mail/d/d;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Folder;I)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/mail/d/d;-><init>(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Folder;ILcom/android/mail/providers/Account;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/utils/p;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 64
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/mail/d/e;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/d/e;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    if-eqz v1, :cond_0

    .line 65
    iget v1, p0, Lcom/android/mail/d/e;->axc:I

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/mail/d/e;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {v1, p1}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 67
    :cond_0
    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public final getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    check-cast p1, Lcom/android/mail/ui/FolderItemView;

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/android/mail/d/e;->aqp:Lcom/android/mail/providers/Folder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/mail/ui/FolderItemView;->a(Lcom/android/mail/providers/Folder;Lcom/android/mail/utils/p;)V

    .line 57
    iget-object v0, p0, Lcom/android/mail/d/e;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {p1, v0}, Lcom/android/mail/ui/FolderItemView;->l(Lcom/android/mail/providers/Folder;)V

    .line 58
    return-object p1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/mail/d/e;->wC:Landroid/view/LayoutInflater;

    const v1, 0x7f040078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/FolderItemView;

    move-object p1, v0

    goto :goto_0
.end method

.method public final ta()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[DrawerItem VIEW_FOLDER, mFolder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mail/d/e;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mail/d/e;->axc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
