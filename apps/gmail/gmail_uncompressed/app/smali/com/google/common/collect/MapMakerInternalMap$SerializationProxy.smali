.class final Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;
.super Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3L


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/Q;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$Strength;",
            "Lcom/google/common/collect/MapMakerInternalMap$Strength;",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;JJII",
            "Lcom/google/common/collect/Q",
            "<-TK;-TV;>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4042
    invoke-direct/range {p0 .. p12}, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;-><init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/Q;Ljava/util/concurrent/ConcurrentMap;)V

    .line 4044
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4052
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4053
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    new-instance v4, Lcom/google/common/collect/MapMaker;

    invoke-direct {v4}, Lcom/google/common/collect/MapMaker;-><init>()V

    iget v0, v4, Lcom/google/common/collect/MapMaker;->cAW:I

    if-ne v0, v8, :cond_6

    move v0, v1

    :goto_0
    const-string v5, "initial capacity was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, v4, Lcom/google/common/collect/MapMaker;->cAW:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/i;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz v3, :cond_7

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/i;->cp(Z)V

    iput v3, v4, Lcom/google/common/collect/MapMaker;->cAW:I

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v0, v4, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_8

    move v0, v1

    :goto_2
    const-string v5, "Key strength was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, v4, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/i;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, v4, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->cBU:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq v3, v0, :cond_0

    iput-boolean v1, v4, Lcom/google/common/collect/MapMaker;->cAV:Z

    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v0, v4, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_9

    move v0, v1

    :goto_3
    const-string v5, "Value strength was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, v4, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/i;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, v4, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->cBU:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq v3, v0, :cond_1

    iput-boolean v1, v4, Lcom/google/common/collect/MapMaker;->cAV:Z

    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->keyEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v0, v4, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_a

    move v0, v1

    :goto_4
    const-string v5, "key equivalence was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, v4, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/i;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, v4, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    iput-boolean v1, v4, Lcom/google/common/collect/MapMaker;->cAV:Z

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->valueEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v0, v4, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_b

    move v0, v1

    :goto_5
    const-string v5, "value equivalence was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, v4, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/i;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, v4, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    iput-boolean v1, v4, Lcom/google/common/collect/MapMaker;->cAV:Z

    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->concurrencyLevel:I

    iget v0, v4, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    if-ne v0, v8, :cond_c

    move v0, v1

    :goto_6
    const-string v5, "concurrency level was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, v4, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/i;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez v3, :cond_d

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/i;->cp(Z)V

    iput v3, v4, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->removalListener:Lcom/google/common/collect/Q;

    iget-object v0, v4, Lcom/google/common/collect/MapMaker;->removalListener:Lcom/google/common/collect/Q;

    if-nez v0, :cond_e

    move v0, v1

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/i;->cq(Z)V

    invoke-static {v3}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Q;

    iput-object v0, v4, Lcom/google/common/collect/GenericMapMaker;->removalListener:Lcom/google/common/collect/Q;

    iput-boolean v1, v4, Lcom/google/common/collect/MapMaker;->cAV:Z

    iget-wide v6, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterWriteNanos:J

    cmp-long v0, v6, v10

    if-lez v0, :cond_2

    iget-wide v6, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterWriteNanos:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v0}, Lcom/google/common/collect/MapMaker;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    :cond_2
    iget-wide v6, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterAccessNanos:J

    cmp-long v0, v6, v10

    if-lez v0, :cond_3

    iget-wide v6, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->expireAfterAccessNanos:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v0}, Lcom/google/common/collect/MapMaker;->c(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    :cond_3
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->maximumSize:I

    if-eq v0, v8, :cond_5

    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->maximumSize:I

    iget v0, v4, Lcom/google/common/collect/MapMaker;->maximumSize:I

    if-ne v0, v8, :cond_f

    move v0, v1

    :goto_9
    const-string v5, "maximum size was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, v4, Lcom/google/common/collect/MapMaker;->maximumSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/i;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz v3, :cond_4

    move v2, v1

    :cond_4
    const-string v0, "maximum size must not be negative"

    invoke-static {v2, v0}, Lcom/google/common/base/i;->c(ZLjava/lang/Object;)V

    iput v3, v4, Lcom/google/common/collect/MapMaker;->maximumSize:I

    iput-boolean v1, v4, Lcom/google/common/collect/MapMaker;->cAV:Z

    iget v0, v4, Lcom/google/common/collect/MapMaker;->maximumSize:I

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->cBc:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, v4, Lcom/google/common/collect/MapMaker;->cAX:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 4054
    :cond_5
    invoke-virtual {v4}, Lcom/google/common/collect/MapMaker;->ZH()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;->cBk:Ljava/util/concurrent/ConcurrentMap;

    .line 4055
    :goto_a
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->cBk:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_6
    move v0, v2

    .line 4053
    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto/16 :goto_2

    :cond_9
    move v0, v2

    goto/16 :goto_3

    :cond_a
    move v0, v2

    goto/16 :goto_4

    :cond_b
    move v0, v2

    goto/16 :goto_5

    :cond_c
    move v0, v2

    goto/16 :goto_6

    :cond_d
    move v0, v2

    goto/16 :goto_7

    :cond_e
    move v0, v2

    goto/16 :goto_8

    :cond_f
    move v0, v2

    goto :goto_9

    .line 4056
    :cond_10
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4059
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;->cBk:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .prologue
    .line 4047
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 4048
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->cBk:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractSerializationProxy;->cBk:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 4049
    return-void
.end method
