.class Lcom/google/common/collect/ImmutableBiMap$EmptyBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableBiMap",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic YQ()Lcom/google/common/collect/k;
    .locals 0

    .prologue
    .line 286
    return-object p0
.end method

.method final YW()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic Zb()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/google/common/collect/ImmutableBiMap;->Zl()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method final Zj()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    sget-object v0, Lcom/google/common/collect/EmptyImmutableMap;->cAr:Lcom/google/common/collect/EmptyImmutableMap;

    return-object v0
.end method

.method public final Zk()Lcom/google/common/collect/ImmutableBiMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    return-object p0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/google/common/collect/ImmutableBiMap;->YZ()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/google/common/collect/ImmutableBiMap;->Za()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 298
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->Zm()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/google/common/collect/ImmutableBiMap;->Zl()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
