.class final Lcom/google/api/client/util/q;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
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


# direct methods
.method constructor <init>(Lcom/google/api/client/util/n;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/api/client/util/q;->cza:Lcom/google/api/client/util/n;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final Yr()Lcom/google/api/client/util/p;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/google/api/client/util/p;

    iget-object v1, p0, Lcom/google/api/client/util/q;->cza:Lcom/google/api/client/util/n;

    invoke-direct {v0, v1}, Lcom/google/api/client/util/p;-><init>(Lcom/google/api/client/util/n;)V

    return-object v0
.end method

.method public final clear()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/api/client/util/q;->cza:Lcom/google/api/client/util/n;

    iget-object v0, v0, Lcom/google/api/client/util/n;->cwV:Lcom/google/api/client/util/k;

    iget-object v0, v0, Lcom/google/api/client/util/k;->cyJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    iget-object v2, p0, Lcom/google/api/client/util/q;->cza:Lcom/google/api/client/util/n;

    iget-object v2, v2, Lcom/google/api/client/util/n;->cwV:Lcom/google/api/client/util/k;

    invoke-virtual {v2, v0}, Lcom/google/api/client/util/k;->hw(Ljava/lang/String;)Lcom/google/api/client/util/t;

    move-result-object v0

    iget-object v2, p0, Lcom/google/api/client/util/q;->cza:Lcom/google/api/client/util/n;

    iget-object v2, v2, Lcom/google/api/client/util/n;->jr:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/api/client/util/t;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public final isEmpty()Z
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/api/client/util/q;->cza:Lcom/google/api/client/util/n;

    iget-object v0, v0, Lcom/google/api/client/util/n;->cwV:Lcom/google/api/client/util/k;

    iget-object v0, v0, Lcom/google/api/client/util/k;->cyJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/google/api/client/util/q;->cza:Lcom/google/api/client/util/n;

    iget-object v2, v2, Lcom/google/api/client/util/n;->cwV:Lcom/google/api/client/util/k;

    invoke-virtual {v2, v0}, Lcom/google/api/client/util/k;->hw(Ljava/lang/String;)Lcom/google/api/client/util/t;

    move-result-object v0

    iget-object v2, p0, Lcom/google/api/client/util/q;->cza:Lcom/google/api/client/util/n;

    iget-object v2, v2, Lcom/google/api/client/util/n;->jr:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/api/client/util/t;->at(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/api/client/util/q;->Yr()Lcom/google/api/client/util/p;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 4

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/google/api/client/util/q;->cza:Lcom/google/api/client/util/n;

    iget-object v1, v1, Lcom/google/api/client/util/n;->cwV:Lcom/google/api/client/util/k;

    iget-object v1, v1, Lcom/google/api/client/util/k;->cyJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    iget-object v3, p0, Lcom/google/api/client/util/q;->cza:Lcom/google/api/client/util/n;

    iget-object v3, v3, Lcom/google/api/client/util/n;->cwV:Lcom/google/api/client/util/k;

    invoke-virtual {v3, v0}, Lcom/google/api/client/util/k;->hw(Ljava/lang/String;)Lcom/google/api/client/util/t;

    move-result-object v0

    iget-object v3, p0, Lcom/google/api/client/util/q;->cza:Lcom/google/api/client/util/n;

    iget-object v3, v3, Lcom/google/api/client/util/n;->jr:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/google/api/client/util/t;->at(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
