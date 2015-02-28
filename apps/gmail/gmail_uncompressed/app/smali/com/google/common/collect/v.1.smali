.class public final Lcom/google/common/collect/v;
.super Lcom/google/common/collect/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/common/collect/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final Zn()Lcom/google/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-super {p0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->Zh()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    goto :goto_0
.end method

.method public final synthetic Zo()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/common/collect/v;->Zn()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public final o(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/v",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    .line 151
    return-object p0
.end method

.method public final synthetic p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/v;->o(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p(Ljava/util/Map;)Lcom/google/common/collect/y;
    .locals 0

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/google/common/collect/y;->p(Ljava/util/Map;)Lcom/google/common/collect/y;

    return-object p0
.end method
