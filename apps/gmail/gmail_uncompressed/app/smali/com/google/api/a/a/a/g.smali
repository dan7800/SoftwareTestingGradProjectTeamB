.class public final Lcom/google/api/a/a/a/g;
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

.field private fixOptionType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
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

.method private z(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/g;
    .locals 1

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/g;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic WS()Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/g;

    return-object v0
.end method

.method public final synthetic WT()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/g;

    return-object v0
.end method

.method public final X(Ljava/util/List;)Lcom/google/api/a/a/a/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/a/a/a/g;"
        }
    .end annotation

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/api/a/a/a/g;->fileIds:Ljava/util/List;

    .line 84
    return-object p0
.end method

.method public final Y(Ljava/util/List;)Lcom/google/api/a/a/a/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/a/a/a/g;"
        }
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/api/a/a/a/g;->recipientEmailAddresses:Ljava/util/List;

    .line 137
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/g;

    return-object v0
.end method

.method public final synthetic h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/a/g;->z(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/g;

    move-result-object v0

    return-object v0
.end method

.method public final hJ(Ljava/lang/String;)Lcom/google/api/a/a/a/g;
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/api/a/a/a/g;->fixOptionType:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public final hK(Ljava/lang/String;)Lcom/google/api/a/a/a/g;
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/api/a/a/a/g;->role:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public final synthetic i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/a/g;->z(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/g;

    move-result-object v0

    return-object v0
.end method
