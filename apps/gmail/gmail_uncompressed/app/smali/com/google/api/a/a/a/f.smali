.class public final Lcom/google/api/a/a/a/f;
.super Lcom/google/api/client/json/b;
.source "SourceFile"


# instance fields
.field private domainDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private domainName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    return-void
.end method

.method private y(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/f;
    .locals 1

    .prologue
    .line 430
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/f;

    return-object v0
.end method


# virtual methods
.method public final Dv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/api/a/a/a/f;->domainDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic WS()Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/f;

    return-object v0
.end method

.method public final synthetic WT()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/f;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/f;

    return-object v0
.end method

.method public final synthetic h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/a/f;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/a/f;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/f;

    move-result-object v0

    return-object v0
.end method
