.class final Lcom/google/common/collect/aH;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    .line 50
    check-cast p1, Ljava/util/SortedSet;

    .line 51
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/google/common/collect/Ordering;->aaq()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 60
    :cond_0
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 55
    :cond_1
    instance-of v0, p1, Lcom/google/common/collect/aG;

    if-eqz v0, :cond_2

    .line 56
    check-cast p1, Lcom/google/common/collect/aG;

    invoke-interface {p1}, Lcom/google/common/collect/aG;->comparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
