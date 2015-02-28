.class final Lcom/google/api/client/util/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic cza:Lcom/google/api/client/util/n;

.field private czb:I

.field private czc:Lcom/google/api/client/util/t;

.field private czd:Ljava/lang/Object;

.field private cze:Z

.field private czf:Z

.field private czg:Lcom/google/api/client/util/t;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/n;)V
    .locals 1

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/api/client/util/p;->cza:Lcom/google/api/client/util/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/util/p;->czb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 150
    iget-boolean v0, p0, Lcom/google/api/client/util/p;->czf:Z

    if-nez v0, :cond_0

    .line 151
    iput-boolean v1, p0, Lcom/google/api/client/util/p;->czf:Z

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/util/p;->czd:Ljava/lang/Object;

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/google/api/client/util/p;->czd:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/api/client/util/p;->czb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/client/util/p;->czb:I

    iget-object v2, p0, Lcom/google/api/client/util/p;->cza:Lcom/google/api/client/util/n;

    iget-object v2, v2, Lcom/google/api/client/util/n;->cwV:Lcom/google/api/client/util/k;

    iget-object v2, v2, Lcom/google/api/client/util/k;->cyJ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/api/client/util/p;->cza:Lcom/google/api/client/util/n;

    iget-object v2, v0, Lcom/google/api/client/util/n;->cwV:Lcom/google/api/client/util/k;

    iget-object v0, p0, Lcom/google/api/client/util/p;->cza:Lcom/google/api/client/util/n;

    iget-object v0, v0, Lcom/google/api/client/util/n;->cwV:Lcom/google/api/client/util/k;

    iget-object v0, v0, Lcom/google/api/client/util/k;->cyJ:Ljava/util/List;

    iget v3, p0, Lcom/google/api/client/util/p;->czb:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/api/client/util/k;->hw(Ljava/lang/String;)Lcom/google/api/client/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/p;->czc:Lcom/google/api/client/util/t;

    .line 155
    iget-object v0, p0, Lcom/google/api/client/util/p;->czc:Lcom/google/api/client/util/t;

    iget-object v2, p0, Lcom/google/api/client/util/p;->cza:Lcom/google/api/client/util/n;

    iget-object v2, v2, Lcom/google/api/client/util/n;->jr:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/api/client/util/t;->at(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/p;->czd:Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/util/p;->czd:Ljava/lang/Object;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/google/api/client/util/p;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/util/p;->czc:Lcom/google/api/client/util/t;

    iput-object v0, p0, Lcom/google/api/client/util/p;->czg:Lcom/google/api/client/util/t;

    iget-object v0, p0, Lcom/google/api/client/util/p;->czd:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/api/client/util/p;->czf:Z

    iput-boolean v1, p0, Lcom/google/api/client/util/p;->cze:Z

    iput-object v2, p0, Lcom/google/api/client/util/p;->czc:Lcom/google/api/client/util/t;

    iput-object v2, p0, Lcom/google/api/client/util/p;->czd:Ljava/lang/Object;

    new-instance v1, Lcom/google/api/client/util/o;

    iget-object v2, p0, Lcom/google/api/client/util/p;->cza:Lcom/google/api/client/util/n;

    iget-object v3, p0, Lcom/google/api/client/util/p;->czg:Lcom/google/api/client/util/t;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/api/client/util/o;-><init>(Lcom/google/api/client/util/n;Lcom/google/api/client/util/t;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final remove()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 175
    iget-object v0, p0, Lcom/google/api/client/util/p;->czg:Lcom/google/api/client/util/t;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/api/client/util/p;->cze:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/H;->cq(Z)V

    .line 176
    iput-boolean v1, p0, Lcom/google/api/client/util/p;->cze:Z

    .line 177
    iget-object v0, p0, Lcom/google/api/client/util/p;->czg:Lcom/google/api/client/util/t;

    iget-object v1, p0, Lcom/google/api/client/util/p;->cza:Lcom/google/api/client/util/n;

    iget-object v1, v1, Lcom/google/api/client/util/n;->jr:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/t;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    return-void

    .line 175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
