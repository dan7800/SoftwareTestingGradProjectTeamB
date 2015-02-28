.class public Lcom/google/api/client/googleapis/json/b;
.super Lcom/google/api/client/json/b;
.source "SourceFile"


# instance fields
.field private domain:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private locationType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private reason:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    return-void
.end method

.method private j(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/json/b;
    .locals 1

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/json/b;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic WS()Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/json/b;

    return-object v0
.end method

.method public final synthetic WT()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/json/b;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/json/b;

    return-object v0
.end method

.method public final synthetic h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/json/b;->j(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/json/b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/json/b;->j(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/json/b;

    move-result-object v0

    return-object v0
.end method
