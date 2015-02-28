.class final Lcom/google/common/collect/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field cAc:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic cAd:Ljava/util/Iterator;

.field final synthetic cAe:Lcom/google/common/collect/a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/a;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/common/collect/b;->cAe:Lcom/google/common/collect/a;

    iput-object p2, p0, Lcom/google/common/collect/b;->cAd:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/common/collect/b;->cAd:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/common/collect/b;->cAd:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/b;->cAc:Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/b;->cAc:Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/common/collect/c;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/c;-><init>(Lcom/google/common/collect/b;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/common/collect/b;->cAc:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/i;->cq(Z)V

    .line 342
    iget-object v0, p0, Lcom/google/common/collect/b;->cAc:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/google/common/collect/b;->cAd:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 344
    iget-object v1, p0, Lcom/google/common/collect/b;->cAe:Lcom/google/common/collect/a;

    iget-object v1, v1, Lcom/google/common/collect/a;->cAb:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v1, v0}, Lcom/google/common/collect/AbstractBiMap;->b(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)V

    .line 345
    return-void

    .line 341
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
