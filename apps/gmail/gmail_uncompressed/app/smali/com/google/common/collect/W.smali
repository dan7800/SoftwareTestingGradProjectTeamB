.class final Lcom/google/common/collect/W;
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
    .line 3156
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3157
    new-instance v0, Lcom/google/common/collect/X;

    invoke-direct {v0, p0}, Lcom/google/common/collect/X;-><init>(Lcom/google/common/collect/W;)V

    iput-object v0, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

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
    .line 3200
    iget-object v0, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0}, Lcom/google/common/collect/af;->ZY()Lcom/google/common/collect/af;

    move-result-object v0

    .line 3201
    iget-object v1, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    .line 3250
    iget-object v0, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0}, Lcom/google/common/collect/af;->ZY()Lcom/google/common/collect/af;

    move-result-object v0

    .line 3251
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

    if-eq v0, v1, :cond_0

    .line 3252
    invoke-interface {v0}, Lcom/google/common/collect/af;->ZY()Lcom/google/common/collect/af;

    move-result-object v1

    .line 3253
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->e(Lcom/google/common/collect/af;)V

    move-object v0, v1

    .line 3255
    goto :goto_0

    .line 3257
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

    iget-object v1, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0, v1}, Lcom/google/common/collect/af;->h(Lcom/google/common/collect/af;)V

    .line 3258
    iget-object v0, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

    iget-object v1, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0, v1}, Lcom/google/common/collect/af;->i(Lcom/google/common/collect/af;)V

    .line 3259
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3230
    check-cast p1, Lcom/google/common/collect/af;

    .line 3231
    invoke-interface {p1}, Lcom/google/common/collect/af;->ZY()Lcom/google/common/collect/af;

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
    .line 3236
    iget-object v0, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0}, Lcom/google/common/collect/af;->ZY()Lcom/google/common/collect/af;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

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
    .line 3263
    new-instance v0, Lcom/google/common/collect/Y;

    invoke-direct {p0}, Lcom/google/common/collect/W;->aaa()Lcom/google/common/collect/af;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Y;-><init>(Lcom/google/common/collect/W;Lcom/google/common/collect/af;)V

    return-object v0
.end method

.method public final synthetic offer(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3156
    check-cast p1, Lcom/google/common/collect/af;

    invoke-interface {p1}, Lcom/google/common/collect/af;->ZZ()Lcom/google/common/collect/af;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/af;->ZY()Lcom/google/common/collect/af;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->b(Lcom/google/common/collect/af;Lcom/google/common/collect/af;)V

    iget-object v0, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0}, Lcom/google/common/collect/af;->ZZ()Lcom/google/common/collect/af;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->b(Lcom/google/common/collect/af;Lcom/google/common/collect/af;)V

    iget-object v0, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

    invoke-static {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap;->b(Lcom/google/common/collect/af;Lcom/google/common/collect/af;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3156
    invoke-direct {p0}, Lcom/google/common/collect/W;->aaa()Lcom/google/common/collect/af;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic poll()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3156
    iget-object v0, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0}, Lcom/google/common/collect/af;->ZY()Lcom/google/common/collect/af;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/collect/W;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3218
    check-cast p1, Lcom/google/common/collect/af;

    .line 3219
    invoke-interface {p1}, Lcom/google/common/collect/af;->ZZ()Lcom/google/common/collect/af;

    move-result-object v0

    .line 3220
    invoke-interface {p1}, Lcom/google/common/collect/af;->ZY()Lcom/google/common/collect/af;

    move-result-object v1

    .line 3221
    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->b(Lcom/google/common/collect/af;Lcom/google/common/collect/af;)V

    .line 3222
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->e(Lcom/google/common/collect/af;)V

    .line 3224
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
    .line 3241
    const/4 v1, 0x0

    .line 3242
    iget-object v0, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

    invoke-interface {v0}, Lcom/google/common/collect/af;->ZY()Lcom/google/common/collect/af;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/W;->cBA:Lcom/google/common/collect/af;

    if-eq v0, v2, :cond_0

    .line 3243
    add-int/lit8 v1, v1, 0x1

    .line 3242
    invoke-interface {v0}, Lcom/google/common/collect/af;->ZY()Lcom/google/common/collect/af;

    move-result-object v0

    goto :goto_0

    .line 3245
    :cond_0
    return v1
.end method
