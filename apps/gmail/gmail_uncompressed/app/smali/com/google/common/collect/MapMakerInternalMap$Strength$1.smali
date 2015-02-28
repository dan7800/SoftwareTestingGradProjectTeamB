.class final enum Lcom/google/common/collect/MapMakerInternalMap$Strength$1;
.super Lcom/google/common/collect/MapMakerInternalMap$Strength;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, p1, v0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/af;Ljava/lang/Object;)Lcom/google/common/collect/ar;
    .locals 1
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
    .line 300
    new-instance v0, Lcom/google/common/collect/ap;

    invoke-direct {v0, p3}, Lcom/google/common/collect/ap;-><init>(Ljava/lang/Object;)V

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
    .line 305
    invoke-static {}, Lcom/google/common/base/Equivalences;->YJ()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method
