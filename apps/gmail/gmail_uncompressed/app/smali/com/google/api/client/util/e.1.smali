.class public final Lcom/google/api/client/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cyw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/util/f;",
            ">;"
        }
    .end annotation
.end field

.field private final cyx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/google/api/client/util/f;",
            ">;"
        }
    .end annotation
.end field

.field private final cyy:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Lcom/google/api/client/util/a;->Yk()Lcom/google/api/client/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/e;->cyw:Ljava/util/Map;

    .line 83
    invoke-static {}, Lcom/google/api/client/util/a;->Yk()Lcom/google/api/client/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/e;->cyx:Ljava/util/Map;

    .line 93
    iput-object p1, p0, Lcom/google/api/client/util/e;->cyy:Ljava/lang/Object;

    .line 94
    return-void
.end method


# virtual methods
.method public final Ym()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/api/client/util/e;->cyw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    iget-object v1, p0, Lcom/google/api/client/util/e;->cyy:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/f;

    invoke-virtual {v0}, Lcom/google/api/client/util/f;->Yn()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/util/e;->cyx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/google/api/client/util/e;->cyy:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/f;

    invoke-virtual {v0}, Lcom/google/api/client/util/f;->Yn()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/google/api/client/util/t;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 109
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/api/client/util/e;->cyx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/f;

    .line 121
    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/google/api/client/util/f;

    invoke-direct {v0, p2}, Lcom/google/api/client/util/f;-><init>(Ljava/lang/Class;)V

    .line 123
    iget-object v1, p0, Lcom/google/api/client/util/e;->cyx:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    iget-object v1, v0, Lcom/google/api/client/util/f;->cyz:Ljava/lang/Class;

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/api/client/util/H;->cp(Z)V

    iget-object v0, v0, Lcom/google/api/client/util/f;->cyA:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-void

    .line 125
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
