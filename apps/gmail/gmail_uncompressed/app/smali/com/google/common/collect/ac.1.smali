.class abstract Lcom/google/common/collect/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cBH:I

.field cBI:I

.field cBJ:Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field cBK:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field cBL:Lcom/google/common/collect/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/af",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field cBM:Lcom/google/common/collect/ay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>.com/google/common/collect/ay;"
        }
    .end annotation
.end field

.field cBN:Lcom/google/common/collect/ay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>.com/google/common/collect/ay;"
        }
    .end annotation
.end field

.field final synthetic cBz:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 1

    .prologue
    .line 3656
    iput-object p1, p0, Lcom/google/common/collect/ac;->cBz:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3657
    iget-object v0, p1, Lcom/google/common/collect/MapMakerInternalMap;->cBg:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ac;->cBH:I

    .line 3658
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ac;->cBI:I

    .line 3659
    invoke-direct {p0}, Lcom/google/common/collect/ac;->advance()V

    .line 3660
    return-void
.end method

.method private aab()Z
    .locals 1

    .prologue
    .line 3689
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBL:Lcom/google/common/collect/af;

    if-eqz v0, :cond_1

    .line 3690
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBL:Lcom/google/common/collect/af;

    invoke-interface {v0}, Lcom/google/common/collect/af;->ZU()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ac;->cBL:Lcom/google/common/collect/af;

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBL:Lcom/google/common/collect/af;

    if-eqz v0, :cond_1

    .line 3691
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBL:Lcom/google/common/collect/af;

    invoke-direct {p0, v0}, Lcom/google/common/collect/ac;->j(Lcom/google/common/collect/af;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3692
    const/4 v0, 0x1

    .line 3696
    :goto_1
    return v0

    .line 3690
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBL:Lcom/google/common/collect/af;

    invoke-interface {v0}, Lcom/google/common/collect/af;->ZU()Lcom/google/common/collect/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ac;->cBL:Lcom/google/common/collect/af;

    goto :goto_0

    .line 3696
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private aac()Z
    .locals 3

    .prologue
    .line 3703
    :cond_0
    iget v0, p0, Lcom/google/common/collect/ac;->cBI:I

    if-ltz v0, :cond_2

    .line 3704
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBK:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/collect/ac;->cBI:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/ac;->cBI:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/af;

    iput-object v0, p0, Lcom/google/common/collect/ac;->cBL:Lcom/google/common/collect/af;

    if-eqz v0, :cond_0

    .line 3705
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBL:Lcom/google/common/collect/af;

    invoke-direct {p0, v0}, Lcom/google/common/collect/ac;->j(Lcom/google/common/collect/af;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/common/collect/ac;->aab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3706
    :cond_1
    const/4 v0, 0x1

    .line 3710
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private advance()V
    .locals 3

    .prologue
    .line 3663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/ac;->cBM:Lcom/google/common/collect/ay;

    .line 3665
    invoke-direct {p0}, Lcom/google/common/collect/ac;->aab()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3683
    :cond_0
    :goto_0
    return-void

    .line 3669
    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/ac;->aac()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3673
    :cond_2
    iget v0, p0, Lcom/google/common/collect/ac;->cBH:I

    if-ltz v0, :cond_0

    .line 3674
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBz:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->cBg:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/google/common/collect/ac;->cBH:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/ac;->cBH:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/collect/ac;->cBJ:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 3675
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBJ:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_2

    .line 3676
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBJ:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/ac;->cBK:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3677
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBK:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ac;->cBI:I

    .line 3678
    invoke-direct {p0}, Lcom/google/common/collect/ac;->aac()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private j(Lcom/google/common/collect/af;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/af",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3719
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/af;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 3720
    iget-object v1, p0, Lcom/google/common/collect/ac;->cBz:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MapMakerInternalMap;->b(Lcom/google/common/collect/af;)Ljava/lang/Object;

    move-result-object v1

    .line 3721
    if-eqz v1, :cond_0

    .line 3722
    new-instance v2, Lcom/google/common/collect/ay;

    iget-object v3, p0, Lcom/google/common/collect/ac;->cBz:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/common/collect/ay;-><init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/common/collect/ac;->cBM:Lcom/google/common/collect/ay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3723
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBJ:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->aaj()V

    const/4 v0, 0x1

    .line 3726
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBJ:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->aaj()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/collect/ac;->cBJ:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->aaj()V

    throw v0
.end method


# virtual methods
.method final aad()Lcom/google/common/collect/ay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>.com/google/common/collect/ay;"
        }
    .end annotation

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBM:Lcom/google/common/collect/ay;

    if-nez v0, :cond_0

    .line 3739
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3741
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBM:Lcom/google/common/collect/ay;

    iput-object v0, p0, Lcom/google/common/collect/ac;->cBN:Lcom/google/common/collect/ay;

    .line 3742
    invoke-direct {p0}, Lcom/google/common/collect/ac;->advance()V

    .line 3743
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBN:Lcom/google/common/collect/ay;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 3734
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBM:Lcom/google/common/collect/ay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3747
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBN:Lcom/google/common/collect/ay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/i;->cq(Z)V

    .line 3748
    iget-object v0, p0, Lcom/google/common/collect/ac;->cBz:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lcom/google/common/collect/ac;->cBN:Lcom/google/common/collect/ay;

    invoke-virtual {v1}, Lcom/google/common/collect/ay;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/ac;->cBN:Lcom/google/common/collect/ay;

    .line 3750
    return-void

    .line 3747
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
