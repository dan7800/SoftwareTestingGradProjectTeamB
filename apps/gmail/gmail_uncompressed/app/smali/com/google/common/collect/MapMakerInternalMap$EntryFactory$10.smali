.class final enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$10;
.super Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 468
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/af;Lcom/google/common/collect/af;)Lcom/google/common/collect/af;
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
            "<TK;TV;>;",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 478
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/af;Lcom/google/common/collect/af;)Lcom/google/common/collect/af;

    move-result-object v0

    .line 479
    invoke-static {p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$10;->c(Lcom/google/common/collect/af;Lcom/google/common/collect/af;)V

    .line 480
    return-object v0
.end method

.method final a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/af;)Lcom/google/common/collect/af;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Lcom/google/common/collect/av;

    iget-object v1, p1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/common/collect/av;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/af;)V

    return-object v0
.end method
