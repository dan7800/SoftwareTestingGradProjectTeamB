.class public Lcom/google/android/gm/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aYu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/V;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/U;->aYu:Ljava/util/Map;

    .line 27
    return-void
.end method

.method private dy(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gm/U;->aYu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final CW()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gm/U;->aYu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final CX()Lcom/google/android/gm/U;
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/gm/U;->CY()Lcom/google/android/gm/U;

    move-result-object v1

    .line 99
    iget-object v0, p0, Lcom/google/android/gm/U;->aYu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/V;

    .line 102
    iget-object v3, v0, Lcom/google/android/gm/V;->aYm:Lcom/google/android/gm/provider/T;

    iget-boolean v0, v0, Lcom/google/android/gm/V;->aKh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gm/U;->a(Lcom/google/android/gm/provider/T;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 104
    :cond_1
    return-object v1
.end method

.method protected CY()Lcom/google/android/gm/U;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/google/android/gm/U;

    invoke-direct {v0}, Lcom/google/android/gm/U;-><init>()V

    return-object v0
.end method

.method public final CZ()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/V;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-object v0, p0, Lcom/google/android/gm/U;->aYu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_0
    return-object v1
.end method

.method public Da()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/android/gm/provider/T;Z)V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/gm/V;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gm/V;-><init>(Lcom/google/android/gm/U;Lcom/google/android/gm/provider/T;ZB)V

    .line 38
    iget-object v1, p0, Lcom/google/android/gm/U;->aYu:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public final dA(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/gm/U;->dy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/google/android/gm/U;->aYu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/V;

    .line 80
    iget-boolean v0, v0, Lcom/google/android/gm/V;->aKh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 80
    goto :goto_0

    :cond_1
    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public final dz(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/gm/U;->dy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/android/gm/U;->aYu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/V;

    .line 67
    iget-boolean v0, v0, Lcom/google/android/gm/V;->aKh:Z

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/U;->aYu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method
