.class Lcom/google/common/collect/RegularImmutableMap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final map:Lcom/google/common/collect/RegularImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableMap",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableMap",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    .line 259
    return-void
.end method


# virtual methods
.method final YW()Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public final YX()Lcom/google/common/collect/aJ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/aJ",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lcom/google/common/collect/aE;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableMap;->a(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/aD;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/aE;-><init>(Lcom/google/common/collect/RegularImmutableMap$Values;I)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap$Values;->YX()Lcom/google/common/collect/aJ;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMap;->a(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/aD;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
