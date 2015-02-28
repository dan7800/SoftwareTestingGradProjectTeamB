.class Lcom/google/common/collect/MapMakerInternalMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final cBi:Lcom/google/common/collect/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ar",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final cBj:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final cuU:Ljava/util/logging/Logger;

.field private static final serialVersionUID:J = 0x5L


# instance fields
.field final transient cBe:I

.field final transient cBf:I

.field final transient cBg:[Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transient cBh:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field final concurrencyLevel:I

.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field final maximumSize:I

.field final removalListener:Lcom/google/common/collect/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Q",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final removalNotificationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/MapMaker$RemovalNotification",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final ticker:Lcom/google/common/base/l;

.field final valueEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const-class v0, Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->cuU:Ljava/util/logging/Logger;

    .line 630
    new-instance v0, Lcom/google/common/collect/R;

    invoke-direct {v0}, Lcom/google/common/collect/R;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->cBi:Lcom/google/common/collect/ar;

    .line 920
    new-instance v0, Lcom/google/common/collect/S;

    invoke-direct {v0}, Lcom/google/common/collect/S;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->cBj:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 196
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 197
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->ZE()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    .line 199
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->ZF()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 200
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->ZG()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 202
    iget-object v0, p1, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->ZF()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->aam()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 203
    iget-object v0, p1, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->ZG()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->aam()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 205
    iget v0, p1, Lcom/google/common/collect/MapMaker;->maximumSize:I

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    .line 206
    iget-wide v0, p1, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    .line 207
    iget-wide v0, p1, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    :goto_1
    iput-wide v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    .line 209
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->ZJ()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->ZI()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a(Lcom/google/common/collect/MapMakerInternalMap$Strength;ZZ)Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->cBh:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 210
    iget-object v0, p1, Lcom/google/common/collect/MapMaker;->ticker:Lcom/google/common/base/l;

    invoke-static {}, Lcom/google/common/base/l;->YO()Lcom/google/common/base/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/l;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/l;

    .line 212
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->Zf()Lcom/google/common/collect/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/Q;

    .line 213
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/Q;

    sget-object v1, Lcom/google/common/collect/GenericMapMaker$NullListener;->cAt:Lcom/google/common/collect/GenericMapMaker$NullListener;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->cBj:Ljava/util/Queue;

    :goto_2
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    .line 217
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->ZD()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 218
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->ZI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    move v1, v4

    move v2, v5

    .line 228
    :goto_3
    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    if-ge v1, v3, :cond_5

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->ZI()Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v3, v1, 0x2

    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    if-gt v3, v6, :cond_5

    .line 229
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 230
    shl-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 206
    :cond_2
    iget-wide v0, p1, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    goto :goto_0

    .line 207
    :cond_3
    iget-wide v2, p1, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    goto :goto_1

    .line 213
    :cond_4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_2

    .line 232
    :cond_5
    rsub-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->cBf:I

    .line 233
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->cBe:I

    .line 235
    new-array v2, v1, [Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iput-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->cBg:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 237
    div-int v2, v0, v1

    .line 238
    mul-int v3, v2, v1

    if-ge v3, v0, :cond_a

    .line 239
    add-int/lit8 v0, v2, 0x1

    .line 243
    :goto_4
    if-ge v4, v0, :cond_6

    .line 244
    shl-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 247
    :cond_6
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->ZI()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 249
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 250
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    rem-int v1, v2, v1

    .line 251
    :goto_5
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->cBg:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v2, v2

    if-ge v5, v2, :cond_9

    .line 252
    if-ne v5, v1, :cond_7

    .line 253
    add-int/lit8 v0, v0, -0x1

    .line 255
    :cond_7
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->cBg:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-direct {p0, v4, v0}, Lcom/google/common/collect/MapMakerInternalMap;->an(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v3

    aput-object v3, v2, v5

    .line 251
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 259
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->cBg:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v0, v0

    if-ge v5, v0, :cond_9

    .line 260
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->cBg:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    const/4 v1, -0x1

    invoke-direct {p0, v4, v1}, Lcom/google/common/collect/MapMakerInternalMap;->an(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    aput-object v1, v0, v5

    .line 259
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 264
    :cond_9
    return-void

    :cond_a
    move v0, v2

    goto :goto_4
.end method

.method static ZN()Lcom/google/common/collect/ar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ar",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 666
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->cBi:Lcom/google/common/collect/ar;

    return-object v0
.end method

.method static ZO()Lcom/google/common/collect/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 917
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->cBO:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    return-object v0
.end method

.method static ZP()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 952
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->cBj:Ljava/util/Queue;

    return-object v0
.end method

.method static a(Lcom/google/common/collect/af;Lcom/google/common/collect/af;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1979
    invoke-interface {p0, p1}, Lcom/google/common/collect/af;->f(Lcom/google/common/collect/af;)V

    .line 1980
    invoke-interface {p1, p0}, Lcom/google/common/collect/af;->g(Lcom/google/common/collect/af;)V

    .line 1981
    return-void
.end method

.method static a(Lcom/google/common/collect/af;J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    .line 1974
    invoke-interface {p0}, Lcom/google/common/collect/af;->Rs()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private an(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1937
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method private av(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->av(Ljava/lang/Object;)I

    move-result v0

    .line 1902
    shl-int/lit8 v1, v0, 0xf

    xor-int/lit16 v1, v1, -0x3283

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method static b(Lcom/google/common/collect/af;Lcom/google/common/collect/af;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2011
    invoke-interface {p0, p1}, Lcom/google/common/collect/af;->h(Lcom/google/common/collect/af;)V

    .line 2012
    invoke-interface {p1, p0}, Lcom/google/common/collect/af;->i(Lcom/google/common/collect/af;)V

    .line 2013
    return-void
.end method

.method static d(Lcom/google/common/collect/af;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1985
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->cBO:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    .line 1986
    invoke-interface {p0, v0}, Lcom/google/common/collect/af;->f(Lcom/google/common/collect/af;)V

    .line 1987
    invoke-interface {p0, v0}, Lcom/google/common/collect/af;->g(Lcom/google/common/collect/af;)V

    .line 1988
    return-void
.end method

.method static e(Lcom/google/common/collect/af;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2017
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->cBO:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    .line 2018
    invoke-interface {p0, v0}, Lcom/google/common/collect/af;->h(Lcom/google/common/collect/af;)V

    .line 2019
    invoke-interface {p0, v0}, Lcom/google/common/collect/af;->i(Lcom/google/common/collect/af;)V

    .line 2020
    return-void
.end method

.method private fo(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->cBg:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->cBf:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->cBe:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method final ZI()Z
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final ZJ()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 271
    iget-wide v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->ZK()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method final ZK()Z
    .locals 4

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final ZL()Z
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->cBU:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final ZM()Z
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->cBU:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final ZQ()V
    .locals 4

    .prologue
    .line 1999
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$RemovalNotification;

    if-eqz v0, :cond_0

    .line 2001
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/Q;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2002
    :catch_0
    move-exception v0

    .line 2003
    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->cuU:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2006
    :cond_0
    return-void
.end method

.method final a(Lcom/google/common/collect/af;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1912
    invoke-interface {p1}, Lcom/google/common/collect/af;->ZV()I

    move-result v0

    .line 1913
    invoke-direct {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->fo(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/af;I)Z

    .line 1914
    return-void
.end method

.method final a(Lcom/google/common/collect/ar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ar",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1906
    invoke-interface {p1}, Lcom/google/common/collect/ar;->ZR()Lcom/google/common/collect/af;

    move-result-object v0

    .line 1907
    invoke-interface {v0}, Lcom/google/common/collect/af;->ZV()I

    move-result v1

    .line 1908
    invoke-direct {p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->fo(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/af;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILcom/google/common/collect/ar;)Z

    .line 1909
    return-void
.end method

.method final b(Lcom/google/common/collect/af;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1946
    invoke-interface {p1}, Lcom/google/common/collect/af;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1957
    :cond_0
    :goto_0
    return-object v0

    .line 1949
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/af;->ZT()Lcom/google/common/collect/ar;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/ar;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1950
    if-eqz v1, :cond_0

    .line 1954
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->ZJ()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->c(Lcom/google/common/collect/af;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 1957
    goto :goto_0
.end method

.method final c(Lcom/google/common/collect/af;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/l;

    invoke-virtual {v0}, Lcom/google/common/base/l;->YN()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/af;J)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 3615
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->cBg:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3616
    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->clear()V

    .line 3615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3618
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3507
    if-nez p1, :cond_0

    .line 3508
    const/4 v0, 0x0

    .line 3511
    :goto_0
    return v0

    .line 3510
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->av(Ljava/lang/Object;)I

    move-result v0

    .line 3511
    invoke-direct {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->fo(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->g(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 14

    .prologue
    .line 3516
    if-nez p1, :cond_0

    .line 3517
    const/4 v0, 0x0

    .line 3550
    :goto_0
    return v0

    .line 3525
    :cond_0
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap;->cBg:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 3526
    const-wide/16 v4, -0x1

    .line 3527
    const/4 v0, 0x0

    move v6, v0

    move-wide v8, v4

    :goto_1
    const/4 v0, 0x3

    if-ge v6, v0, :cond_5

    .line 3528
    const-wide/16 v2, 0x0

    .line 3529
    array-length v10, v7

    const/4 v0, 0x0

    move-wide v4, v2

    move v2, v0

    :goto_2
    if-ge v2, v10, :cond_4

    aget-object v3, v7, v2

    .line 3532
    iget v0, v3, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 3534
    iget-object v11, v3, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3535
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 3536
    invoke-virtual {v11, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/af;

    :goto_4
    if-eqz v0, :cond_2

    .line 3537
    invoke-virtual {v3, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/af;)Ljava/lang/Object;

    move-result-object v12

    .line 3538
    if-eqz v12, :cond_1

    iget-object v13, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v13, p1, v12}, Lcom/google/common/base/Equivalence;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3539
    const/4 v0, 0x1

    goto :goto_0

    .line 3536
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/af;->ZU()Lcom/google/common/collect/af;

    move-result-object v0

    goto :goto_4

    .line 3535
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 3543
    :cond_3
    iget v0, v3, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v0, v0

    add-long/2addr v4, v0

    .line 3529
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 3545
    :cond_4
    cmp-long v0, v4, v8

    if-eqz v0, :cond_5

    .line 3527
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-wide v8, v4

    goto :goto_1

    .line 3550
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3640
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    .line 3641
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/V;

    invoke-direct {v0, p0}, Lcom/google/common/collect/V;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3475
    if-nez p1, :cond_0

    .line 3476
    const/4 v0, 0x0

    .line 3479
    :goto_0
    return-object v0

    .line 3478
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->av(Ljava/lang/Object;)I

    move-result v0

    .line 3479
    invoke-direct {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->fo(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3440
    .line 3441
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->cBg:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move v0, v1

    move-wide v2, v4

    .line 3442
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 3443
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v7, :cond_1

    .line 3460
    :cond_0
    :goto_1
    return v1

    .line 3446
    :cond_1
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 3442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3449
    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move v0, v1

    .line 3450
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 3451
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-nez v7, :cond_0

    .line 3454
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v8, v7

    sub-long/2addr v2, v8

    .line 3450
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3456
    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 3460
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3624
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    .line 3625
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ae;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3555
    invoke-static {p1}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3556
    invoke-static {p2}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3557
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->av(Ljava/lang/Object;)I

    move-result v0

    .line 3558
    invoke-direct {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->fo(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3571
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 3572
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3574
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3563
    invoke-static {p1}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3564
    invoke-static {p2}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3565
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->av(Ljava/lang/Object;)I

    move-result v0

    .line 3566
    invoke-direct {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->fo(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3578
    if-nez p1, :cond_0

    .line 3579
    const/4 v0, 0x0

    .line 3582
    :goto_0
    return-object v0

    .line 3581
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->av(Ljava/lang/Object;)I

    move-result v0

    .line 3582
    invoke-direct {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->fo(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->h(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3587
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3588
    :cond_0
    const/4 v0, 0x0

    .line 3591
    :goto_0
    return v0

    .line 3590
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->av(Ljava/lang/Object;)I

    move-result v0

    .line 3591
    invoke-direct {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->fo(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3607
    invoke-static {p1}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3608
    invoke-static {p2}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3609
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->av(Ljava/lang/Object;)I

    move-result v0

    .line 3610
    invoke-direct {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->fo(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 3596
    invoke-static {p1}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3597
    invoke-static {p3}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3598
    if-nez p2, :cond_0

    .line 3599
    const/4 v0, 0x0

    .line 3602
    :goto_0
    return v0

    .line 3601
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->av(Ljava/lang/Object;)I

    move-result v0

    .line 3602
    invoke-direct {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->fo(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 3465
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->cBg:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 3466
    const-wide/16 v2, 0x0

    .line 3467
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 3468
    aget-object v4, v1, v0

    iget v4, v4, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 3467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3470
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->bi(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3632
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    .line 3633
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/as;

    invoke-direct {v0, p0}, Lcom/google/common/collect/as;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 14

    .prologue
    .line 3938
    new-instance v1, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v5, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    iget-wide v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    iget-wide v8, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    iget v11, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    iget-object v12, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/Q;

    move-object v13, p0

    invoke-direct/range {v1 .. v13}, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;-><init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/Q;Ljava/util/concurrent/ConcurrentMap;)V

    return-object v1
.end method
