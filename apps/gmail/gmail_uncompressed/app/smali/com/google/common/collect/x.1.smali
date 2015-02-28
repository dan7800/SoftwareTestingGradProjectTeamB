.class public final Lcom/google/common/collect/x;
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
.field private final cAy:Ljava/util/ArrayList;
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
    .line 561
    invoke-direct {p0}, Lcom/google/common/collect/w;-><init>()V

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/x;->cAy:Ljava/util/ArrayList;

    .line 561
    return-void
.end method


# virtual methods
.method public final Zt()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/common/collect/x;->cAy:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic aD(Ljava/lang/Object;)Lcom/google/common/collect/w;
    .locals 1

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Lcom/google/common/collect/x;->aF(Ljava/lang/Object;)Lcom/google/common/collect/x;

    move-result-object v0

    return-object v0
.end method

.method public final aF(Ljava/lang/Object;)Lcom/google/common/collect/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/common/collect/x;->cAy:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    return-object p0
.end method

.method public final synthetic b(Ljava/lang/Iterable;)Lcom/google/common/collect/w;
    .locals 1

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Lcom/google/common/collect/x;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/x;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Iterable;)Lcom/google/common/collect/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 584
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 585
    check-cast v0, Ljava/util/Collection;

    .line 586
    iget-object v1, p0, Lcom/google/common/collect/x;->cAy:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/common/collect/x;->cAy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 588
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/w;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/w;

    .line 589
    return-object p0
.end method

.method public final synthetic e([Ljava/lang/Object;)Lcom/google/common/collect/w;
    .locals 1

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Lcom/google/common/collect/x;->h([Ljava/lang/Object;)Lcom/google/common/collect/x;

    move-result-object v0

    return-object v0
.end method

.method public final varargs h([Ljava/lang/Object;)Lcom/google/common/collect/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/common/collect/x;->cAy:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/x;->cAy:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 602
    invoke-super {p0, p1}, Lcom/google/common/collect/w;->e([Ljava/lang/Object;)Lcom/google/common/collect/w;

    .line 603
    return-object p0
.end method
