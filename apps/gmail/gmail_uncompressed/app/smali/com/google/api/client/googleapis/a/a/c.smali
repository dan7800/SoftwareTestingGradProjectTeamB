.class public abstract Lcom/google/api/client/googleapis/a/a/c;
.super Lcom/google/api/client/googleapis/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/googleapis/a/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final cwC:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/googleapis/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/a/a/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 57
    if-nez p4, :cond_0

    move-object v4, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/googleapis/a/c;-><init>(Lcom/google/api/client/googleapis/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/k;Ljava/lang/Class;)V

    .line 61
    iput-object p4, p0, Lcom/google/api/client/googleapis/a/a/c;->cwC:Ljava/lang/Object;

    .line 62
    return-void

    .line 57
    :cond_0
    new-instance v1, Lcom/google/api/client/http/b/a;

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/a/a/a;->Xg()Lcom/google/api/client/json/d;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lcom/google/api/client/http/b/a;-><init>(Lcom/google/api/client/json/d;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/a/a/a;->Xf()Lcom/google/api/client/json/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/json/f;->Yd()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/api/client/http/b/a;->hu(Ljava/lang/String;)Lcom/google/api/client/http/b/a;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v0, "data"

    goto :goto_1
.end method


# virtual methods
.method public synthetic Xc()Lcom/google/api/client/googleapis/a/a;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/a/a/c;->Xh()Lcom/google/api/client/googleapis/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public Xh()Lcom/google/api/client/googleapis/a/a/a;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/api/client/googleapis/a/c;->Xc()Lcom/google/api/client/googleapis/a/a;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/a/a/a;

    return-object v0
.end method

.method protected final synthetic a(Lcom/google/api/client/http/w;)Ljava/io/IOException;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/a/a/c;->Xh()Lcom/google/api/client/googleapis/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/a/a/a;->Xg()Lcom/google/api/client/json/d;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->a(Lcom/google/api/client/json/d;Lcom/google/api/client/http/w;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/a/a/c;->l(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic k(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/a/c;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/a/a/c;->l(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/a/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/googleapis/a/a/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lcom/google/api/client/googleapis/a/c;->k(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/a/c;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/a/a/c;

    return-object v0
.end method
