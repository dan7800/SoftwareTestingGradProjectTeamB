.class final Lcom/google/common/collect/Z;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<",
        "Lcom/google/common/collect/af",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final cBA:Lcom/google/common/collect/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3284
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3285
    new-instance v0, Lcom/google/common/collect/aa;

    invoke-direct {v0, p0}, Lcom/google/common/collect/aa;-><init>(Lcom/google/common/collect/Z;)V

    iput-object v0, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    return-void
.end method

.method private aaa()Lcom/google/common/collect/af;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0}, Lcom/google/common/collect/af;->ZW()Lcom/google/common/collect/af;

    move-result-object v0

    .line 3337
    iget-object v1, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0}, Lcom/google/common/collect/af;->ZW()Lcom/google/common/collect/af;

    move-result-object v0

    .line 3387
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    if-eq v0, v1, :cond_0

    .line 3388
    invoke-interface {v0}, Lcom/google/common/collect/af;->ZW()Lcom/google/common/collect/af;

    move-result-object v1

    .line 3389
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->d(Lcom/google/common/collect/af;)V

    move-object v0, v1

    .line 3391
    goto :goto_0

    .line 3393
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    iget-object v1, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0, v1}, Lcom/google/common/collect/af;->f(Lcom/google/common/collect/af;)V

    .line 3394
    iget-object v0, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    iget-object v1, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0, v1}, Lcom/google/common/collect/af;->g(Lcom/google/common/collect/af;)V

    .line 3395
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3366
    check-cast p1, Lcom/google/common/collect/af;

    .line 3367
    invoke-interface {p1}, Lcom/google/common/collect/af;->ZW()Lcom/google/common/collect/af;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->cBO:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0}, Lcom/google/common/collect/af;->ZW()Lcom/google/common/collect/af;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3399
    new-instance v0, Lcom/google/common/collect/ab;

    invoke-direct {p0}, Lcom/google/common/collect/Z;->aaa()Lcom/google/common/collect/af;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ab;-><init>(Lcom/google/common/collect/Z;Lcom/google/common/collect/af;)V

    return-object v0
.end method

.method public final synthetic offer(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3284
    check-cast p1, Lcom/google/common/collect/af;

    invoke-interface {p1}, Lcom/google/common/collect/af;->ZX()Lcom/google/common/collect/af;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/af;->ZW()Lcom/google/common/collect/af;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/af;Lcom/google/common/collect/af;)V

    iget-object v0, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0}, Lcom/google/common/collect/af;->ZX()Lcom/google/common/collect/af;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/af;Lcom/google/common/collect/af;)V

    iget-object v0, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    invoke-static {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/af;Lcom/google/common/collect/af;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3284
    invoke-direct {p0}, Lcom/google/common/collect/Z;->aaa()Lcom/google/common/collect/af;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic poll()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3284
    iget-object v0, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0}, Lcom/google/common/collect/af;->ZW()Lcom/google/common/collect/af;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Z;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3354
    check-cast p1, Lcom/google/common/collect/af;

    .line 3355
    invoke-interface {p1}, Lcom/google/common/collect/af;->ZX()Lcom/google/common/collect/af;

    move-result-object v0

    .line 3356
    invoke-interface {p1}, Lcom/google/common/collect/af;->ZW()Lcom/google/common/collect/af;

    move-result-object v1

    .line 3357
    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/af;Lcom/google/common/collect/af;)V

    .line 3358
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->d(Lcom/google/common/collect/af;)V

    .line 3360
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->cBO:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 3

    .prologue
    .line 3377
    const/4 v1, 0x0

    .line 3378
    iget-object v0, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0}, Lcom/google/common/collect/af;->ZW()Lcom/google/common/collect/af;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/Z;->cBA:Lcom/google/common/collect/af;

    if-eq v0, v2, :cond_0

    .line 3379
    add-int/lit8 v1, v1, 0x1

    .line 3378
    invoke-interface {v0}, Lcom/google/common/collect/af;->ZW()Lcom/google/common/collect/af;

    move-result-object v0

    goto :goto_0

    .line 3381
    :cond_0
    return v1
.end method
