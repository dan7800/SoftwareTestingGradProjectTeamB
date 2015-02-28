.class public abstract Lcom/android/ex/photo/a/a;
.super Lcom/android/ex/photo/a/b;
.source "SourceFile"


# instance fields
.field protected ahY:I

.field protected ahZ:Landroid/util/SparseIntArray;

.field protected final aia:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected eR:Landroid/database/Cursor;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/p;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0, p2}, Lcom/android/ex/photo/a/b;-><init>(Landroid/support/v4/app/p;)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/a/a;->aia:Ljava/util/HashMap;

    .line 56
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-object p3, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    iput-object p1, p0, Lcom/android/ex/photo/a/a;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    const-string v1, "uri"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/ex/photo/a/a;->ahY:I

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private bI(I)Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nX()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/photo/a/a;->ahZ:Landroid/util/SparseIntArray;

    .line 258
    :goto_0
    return-void

    .line 248
    :cond_1
    new-instance v0, Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 250
    iget-object v1, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 251
    :goto_1
    iget-object v1, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/ex/photo/a/a;->ahY:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 253
    iget-object v2, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 255
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto :goto_1

    .line 257
    :cond_2
    iput-object v0, p0, Lcom/android/ex/photo/a/a;->ahZ:Landroid/util/SparseIntArray;

    goto :goto_0
.end method


# virtual methods
.method protected final K(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    invoke-direct {p0, p2}, Lcom/android/ex/photo/a/a;->bI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:pager:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/ex/photo/a/a;->ahY:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/ex/photo/a/b;->K(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/ex/photo/a/a;->bI(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/ex/photo/a/a;->ahY:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 102
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/ex/photo/a/b;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    iget-object v2, p0, Lcom/android/ex/photo/a/a;->aia:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_1
    return-object v1

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/ex/photo/a/a;->aia:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/android/ex/photo/a/b;->a(Landroid/view/View;ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public abstract b(Landroid/database/Cursor;I)Landroid/support/v4/app/Fragment;
.end method

.method public final bH(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/photo/a/a;->bI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/ex/photo/a/a;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/photo/a/a;->b(Landroid/database/Cursor;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 118
    iget-object v0, p0, Lcom/android/ex/photo/a/a;->aia:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 119
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/ex/photo/a/a;->ahZ:Landroid/util/SparseIntArray;

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 124
    :goto_0
    return v0

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/android/ex/photo/a/a;->ahZ:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    return-object v0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 172
    const-string v0, "BaseCursorPagerAdapter"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v2, "BaseCursorPagerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "swapCursor old="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; new="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    if-ne p1, v0, :cond_3

    .line 178
    const/4 v0, 0x0

    .line 190
    :goto_2
    return-object v0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_1

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    .line 181
    iput-object p1, p0, Lcom/android/ex/photo/a/a;->eR:Landroid/database/Cursor;

    .line 182
    if-eqz p1, :cond_4

    .line 183
    const-string v1, "uri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/ex/photo/a/a;->ahY:I

    .line 188
    :goto_3
    invoke-direct {p0}, Lcom/android/ex/photo/a/a;->nX()V

    .line 189
    invoke-virtual {p0}, Lcom/android/ex/photo/a/a;->notifyDataSetChanged()V

    goto :goto_2

    .line 185
    :cond_4
    iput v1, p0, Lcom/android/ex/photo/a/a;->ahY:I

    goto :goto_3
.end method
