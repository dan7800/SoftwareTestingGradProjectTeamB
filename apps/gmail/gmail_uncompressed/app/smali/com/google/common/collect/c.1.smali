.class final Lcom/google/common/collect/c;
.super Lcom/google/common/collect/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/r",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic cAf:Ljava/util/Map$Entry;

.field final synthetic cAg:Lcom/google/common/collect/b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/b;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/common/collect/c;->cAg:Lcom/google/common/collect/b;

    iput-object p2, p0, Lcom/google/common/collect/c;->cAf:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic YS()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/common/collect/c;->cAf:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected final YV()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/common/collect/c;->cAf:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/google/common/collect/c;->cAg:Lcom/google/common/collect/b;

    iget-object v0, v0, Lcom/google/common/collect/b;->cAe:Lcom/google/common/collect/a;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/a;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "entry no longer in map"

    invoke-static {v0, v3}, Lcom/google/common/base/i;->e(ZLjava/lang/Object;)V

    .line 326
    invoke-virtual {p0}, Lcom/google/common/collect/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    :goto_0
    return-object p1

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/c;->cAg:Lcom/google/common/collect/b;

    iget-object v0, v0, Lcom/google/common/collect/b;->cAe:Lcom/google/common/collect/a;

    iget-object v0, v0, Lcom/google/common/collect/a;->cAb:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "value already present: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/google/common/collect/c;->cAf:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/google/common/collect/c;->cAg:Lcom/google/common/collect/b;

    iget-object v1, v1, Lcom/google/common/collect/b;->cAe:Lcom/google/common/collect/a;

    iget-object v1, v1, Lcom/google/common/collect/a;->cAb:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/c;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/AbstractBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "entry no longer in map"

    invoke-static {v1, v2}, Lcom/google/common/base/i;->e(ZLjava/lang/Object;)V

    .line 334
    iget-object v1, p0, Lcom/google/common/collect/c;->cAg:Lcom/google/common/collect/b;

    iget-object v1, v1, Lcom/google/common/collect/b;->cAe:Lcom/google/common/collect/a;

    iget-object v1, v1, Lcom/google/common/collect/a;->cAb:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/c;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/google/common/collect/AbstractBiMap;->a(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    .line 335
    goto :goto_0

    :cond_1
    move v0, v2

    .line 329
    goto :goto_1
.end method
