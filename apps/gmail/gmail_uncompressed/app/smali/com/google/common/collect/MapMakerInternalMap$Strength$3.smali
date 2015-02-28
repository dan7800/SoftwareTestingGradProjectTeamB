.class final enum Lcom/google/common/collect/MapMakerInternalMap$Strength$3;
.super Lcom/google/common/collect/MapMakerInternalMap$Strength;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 322
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/af;Ljava/lang/Object;)Lcom/google/common/collect/ar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;TV;)",
            "Lcom/google/common/collect/ar",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Lcom/google/common/collect/ax;

    iget-object v1, p1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lcom/google/common/collect/ax;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/af;)V

    return-object v0
.end method

.method final aam()Lcom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {}, Lcom/google/common/base/Equivalences;->YK()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method
