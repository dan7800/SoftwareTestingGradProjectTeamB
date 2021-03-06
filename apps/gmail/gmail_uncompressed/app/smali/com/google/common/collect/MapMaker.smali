.class public final Lcom/google/common/collect/MapMaker;
.super Lcom/google/common/collect/GenericMapMaker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/GenericMapMaker",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field cAV:Z

.field cAW:I

.field cAX:Lcom/google/common/collect/MapMaker$RemovalCause;

.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field maximumSize:I

.field ticker:Lcom/google/common/base/l;

.field valueEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 145
    invoke-direct {p0}, Lcom/google/common/collect/GenericMapMaker;-><init>()V

    .line 124
    iput v0, p0, Lcom/google/common/collect/MapMaker;->cAW:I

    .line 125
    iput v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 126
    iput v0, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    .line 131
    iput-wide v2, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    .line 132
    iput-wide v2, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    .line 145
    return-void
.end method

.method private b(JLjava/util/concurrent/TimeUnit;)V
    .locals 11

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 477
    iget-wide v4, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expireAfterWrite was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/i;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 479
    iget-wide v4, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "expireAfterAccess was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/i;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 481
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/i;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 482
    return-void

    :cond_0
    move v0, v2

    .line 477
    goto :goto_0

    :cond_1
    move v0, v2

    .line 479
    goto :goto_1

    :cond_2
    move v0, v2

    .line 481
    goto :goto_2
.end method


# virtual methods
.method final ZD()I
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/google/common/collect/MapMaker;->cAW:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->cAW:I

    goto :goto_0
.end method

.method final ZE()I
    .locals 2

    .prologue
    .line 280
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    goto :goto_0
.end method

.method final ZF()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->cBU:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method final ZG()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->cBU:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public final ZH()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->cAV:Z

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->ZD()I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->ZE()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 591
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->cAX:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    :goto_1
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    goto :goto_1
.end method

.method final a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 467
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    .line 468
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->cAX:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    .line 470
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->cBb:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->cAX:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 472
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->cAV:Z

    .line 473
    return-object p0
.end method

.method final c(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 515
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 516
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    .line 517
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->cAX:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    .line 519
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->cBb:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->cAX:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 521
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->cAV:Z

    .line 522
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, -0x1

    .line 680
    invoke-static {p0}, Lcom/google/common/base/e;->ay(Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    .line 681
    iget v1, p0, Lcom/google/common/collect/MapMaker;->cAW:I

    if-eq v1, v3, :cond_0

    .line 682
    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->cAW:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->r(Ljava/lang/String;I)Lcom/google/common/base/f;

    .line 684
    :cond_0
    iget v1, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    if-eq v1, v3, :cond_1

    .line 685
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->r(Ljava/lang/String;I)Lcom/google/common/base/f;

    .line 687
    :cond_1
    iget v1, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    if-eq v1, v3, :cond_2

    .line 688
    const-string v1, "maximumSize"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->r(Ljava/lang/String;I)Lcom/google/common/base/f;

    .line 690
    :cond_2
    iget-wide v2, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3

    .line 691
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->A(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    .line 693
    :cond_3
    iget-wide v2, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 694
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->A(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    .line 696
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_5

    .line 697
    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/a;->hL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->A(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    .line 699
    :cond_5
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_6

    .line 700
    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/a;->hL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->A(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    .line 702
    :cond_6
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_7

    .line 703
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/f;->az(Ljava/lang/Object;)Lcom/google/common/base/f;

    .line 705
    :cond_7
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_8

    .line 706
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/f;->az(Ljava/lang/Object;)Lcom/google/common/base/f;

    .line 708
    :cond_8
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->removalListener:Lcom/google/common/collect/Q;

    if-eqz v1, :cond_9

    .line 709
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/f;->az(Ljava/lang/Object;)Lcom/google/common/base/f;

    .line 711
    :cond_9
    invoke-virtual {v0}, Lcom/google/common/base/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
