.class public final Lcom/google/common/collect/E;
.super Lcom/google/common/collect/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/z",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/google/common/collect/z;-><init>()V

    .line 484
    invoke-static {p1}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/E;->comparator:Ljava/util/Comparator;

    .line 485
    return-void
.end method


# virtual methods
.method public final ZB()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/common/collect/E;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/E;->cAy:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->a(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic Zy()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/google/common/collect/E;->ZB()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic aD(Ljava/lang/Object;)Lcom/google/common/collect/w;
    .locals 0

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    return-object p0
.end method

.method public final bridge synthetic aH(Ljava/lang/Object;)Lcom/google/common/collect/z;
    .locals 0

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    return-object p0
.end method

.method public final aJ(Ljava/lang/Object;)Lcom/google/common/collect/E;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/E",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 498
    invoke-super {p0, p1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    .line 499
    return-object p0
.end method

.method public final synthetic b(Ljava/lang/Iterable;)Lcom/google/common/collect/w;
    .locals 0

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/google/common/collect/z;->e(Ljava/lang/Iterable;)Lcom/google/common/collect/z;

    return-object p0
.end method

.method public final synthetic e([Ljava/lang/Object;)Lcom/google/common/collect/w;
    .locals 0

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/google/common/collect/z;->k([Ljava/lang/Object;)Lcom/google/common/collect/z;

    return-object p0
.end method

.method public final bridge synthetic e(Ljava/lang/Iterable;)Lcom/google/common/collect/z;
    .locals 0

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/google/common/collect/z;->e(Ljava/lang/Iterable;)Lcom/google/common/collect/z;

    return-object p0
.end method

.method public final bridge synthetic k([Ljava/lang/Object;)Lcom/google/common/collect/z;
    .locals 0

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/google/common/collect/z;->k([Ljava/lang/Object;)Lcom/google/common/collect/z;

    return-object p0
.end method

.method public final varargs l([Ljava/lang/Object;)Lcom/google/common/collect/E;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/E",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 511
    invoke-super {p0, p1}, Lcom/google/common/collect/z;->k([Ljava/lang/Object;)Lcom/google/common/collect/z;

    .line 512
    return-object p0
.end method
