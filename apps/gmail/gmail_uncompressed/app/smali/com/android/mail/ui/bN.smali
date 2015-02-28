.class final Lcom/android/mail/ui/bN;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/bK;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mail/providers/Folder;",
        ">;",
        "Lcom/android/mail/ui/bK;"
    }
.end annotation


# instance fields
.field final synthetic aJT:Lcom/android/mail/ui/bB;

.field private final aKc:Lcom/android/mail/utils/p;

.field private final aKd:Lcom/android/mail/providers/Folder;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/bB;Lcom/android/mail/providers/Folder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/android/mail/ui/bN;->aJT:Lcom/android/mail/ui/bB;

    .line 1214
    iget-object v0, p1, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040078

    invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1215
    iput-object p2, p0, Lcom/android/mail/ui/bN;->aKd:Lcom/android/mail/providers/Folder;

    .line 1216
    iget-object v0, p2, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iput-object v0, p0, Lcom/android/mail/ui/bN;->aKc:Lcom/android/mail/utils/p;

    .line 1217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/bN;->d(Lcom/android/mail/c/b;)V

    .line 1218
    return-void
.end method


# virtual methods
.method public final d(Lcom/android/mail/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/android/mail/ui/bN;->clear()V

    .line 1266
    iget-object v0, p0, Lcom/android/mail/ui/bN;->aKd:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/android/mail/ui/bN;->aKd:Lcom/android/mail/providers/Folder;

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/bN;->add(Ljava/lang/Object;)V

    .line 1269
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/mail/c/b;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1270
    invoke-virtual {p1}, Lcom/android/mail/c/b;->moveToFirst()Z

    .line 1272
    :cond_1
    invoke-virtual {p1}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/bN;->add(Ljava/lang/Object;)V

    .line 1273
    invoke-virtual {p1}, Lcom/android/mail/c/b;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1275
    :cond_2
    return-void
.end method

.method public final destroy()V
    .locals 0

    .prologue
    .line 1290
    return-void
.end method

.method public final e(Lcom/android/mail/c/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1285
    return-void
.end method

.method public final getItemViewType(I)I
    .locals 2

    .prologue
    .line 1228
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/bN;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 1229
    iget-object v0, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v1, p0, Lcom/android/mail/ui/bN;->aKc:Lcom/android/mail/utils/p;

    invoke-virtual {v0, v1}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1235
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/bN;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 1237
    if-eqz p2, :cond_2

    .line 1238
    check-cast p2, Lcom/android/mail/ui/FolderItemView;

    .line 1243
    :goto_0
    iget-object v1, p0, Lcom/android/mail/ui/bN;->aKc:Lcom/android/mail/utils/p;

    invoke-virtual {p2, v0, v1}, Lcom/android/mail/ui/FolderItemView;->a(Lcom/android/mail/providers/Folder;Lcom/android/mail/utils/p;)V

    .line 1245
    iget-object v1, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v4, p0, Lcom/android/mail/ui/bN;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v4}, Lcom/android/mail/ui/bB;->e(Lcom/android/mail/ui/bB;)Lcom/android/mail/utils/p;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1246
    iget-object v1, p0, Lcom/android/mail/ui/bN;->aJT:Lcom/android/mail/ui/bB;

    invoke-virtual {v1}, Lcom/android/mail/ui/bB;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 1247
    iget-object v1, p0, Lcom/android/mail/ui/bN;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v1}, Lcom/android/mail/ui/bB;->g(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/bF;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mail/ui/bN;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v1}, Lcom/android/mail/ui/bB;->g(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/bF;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/ui/bF;->getCount()I

    move-result v1

    :goto_1
    add-int/2addr v1, p1

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v4, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1252
    iget-object v1, p0, Lcom/android/mail/ui/bN;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v1}, Lcom/android/mail/ui/bB;->i(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/mail/providers/Folder;->aAf:I

    iget-object v4, p0, Lcom/android/mail/ui/bN;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v4}, Lcom/android/mail/ui/bB;->i(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Folder;

    move-result-object v4

    iget v4, v4, Lcom/android/mail/providers/Folder;->aAf:I

    if-eq v1, v4, :cond_0

    move v2, v3

    .line 1254
    :cond_0
    if-eqz v2, :cond_1

    .line 1255
    iget-object v1, p0, Lcom/android/mail/ui/bN;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v1}, Lcom/android/mail/ui/bB;->i(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Folder;

    move-result-object v1

    iget v1, v1, Lcom/android/mail/providers/Folder;->aAf:I

    invoke-virtual {p2, v1}, Lcom/android/mail/ui/FolderItemView;->cY(I)V

    .line 1258
    :cond_1
    const v1, 0x7f0d0135

    invoke-virtual {p2, v1}, Lcom/android/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mail/providers/Folder;->a(Lcom/android/mail/providers/Folder;Landroid/view/View;)V

    .line 1259
    const v1, 0x7f0d01ae

    invoke-virtual {p2, v1}, Lcom/android/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/mail/providers/Folder;->a(Lcom/android/mail/providers/Folder;Landroid/widget/ImageView;)V

    .line 1260
    return-object p2

    .line 1240
    :cond_2
    iget-object v1, p0, Lcom/android/mail/ui/bN;->aJT:Lcom/android/mail/ui/bB;

    iget-object v1, v1, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f040078

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mail/ui/FolderItemView;

    move-object p2, v1

    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 1247
    goto :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 1223
    const/4 v0, 0x2

    return v0
.end method

.method public final zu()Lcom/android/mail/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "drawers don\'t have hierarchical folders"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
