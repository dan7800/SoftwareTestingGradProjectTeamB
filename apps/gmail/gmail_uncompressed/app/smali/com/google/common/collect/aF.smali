.class final Lcom/google/common/collect/aF;
.super Lcom/google/common/collect/aK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/aK",
        "<TE;>;"
    }
.end annotation


# instance fields
.field cCo:Z

.field final synthetic cCp:I

.field final synthetic cCq:Lcom/google/common/collect/SingletonImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/SingletonImmutableList;I)V
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/common/collect/aF;->cCq:Lcom/google/common/collect/SingletonImmutableList;

    iput p2, p0, Lcom/google/common/collect/aF;->cCp:I

    invoke-direct {p0}, Lcom/google/common/collect/aK;-><init>()V

    .line 66
    iget v0, p0, Lcom/google/common/collect/aF;->cCp:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/common/collect/aF;->cCo:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/common/collect/aF;->cCo:Z

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/common/collect/aF;->cCo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/common/collect/aF;->cCo:Z

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/aF;->cCo:Z

    .line 81
    iget-object v0, p0, Lcom/google/common/collect/aF;->cCq:Lcom/google/common/collect/SingletonImmutableList;

    iget-object v0, v0, Lcom/google/common/collect/SingletonImmutableList;->cCn:Ljava/lang/Object;

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/common/collect/aF;->cCo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/common/collect/aF;->cCo:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 92
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/aF;->cCo:Z

    .line 93
    iget-object v0, p0, Lcom/google/common/collect/aF;->cCq:Lcom/google/common/collect/SingletonImmutableList;

    iget-object v0, v0, Lcom/google/common/collect/SingletonImmutableList;->cCn:Ljava/lang/Object;

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/common/collect/aF;->cCo:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
