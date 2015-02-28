.class public final Lcom/google/api/client/json/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/util/F;


# instance fields
.field private final cxZ:Lcom/google/api/client/json/d;

.field private final cyb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/client/json/g;)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget-object v0, p1, Lcom/google/api/client/json/g;->cxZ:Lcom/google/api/client/json/d;

    iput-object v0, p0, Lcom/google/api/client/json/f;->cxZ:Lcom/google/api/client/json/d;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/google/api/client/json/g;->cyc:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/api/client/json/f;->cyb:Ljava/util/Set;

    .line 76
    return-void
.end method


# virtual methods
.method public final Xg()Lcom/google/api/client/json/d;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/client/json/f;->cxZ:Lcom/google/api/client/json/d;

    return-object v0
.end method

.method public final Yd()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/api/client/json/f;->cyb:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    iget-object v2, p0, Lcom/google/api/client/json/f;->cxZ:Lcom/google/api/client/json/d;

    invoke-virtual {v2, p1, p2}, Lcom/google/api/client/json/d;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/api/client/json/f;->cyb:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/google/api/client/json/f;->cyb:Ljava/util/Set;

    invoke-virtual {v2, v3}, Lcom/google/api/client/json/h;->r(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/api/client/json/h;->WG()Lcom/google/api/client/json/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/api/client/json/JsonToken;->cyi:Lcom/google/api/client/json/JsonToken;

    if-eq v3, v4, :cond_1

    :goto_0
    const-string v1, "wrapper key(s) not found: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/api/client/json/f;->cyb:Ljava/util/Set;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/api/client/a/a/a/a/a/a;->a(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v2, p3}, Lcom/google/api/client/json/h;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/api/client/json/h;->close()V

    throw v0
.end method
