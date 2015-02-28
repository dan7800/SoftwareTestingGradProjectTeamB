.class public final Lcom/google/common/collect/D;
.super Lcom/google/common/collect/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
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
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/google/common/collect/y;-><init>()V

    .line 359
    invoke-static {p1}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/D;->comparator:Ljava/util/Comparator;

    .line 360
    return-void
.end method

.method private u(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/D",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/common/collect/D;->cAz:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    return-object p0
.end method


# virtual methods
.method public final synthetic Zo()Lcom/google/common/collect/ImmutableMap;
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/common/collect/D;->cAz:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/D;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->a(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/google/common/collect/D;->cAz:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/D;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->b(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v1, p0, Lcom/google/common/collect/D;->cAz:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/D;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final synthetic p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/D;->u(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/D;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic p(Ljava/util/Map;)Lcom/google/common/collect/y;
    .locals 3

    .prologue
    .line 351
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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/google/common/collect/D;->u(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/D;

    goto :goto_0

    :cond_0
    return-object p0
.end method
