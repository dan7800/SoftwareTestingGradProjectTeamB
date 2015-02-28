.class final Lcom/google/common/collect/f;
.super Lcom/google/common/collect/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/t",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic cAb:Lcom/google/common/collect/AbstractBiMap;

.field final cAi:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .locals 1

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/common/collect/f;->cAb:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/t;-><init>()V

    .line 230
    iget-object v0, p0, Lcom/google/common/collect/f;->cAb:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->c(Lcom/google/common/collect/AbstractBiMap;)Lcom/google/common/collect/AbstractBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/f;->cAi:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;B)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/google/common/collect/f;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic YS()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/common/collect/f;->cAi:Ljava/util/Set;

    return-object v0
.end method

.method protected final YT()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/common/collect/f;->cAi:Ljava/util/Set;

    return-object v0
.end method

.method protected final bridge synthetic YU()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/common/collect/f;->cAi:Ljava/util/Set;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/common/collect/f;->cAb:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->b(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/google/common/collect/g;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/g;-><init>(Lcom/google/common/collect/f;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/google/common/collect/f;->Zd()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {p0, p1}, Lcom/google/common/collect/aA;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    invoke-static {p0}, Lcom/google/common/collect/l;->G(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
