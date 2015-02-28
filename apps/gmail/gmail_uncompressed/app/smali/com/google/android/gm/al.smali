.class public final Lcom/google/android/gm/al;
.super Landroid/database/DataSetObservable;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/DataSetObservable;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aYN:Lcom/google/android/gm/ah;

.field private final aYP:Lcom/google/android/gm/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gm/LRUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gm/ah;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/gm/al;->aYN:Lcom/google/android/gm/ah;

    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 244
    new-instance v0, Lcom/google/android/gm/LRUCache;

    invoke-direct {v0, p3}, Lcom/google/android/gm/LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gm/al;->aYP:Lcom/google/android/gm/LRUCache;

    .line 246
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    iget-object v2, p0, Lcom/google/android/gm/al;->aYP:Lcom/google/android/gm/LRUCache;

    invoke-virtual {v2, v0}, Lcom/google/android/gm/LRUCache;->X(Ljava/lang/Object;)V

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/ah;Ljava/util/List;IB)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/al;-><init>(Lcom/google/android/gm/ah;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/al;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/gm/al;->aYP:Lcom/google/android/gm/LRUCache;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/LRUCache;->X(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/DataSetObserver;)V
    .locals 5

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/gm/al;->aYN:Lcom/google/android/gm/ah;

    invoke-static {v0}, Lcom/google/android/gm/ah;->a(Lcom/google/android/gm/ah;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/google/android/gm/al;->aYN:Lcom/google/android/gm/ah;

    invoke-static {v0}, Lcom/google/android/gm/ah;->a(Lcom/google/android/gm/ah;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 277
    sget-object v0, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v1, "global RLC update set size=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/al;->aYN:Lcom/google/android/gm/ah;

    invoke-static {v4}, Lcom/google/android/gm/ah;->a(Lcom/google/android/gm/ah;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 279
    :cond_0
    return-void
.end method

.method public final b(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/google/android/gm/al;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/google/android/gm/al;->aYN:Lcom/google/android/gm/ah;

    invoke-static {v0}, Lcom/google/android/gm/ah;->a(Lcom/google/android/gm/ah;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 287
    :cond_0
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/gm/al;->aYP:Lcom/google/android/gm/LRUCache;

    invoke-virtual {v0}, Lcom/google/android/gm/LRUCache;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic registerObserver(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 236
    check-cast p1, Landroid/database/DataSetObserver;

    invoke-virtual {p0, p1}, Lcom/google/android/gm/al;->a(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/gm/al;->aYP:Lcom/google/android/gm/LRUCache;

    invoke-virtual {v0}, Lcom/google/android/gm/LRUCache;->size()I

    move-result v0

    return v0
.end method

.method public final unregisterAll()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/database/DataSetObservable;->unregisterAll()V

    .line 292
    iget-object v0, p0, Lcom/google/android/gm/al;->aYN:Lcom/google/android/gm/ah;

    invoke-static {v0}, Lcom/google/android/gm/ah;->a(Lcom/google/android/gm/ah;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public final synthetic unregisterObserver(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 236
    check-cast p1, Landroid/database/DataSetObserver;

    invoke-virtual {p0, p1}, Lcom/google/android/gm/al;->b(Landroid/database/DataSetObserver;)V

    return-void
.end method
