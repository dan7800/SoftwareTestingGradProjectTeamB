.class public abstract Lcom/google/common/collect/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    return-void
.end method


# virtual methods
.method public abstract aD(Ljava/lang/Object;)Lcom/google/common/collect/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/w",
            "<TE;>;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/Iterable;)Lcom/google/common/collect/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/w",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 323
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 324
    invoke-virtual {p0, v1}, Lcom/google/common/collect/w;->aD(Ljava/lang/Object;)Lcom/google/common/collect/w;

    goto :goto_0

    .line 326
    :cond_0
    return-object p0
.end method

.method public varargs e([Ljava/lang/Object;)Lcom/google/common/collect/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/w",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 304
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 305
    invoke-virtual {p0, v2}, Lcom/google/common/collect/w;->aD(Ljava/lang/Object;)Lcom/google/common/collect/w;

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    return-object p0
.end method
