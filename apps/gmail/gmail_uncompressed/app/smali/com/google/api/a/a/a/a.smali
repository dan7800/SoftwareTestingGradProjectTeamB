.class public final Lcom/google/api/a/a/a/a;
.super Lcom/google/api/client/json/b;
.source "SourceFile"


# instance fields
.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private messageId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private partId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    return-void
.end method

.method private t(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/a;
    .locals 1

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/a;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic WS()Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/a;

    return-object v0
.end method

.method public final synthetic WT()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/a;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/a;

    return-object v0
.end method

.method public final synthetic h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/a/a;->t(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final hG(Ljava/lang/String;)Lcom/google/api/a/a/a/a;
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/api/a/a/a/a;->messageId:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public final hH(Ljava/lang/String;)Lcom/google/api/a/a/a/a;
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/api/a/a/a/a;->partId:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public final synthetic i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/a/a;->t(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/a;

    move-result-object v0

    return-object v0
.end method
