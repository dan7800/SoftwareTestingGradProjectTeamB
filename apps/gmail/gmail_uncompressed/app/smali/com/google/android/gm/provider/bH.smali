.class public final Lcom/google/android/gm/provider/bH;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ayV:Ljava/lang/String;

.field private final bdv:Lcom/google/android/gm/provider/ae;

.field public bnp:Z

.field public bnq:Z

.field public bnr:J

.field public bns:J

.field public bnt:Ljava/lang/String;

.field public enabled:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/ae;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/bH;->enabled:Z

    .line 34
    iput-object p1, p0, Lcom/google/android/gm/provider/bH;->bdv:Lcom/google/android/gm/provider/ae;

    .line 35
    return-void
.end method


# virtual methods
.method public final HU()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gm/provider/bH;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v1, "bx_ve"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/ae;->eJ(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/bH;->enabled:Z

    .line 39
    iget-object v0, p0, Lcom/google/android/gm/provider/bH;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v1, "sx_vs"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/ae;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/bH;->ayV:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/google/android/gm/provider/bH;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v1, "bx_vc"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/ae;->eJ(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/bH;->bnp:Z

    .line 41
    iget-object v0, p0, Lcom/google/android/gm/provider/bH;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v1, "bx_vd"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/ae;->eJ(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/bH;->bnq:Z

    .line 42
    iget-object v0, p0, Lcom/google/android/gm/provider/bH;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v1, "lx_vst"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/ae;->eL(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/bH;->bnr:J

    .line 43
    iget-object v0, p0, Lcom/google/android/gm/provider/bH;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v1, "lx_vend"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/ae;->eL(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/bH;->bns:J

    .line 44
    iget-object v0, p0, Lcom/google/android/gm/provider/bH;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v1, "sx_vm"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/ae;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/bH;->bnt:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public final a(Lcom/google/android/gm/provider/bI;)V
    .locals 4

    .prologue
    .line 70
    invoke-static {p1}, Lcom/google/android/gm/provider/bI;->c(Lcom/google/android/gm/provider/bI;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "sx_vs"

    iget-object v0, p0, Lcom/google/android/gm/provider/bH;->ayV:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/bH;->ayV:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Lcom/google/android/gm/provider/bI;->c(Lcom/google/android/gm/provider/bI;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "sx_vm"

    iget-object v0, p0, Lcom/google/android/gm/provider/bH;->bnt:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/provider/bH;->bnt:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p1}, Lcom/google/android/gm/provider/bI;->c(Lcom/google/android/gm/provider/bI;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "bx_vc"

    iget-boolean v0, p0, Lcom/google/android/gm/provider/bH;->bnp:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p1}, Lcom/google/android/gm/provider/bI;->c(Lcom/google/android/gm/provider/bI;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "bx_vd"

    iget-boolean v0, p0, Lcom/google/android/gm/provider/bH;->bnq:Z

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_3
    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {p1}, Lcom/google/android/gm/provider/bI;->c(Lcom/google/android/gm/provider/bI;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "lx_vst"

    iget-wide v2, p0, Lcom/google/android/gm/provider/bH;->bnr:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {p1}, Lcom/google/android/gm/provider/bI;->c(Lcom/google/android/gm/provider/bI;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "lx_vend"

    iget-wide v2, p0, Lcom/google/android/gm/provider/bH;->bns:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p1}, Lcom/google/android/gm/provider/bI;->c(Lcom/google/android/gm/provider/bI;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "bx_ve"

    iget-boolean v0, p0, Lcom/google/android/gm/provider/bH;->enabled:Z

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_4
    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/google/android/gm/provider/bH;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-static {p1}, Lcom/google/android/gm/provider/bI;->c(Lcom/google/android/gm/provider/bI;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/ae;->l(Ljava/util/Map;)V

    .line 78
    return-void

    .line 70
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 71
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 72
    :cond_2
    const-string v0, "0"

    goto :goto_2

    .line 73
    :cond_3
    const-string v0, "0"

    goto :goto_3

    .line 76
    :cond_4
    const-string v0, "0"

    goto :goto_4
.end method

.method public final b(Lcom/google/android/gm/provider/bI;)V
    .locals 5

    .prologue
    .line 93
    invoke-static {p1}, Lcom/google/android/gm/provider/bI;->c(Lcom/google/android/gm/provider/bI;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

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

    .line 94
    iget-object v3, p0, Lcom/google/android/gm/provider/bH;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v0, v4}, Lcom/google/android/gm/provider/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {p1}, Lcom/google/android/gm/provider/bI;->c(Lcom/google/android/gm/provider/bI;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 98
    return-void
.end method
