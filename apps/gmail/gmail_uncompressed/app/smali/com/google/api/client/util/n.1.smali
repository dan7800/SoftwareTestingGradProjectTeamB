.class final Lcom/google/api/client/util/n;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final cwV:Lcom/google/api/client/util/k;

.field final jr:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/api/client/util/n;->jr:Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/api/client/util/k;->a(Ljava/lang/Class;Z)Lcom/google/api/client/util/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/n;->cwV:Lcom/google/api/client/util/k;

    .line 45
    iget-object v0, p0, Lcom/google/api/client/util/n;->cwV:Lcom/google/api/client/util/k;

    invoke-virtual {v0}, Lcom/google/api/client/util/k;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/H;->cp(Z)V

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final Yq()Lcom/google/api/client/util/q;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/api/client/util/q;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/q;-><init>(Lcom/google/api/client/util/n;)V

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/api/client/util/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/client/util/n;->Yq()Lcom/google/api/client/util/q;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/google/api/client/util/n;->cwV:Lcom/google/api/client/util/k;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/api/client/util/k;->hw(Ljava/lang/String;)Lcom/google/api/client/util/t;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/api/client/util/n;->jr:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/api/client/util/t;->at(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 29
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/api/client/util/n;->cwV:Lcom/google/api/client/util/k;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/k;->hw(Ljava/lang/String;)Lcom/google/api/client/util/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no field of key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/client/util/H;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/api/client/util/n;->jr:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/t;->at(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/util/n;->jr:Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/api/client/util/t;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
