.class public final Lcom/google/api/a/a/d;
.super Lcom/google/api/client/googleapis/a/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/A;Lcom/google/api/client/json/d;Lcom/google/api/client/http/v;)V
    .locals 6

    .prologue
    .line 12769
    const-string v3, "https://www.googleapis.com/"

    const-string v4, "drive/v2internal/"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/googleapis/a/a/b;-><init>(Lcom/google/api/client/http/A;Lcom/google/api/client/json/d;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/v;)V

    .line 12776
    return-void
.end method

.method private hD(Ljava/lang/String;)Lcom/google/api/a/a/d;
    .locals 1

    .prologue
    .line 12786
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/a/a/b;->gZ(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/d;

    return-object v0
.end method

.method private hE(Ljava/lang/String;)Lcom/google/api/a/a/d;
    .locals 1

    .prologue
    .line 12791
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/a/a/b;->ha(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/d;

    return-object v0
.end method


# virtual methods
.method public final YD()Lcom/google/api/a/a/a;
    .locals 1

    .prologue
    .line 12781
    new-instance v0, Lcom/google/api/a/a/a;

    invoke-direct {v0, p0}, Lcom/google/api/a/a/a;-><init>(Lcom/google/api/a/a/d;)V

    return-object v0
.end method

.method public final synthetic gW(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/b;
    .locals 1

    .prologue
    .line 12743
    invoke-direct {p0, p1}, Lcom/google/api/a/a/d;->hD(Ljava/lang/String;)Lcom/google/api/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic gX(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/b;
    .locals 1

    .prologue
    .line 12743
    invoke-direct {p0, p1}, Lcom/google/api/a/a/d;->hE(Ljava/lang/String;)Lcom/google/api/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic gY(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/b;
    .locals 1

    .prologue
    .line 12743
    invoke-virtual {p0, p1}, Lcom/google/api/a/a/d;->hF(Ljava/lang/String;)Lcom/google/api/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic gZ(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/a/b;
    .locals 1

    .prologue
    .line 12743
    invoke-direct {p0, p1}, Lcom/google/api/a/a/d;->hD(Ljava/lang/String;)Lcom/google/api/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final hF(Ljava/lang/String;)Lcom/google/api/a/a/d;
    .locals 1

    .prologue
    .line 12801
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/a/a/b;->hb(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/d;

    return-object v0
.end method

.method public final synthetic ha(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/a/b;
    .locals 1

    .prologue
    .line 12743
    invoke-direct {p0, p1}, Lcom/google/api/a/a/d;->hE(Ljava/lang/String;)Lcom/google/api/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hb(Ljava/lang/String;)Lcom/google/api/client/googleapis/a/a/b;
    .locals 1

    .prologue
    .line 12743
    invoke-virtual {p0, p1}, Lcom/google/api/a/a/d;->hF(Ljava/lang/String;)Lcom/google/api/a/a/d;

    move-result-object v0

    return-object v0
.end method
