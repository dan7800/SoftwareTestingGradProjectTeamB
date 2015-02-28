.class public abstract Lcom/google/api/client/googleapis/a/a/b;
.super Lcom/google/api/client/googleapis/a/b;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/A;Lcom/google/api/client/json/d;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/v;)V
    .locals 6

    .prologue
    .line 74
    new-instance v0, Lcom/google/api/client/json/g;

    invoke-direct {v0, p2}, Lcom/google/api/client/json/g;-><init>(Lcom/google/api/client/json/d;)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/g;->F(Ljava/util/Collection;)Lcom/google/api/client/json/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/json/g;->Ye()Lcom/google/api/client/json/f;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/googleapis/a/b;-><init>(Lcom/google/api/client/http/A;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/util/F;Lcom/google/api/client/http/v;)V

    .line 78
    return-void
.end method


# virtual methods
.method public synthetic gW(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/b;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/a/a/b;->gZ(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic gX(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/b;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/a/a/b;->ha(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic gY(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/b;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/a/a/b;->hb(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public gZ(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/a/b;
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/a/b;->gW(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/a/a/b;

    return-object v0
.end method

.method public ha(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/a/b;
    .locals 1

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/a/b;->gX(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/a/a/b;

    return-object v0
.end method

.method public hb(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/a/b;
    .locals 1

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/a/b;->gY(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/a/a/b;

    return-object v0
.end method
