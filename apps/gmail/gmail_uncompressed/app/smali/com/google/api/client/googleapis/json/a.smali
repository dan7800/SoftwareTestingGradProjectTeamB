.class public Lcom/google/api/client/googleapis/json/a;
.super Lcom/google/api/client/json/b;
.source "SourceFile"


# instance fields
.field private code:I
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private errors:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/googleapis/json/b;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/google/api/client/googleapis/json/b;

    invoke-static {v0}, Lcom/google/api/client/util/m;->i(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    .line 63
    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/json/a;
    .locals 1

    .prologue
    .line 259
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/json/a;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic WS()Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/json/a;

    return-object v0
.end method

.method public final synthetic WT()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/json/a;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/json/a;

    return-object v0
.end method

.method public final synthetic h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/json/a;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/json/a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/json/a;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/json/a;

    move-result-object v0

    return-object v0
.end method
