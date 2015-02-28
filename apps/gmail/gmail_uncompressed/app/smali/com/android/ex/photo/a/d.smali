.class public final Lcom/android/ex/photo/a/d;
.super Lcom/android/ex/photo/a/a;
.source "SourceFile"


# instance fields
.field protected ahl:Z

.field protected aif:Landroid/support/v4/f/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/n",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final aig:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/p;Landroid/database/Cursor;FZ)V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/ex/photo/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/p;Landroid/database/Cursor;)V

    .line 36
    new-instance v0, Landroid/support/v4/f/n;

    sget-object v1, Lcom/android/ex/photo/d/b;->Lm:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/support/v4/f/n;-><init>(I)V

    iput-object v0, p0, Lcom/android/ex/photo/a/d;->aif:Landroid/support/v4/f/n;

    .line 45
    iput p4, p0, Lcom/android/ex/photo/a/d;->aig:F

    .line 46
    iput-boolean p5, p0, Lcom/android/ex/photo/a/d;->ahl:Z

    .line 47
    return-void
.end method

.method private a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/ex/photo/a/d;->aif:Landroid/support/v4/f/n;

    invoke-virtual {v0, p2}, Landroid/support/v4/f/n;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/ex/photo/a/d;->aif:Landroid/support/v4/f/n;

    invoke-virtual {v0, p2}, Landroid/support/v4/f/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b(Landroid/database/Cursor;I)Landroid/support/v4/app/Fragment;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 51
    const-string v1, "contentUri"

    invoke-direct {p0, p1, v1}, Lcom/android/ex/photo/a/d;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    const-string v1, "thumbnailUri"

    invoke-direct {p0, p1, v1}, Lcom/android/ex/photo/a/d;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    const-string v1, "loadingIndicator"

    invoke-direct {p0, p1, v1}, Lcom/android/ex/photo/a/d;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v0

    .line 55
    :goto_0
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/android/ex/photo/a/d;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/ex/photo/b/a;

    invoke-static {v1, v4}, Lcom/android/ex/photo/e;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/android/ex/photo/f;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v2}, Lcom/android/ex/photo/f;->aS(Ljava/lang/String;)Lcom/android/ex/photo/f;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/ex/photo/f;->aT(Ljava/lang/String;)Lcom/android/ex/photo/f;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/ex/photo/a/d;->ahl:Z

    invoke-virtual {v2, v3}, Lcom/android/ex/photo/f;->aj(Z)Lcom/android/ex/photo/f;

    move-result-object v2

    iget v3, p0, Lcom/android/ex/photo/a/d;->aig:F

    invoke-virtual {v2, v3}, Lcom/android/ex/photo/f;->s(F)Lcom/android/ex/photo/f;

    .line 68
    invoke-virtual {v1}, Lcom/android/ex/photo/f;->nE()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/android/ex/photo/b/a;->a(Landroid/content/Intent;IZ)Lcom/android/ex/photo/b/a;

    move-result-object v0

    return-object v0

    .line 53
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public final e(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "contentUri"

    invoke-direct {p0, p1, v0}, Lcom/android/ex/photo/a/d;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "thumbnailUri"

    invoke-direct {p0, p1, v0}, Lcom/android/ex/photo/a/d;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Lcom/android/ex/photo/a/d;->aif:Landroid/support/v4/f/n;

    invoke-virtual {v1}, Landroid/support/v4/f/n;->clear()V

    .line 84
    if-eqz p1, :cond_2

    .line 85
    sget-object v2, Lcom/android/ex/photo/d/b;->Lm:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 86
    iget-object v5, p0, Lcom/android/ex/photo/a/d;->aif:Landroid/support/v4/f/n;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/support/v4/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    sget-object v1, Lcom/android/ex/photo/d/b;->aiy:[Ljava/lang/String;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 90
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 91
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 92
    iget-object v5, p0, Lcom/android/ex/photo/a/d;->aif:Landroid/support/v4/f/n;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/support/v4/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_2
    invoke-super {p0, p1}, Lcom/android/ex/photo/a/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
