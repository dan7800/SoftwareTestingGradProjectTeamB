.class public final Lcom/google/api/a/a/a/c;
.super Lcom/google/api/client/json/b;
.source "SourceFile"


# instance fields
.field private fixOptions:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/a/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private fixabilitySummaryState:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/google/api/a/a/a/d;

    invoke-static {v0}, Lcom/google/api/client/util/m;->i(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    .line 123
    return-void
.end method

.method private v(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/c;
    .locals 1

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/c;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic WS()Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/c;

    return-object v0
.end method

.method public final synthetic WT()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/c;

    return-object v0
.end method

.method public final YE()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/a/a/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/api/a/a/a/c;->fixOptions:Ljava/util/List;

    return-object v0
.end method

.method public final YF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/api/a/a/a/c;->fixabilitySummaryState:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/c;

    return-object v0
.end method

.method public final synthetic h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/a/c;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/a/c;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/c;

    move-result-object v0

    return-object v0
.end method
