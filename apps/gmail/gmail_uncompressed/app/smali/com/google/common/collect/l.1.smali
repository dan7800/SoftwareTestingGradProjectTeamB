.class public final Lcom/google/common/collect/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final cAm:Lcom/google/common/base/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 344
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/c;->hM(Ljava/lang/String;)Lcom/google/common/base/c;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/l;->cAm:Lcom/google/common/base/c;

    return-void
.end method

.method static G(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 318
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/l;->fh(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 320
    sget-object v1, Lcom/google/common/collect/l;->cAm:Lcom/google/common/base/c;

    new-instance v2, Lcom/google/common/collect/m;

    invoke-direct {v2, p0}, Lcom/google/common/collect/m;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/G;

    invoke-direct {v3, p0, v2}, Lcom/google/common/collect/G;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/b;)V

    invoke-virtual {v1, v0, v3}, Lcom/google/common/base/c;->b(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 326
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 341
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method static b(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {p0}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 307
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static fh(I)Ljava/lang/StringBuilder;
    .locals 6

    .prologue
    .line 333
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "size must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/i;->c(ZLjava/lang/Object;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v2, p0

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x40000000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0

    .line 333
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
