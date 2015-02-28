.class public Lcom/google/common/collect/z;
.super Lcom/google/common/collect/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/w",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final cAy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/google/common/collect/w;-><init>()V

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/z;->cAy:Ljava/util/ArrayList;

    .line 559
    return-void
.end method


# virtual methods
.method public Zy()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/common/collect/z;->cAy:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->L(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aD(Ljava/lang/Object;)Lcom/google/common/collect/w;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    return-object v0
.end method

.method public aH(Ljava/lang/Object;)Lcom/google/common/collect/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/z",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/common/collect/z;->cAy:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    return-object p0
.end method

.method public synthetic b(Ljava/lang/Iterable;)Lcom/google/common/collect/w;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lcom/google/common/collect/z;->e(Ljava/lang/Iterable;)Lcom/google/common/collect/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e([Ljava/lang/Object;)Lcom/google/common/collect/w;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lcom/google/common/collect/z;->k([Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Iterable;)Lcom/google/common/collect/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/z",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 600
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 601
    check-cast v0, Ljava/util/Collection;

    .line 602
    iget-object v1, p0, Lcom/google/common/collect/z;->cAy:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/common/collect/z;->cAy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 604
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/w;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/w;

    .line 605
    return-object p0
.end method

.method public varargs k([Ljava/lang/Object;)Lcom/google/common/collect/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/z",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/common/collect/z;->cAy:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/z;->cAy:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 586
    invoke-super {p0, p1}, Lcom/google/common/collect/w;->e([Ljava/lang/Object;)Lcom/google/common/collect/w;

    .line 587
    return-object p0
.end method
