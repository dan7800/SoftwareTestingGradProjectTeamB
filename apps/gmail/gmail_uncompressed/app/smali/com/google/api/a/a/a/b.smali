.class public final Lcom/google/api/a/a/a/b;
.super Lcom/google/api/client/json/b;
.source "SourceFile"


# instance fields
.field private fileIds:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private recipientEmailAddresses:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private role:Ljava/lang/String;
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

.method private u(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/b;
    .locals 1

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/b;

    return-object v0
.end method


# virtual methods
.method public final V(Ljava/util/List;)Lcom/google/api/a/a/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/a/a/a/b;"
        }
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/api/a/a/a/b;->fileIds:Ljava/util/List;

    .line 73
    return-object p0
.end method

.method public final W(Ljava/util/List;)Lcom/google/api/a/a/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/a/a/a/b;"
        }
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/api/a/a/a/b;->recipientEmailAddresses:Ljava/util/List;

    .line 107
    return-object p0
.end method

.method public final bridge synthetic WS()Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/b;

    return-object v0
.end method

.method public final synthetic WT()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/b;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/b;

    return-object v0
.end method

.method public final synthetic h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/a/b;->u(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final hI(Ljava/lang/String;)Lcom/google/api/a/a/a/b;
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/api/a/a/a/b;->role:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public final synthetic i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/a/b;->u(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/b;

    move-result-object v0

    return-object v0
.end method
